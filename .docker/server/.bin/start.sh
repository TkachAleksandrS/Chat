#!/usr/bin/env bash

# CRON
service cron start
## Install Cron tasks
/bin/bash .cron/add_cron_tasks.sh

# Run Nginx
nginx -g 'daemon off;'