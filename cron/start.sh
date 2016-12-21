#!/bin/sh

ln -s /opt/cron/execute.sh /execute
mv /etc/crontabs/root /etc/crontabs/root.original
cat /etc/crontabs/root.original >> /etc/crontabs/root
crontab /etc/crontabs/root
mknod /log p
tail -F /log &
crond -f &
wait

