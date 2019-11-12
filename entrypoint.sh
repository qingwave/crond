#!/bin/sh

# CRON_SCHEDULE example: "1 * * * * ls"
if [ ! $CRON_SCHEDULE ]; then
    echo "CRON_SCHEDULE not find"
    exit 1
fi

echo "$CRON_SCHEDULE" | crontab -

exec tini $@