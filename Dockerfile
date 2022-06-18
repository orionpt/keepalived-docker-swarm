FROM alpine:3.16.0

ENV KEEPALIVED_VERSION 2.0.20
RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y keepalived=${KEEPALIVED_VERSION} && \
    rm -rf /var/lib/apt/lists/*

COPY keepalived /etc/keepalived/
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
