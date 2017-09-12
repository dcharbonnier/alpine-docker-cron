#!/bin/sh

case ${1} in
  shell)
    /bin/sh
    ;;
  cron)
    crond -s /opt/cron/periodic \
      -c /opt/cron/crontabs \
      -t /opt/cron/cronstamps \
      -L /dev/stdout \
      -f &
    wait
    ;;
esac