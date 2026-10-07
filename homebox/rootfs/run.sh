#!/bin/sh
# Translate the app options into the environment variables Homebox reads.
set -eu

OPTIONS=/data/options.json

opt() {
    jq -r --arg k "$1" '.[$k] | select(. != null)' "${OPTIONS}"
}

# Homebox refuses to start without a pepper for hashing API keys. It is made once
# and kept beside the database, since changing it invalidates every issued key.
PEPPER=/data/api_key_pepper
if [ ! -s "${PEPPER}" ]; then
    (umask 077; head -c 48 /dev/urandom | base64 | tr -d '\n' > "${PEPPER}")
fi
HBOX_AUTH_API_KEY_PEPPER="$(cat "${PEPPER}")"
export HBOX_AUTH_API_KEY_PEPPER

export HBOX_LOG_LEVEL="$(opt log_level)"
export HBOX_OPTIONS_ALLOW_REGISTRATION="$(opt allow_registration)"
export HBOX_WEB_MAX_FILE_UPLOAD="$(opt max_upload_size)"
export HBOX_OPTIONS_TRUST_PROXY="$(opt trust_proxy)"
# Updates arrive through the app store, so skip the upstream release check.
export HBOX_OPTIONS_CHECK_GITHUB_RELEASE="false"

smtp_host="$(opt smtp_host)"
if [ -n "${smtp_host}" ]; then
    export HBOX_MAILER_HOST="${smtp_host}"
    export HBOX_MAILER_PORT="$(opt smtp_port)"
    export HBOX_MAILER_FROM="$(opt smtp_from)"
    export HBOX_MAILER_USERNAME="$(opt smtp_user)"
    export HBOX_MAILER_PASSWORD="$(opt smtp_password)"
fi

cd /app
exec /app/api /data/config.yml
