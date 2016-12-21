FROM alpine:3.4

RUN apk add --no-cache dcron

COPY cron /opt/cron/

COPY crontab /etc/crontabs/root
COPY entrypoint.sh /
COPY backup.sh /
COPY restore.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron"]
