#!/bin/sh

sflock -c "fsck"
i=30
while [ $i != 0 ]
do
    pgrep sflock > /dev/null || exit 1
    sleep 60
    i=$i-1
done
systemctl suspend
