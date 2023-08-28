ARG BUILD_FROM=debian:12.1-slim
ARG BUILD_ARCH=amd64

FROM ${BUILD_FROM}

ARG BUILD_ARCH=amd64

COPY --from=grafana/promtail:latest /usr/bin/promtail /usr/bin/promtail
RUN promtail --version

COPY rootfs /
WORKDIR /data/promtail
