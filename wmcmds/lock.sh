#!/bin/sh

slock
i=30
while [ $i != 0 ]
do
    pgrep slock > /dev/null || exit 1
    sleep 60
    i=$i-1
done
systemctl suspend
