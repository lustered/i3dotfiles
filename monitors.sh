#!/usr/bin/sh
xrandr --output DP-4 --mode 3440x1440 --primary --rate 143.92
xrandr --output DP-0 --mode 2560x1440 --right-of DP-4 --rotate left --rate 144.00
xset r rate 240 80
