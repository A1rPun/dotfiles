#!/bin/bash
set +e

# wallpaper
swaybg -i ~/Media/wallpaper.jpg >/dev/null 2>&1 &

# top bar
waybar >/dev/null 2>&1 &

# keep clipboard content
# wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &
exec wl-paste -t text --watch clipman store >/dev/null 2>&1 &

# clipboard content manager
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &

# Notification demon
mako >/dev/null 2>&1 &

# Always start terminal
alacritty >/dev/null 2>&1 &
