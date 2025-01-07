#!/bin/bash

if xrandr | grep -q "^DP-1 connected"; then
    /home/axbg/.screenlayout/monitor-c1.sh
elif xrandr | grep -q "^DP-2 connected"; then
    /home/axbg/.screenlayout/monitor-c2.sh
else
    echo "Neither DP-1 nor DP-2 is connected."
fi
