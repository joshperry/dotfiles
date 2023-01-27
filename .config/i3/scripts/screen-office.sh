#!/bin/sh
#xrandr --output eDP-1 --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --mode 2560x1440 --right-of eDP-1 --scale 2x2 --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-3 --off

# BENQ
## USB-C
xrandr --output eDP-1 --off --output DP-1 --mode 3840x2160 --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-3 --off
## USB-C dock
#xrandr --output eDP-1 --off --output DP-1-3 --mode 3840x2160 --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-3 --off
## HDMI
#xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-3 --mode 3840x2160

# Double Philips
#xrandr --output eDP-1 --off --output DP-2-3 --mode 2560x1440 --rotate left --left-of DP-1 --pos 0x0 --output DP-1 --mode 2560x1440 --pos 1440x1120 --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-3 --off
