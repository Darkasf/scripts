#!/bin/bash

i3lockr --blur 25
for (( i = 0; i < 30; i++ ))
do
    pgrep i3lock > /dev/null || exit
    sleep 60
done
systemctl suspend
