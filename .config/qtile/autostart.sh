#!/bin/sh

# Hotkey daemon
sxhkd &

# Lock screen
xss-lock -- i3lock -c 000000 &

# Compositor
picom -b --experimental-backends

# Authentication agent
/usr/libexec/polkit-gnome-authentication-agent-1 &

# Network Manager Applet
nm-applet &

#When using with external screen
xrandr --output eDP-1-0 --off --output HDMI-0 --primary --mode 2560x1440 --rate 144.00 &
