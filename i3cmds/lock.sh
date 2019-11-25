#!/bin/sh

sflock -c "epsteindidntkillhimself"
i=30
while [ $i > 0 ]
do
    pgrep sflock > /dev/null || break
    sleep 60
done
systemctl suspend
