#!/bin/bash

i3lockr --blur 25
for (( i = 0; i < 30; i++ ))
do
    sleep 60
    pgrep i3lock > /dev/null || exit
done
systemctl suspend
