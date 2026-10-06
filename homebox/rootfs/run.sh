#!/bin/sh
# Translate the app options into the environment variables Homebox reads.
set -eu

OPTIONS=/data/options.json

opt() {
    jq -r --arg k "$1" '.[$k] // empty' "${OPTIONS}"
}

export HBOX_LOG_LEVEL="$(opt log_level)"
export HBOX_OPTIONS_ALLOW_REGISTRATION="$(opt allow_registration)"
export HBOX_WEB_MAX_FILE_UPLOAD="$(opt max_upload_size)"
export HBOX_OPTIONS_TRUST_PROXY="$(opt trust_proxy)"

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
