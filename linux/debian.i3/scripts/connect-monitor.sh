#!/bin/bash

if xrandr | grep -q "^DP-1 connected"; then
  /home/axbg/.screenlayout/monitor-c1.sh
  sleep 1 
  feh --bg-scale /home/axbg/Documents/wp.jpg
elif xrandr | grep -q "^DP-2 connected"; then
  /home/axbg/.screenlayout/monitor-c2.sh
  sleep 1
  feh --bg-scale /home/axbg/Documents/wp.jpg
else
  echo "Neither DP-1 nor DP-2 is connected."
fi

