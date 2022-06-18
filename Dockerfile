FROM alpine:3.16.0

ENV KEEPALIVED_VERSION 2.2.7
RUN apk --update add keepalived

COPY keepalived /etc/keepalived/
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
