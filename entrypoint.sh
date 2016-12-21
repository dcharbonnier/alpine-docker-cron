#!/bin/sh

case ${1} in
  shell)
    /bin/sh
    ;;
  backup)
    /backup.sh
    ;;
  restore)
    /restore.sh
    ;;
  cron)
    exec /opt/cron/start.sh
    ;;
esac