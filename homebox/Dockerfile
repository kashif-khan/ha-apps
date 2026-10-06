# https://developers.home-assistant.io/docs/apps/configuration#app-dockerfile
# The fork image is built from the kashif-khan/homebox custom branch by its
# fork-release workflow whenever a v*-kk.* tag is pushed.
ARG BUILD_FROM=ghcr.io/kashif-khan/homebox:v0.27.0-rc.1-kk.1
FROM ${BUILD_FROM}

RUN apk add --no-cache jq

# Copy root filesystem
COPY rootfs /
RUN chmod a+x /run.sh

ENTRYPOINT ["/run.sh"]

LABEL \
    org.opencontainers.image.title="Home Assistant App: Homebox" \
    org.opencontainers.image.description="Home inventory with scheduled, versioned and remote backups." \
    org.opencontainers.image.source="https://github.com/kashif-khan/ha-apps" \
    org.opencontainers.image.licenses="AGPL-3.0"
