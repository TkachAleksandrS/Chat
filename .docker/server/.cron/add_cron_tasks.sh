#!/usr/bin/env bash

## Add task for renew certificates
command="/usr/bin/certbot renew --quiet"
job="15 3 * * * $command"
EDITOR=nano cat <(fgrep -i -v "$command" <(crontab -l)) <(echo "$job") | crontab -