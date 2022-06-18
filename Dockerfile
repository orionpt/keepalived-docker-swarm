FROM alpine:3.16.0

ENV KEEPALIVED_VERSION 2.0.20
RUN apk update && \
    apk add keepalived=${KEEPALIVED_VERSION} && \
    rm -rf /var/lib/apt/lists/*

COPY keepalived /etc/keepalived/
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
