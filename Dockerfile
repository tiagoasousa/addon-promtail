ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base/amd64:7.1.0
ARG BUILD_ARCH=amd64

FROM ${BUILD_FROM}

ARG BUILD_ARCH=amd64

COPY --from=grafana/promtail:latest /usr/bin/promtail /usr/bin/promtail
RUN promtail --version

COPY rootfs /
WORKDIR /data/promtail
