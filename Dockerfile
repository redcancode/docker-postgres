FROM alpine:3.4

ENV PGDATA /var/lib/postgresql/data
ENV PG_APK_VERSION 9.5.3-r1

COPY docker-entrypoint.sh /

RUN apk --no-cache add su-exec postgresql=${PG_APK_VERSION} \
    && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
