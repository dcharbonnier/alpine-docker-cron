# alpine-docker-cron

A simple and light container to execute cron in a docker environment

- stop on SIGINT
- log everything to stdout/stderr using the `/usr/bin/execute` script

Example `* * * * *   /usr/bin/execute /sample.sh`

See the sample directory