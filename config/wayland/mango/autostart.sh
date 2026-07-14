#!/bin/bash
set +e

# Screen sharing
systemctl --user unmask xdg-desktop-portal-wlr >/dev/null 2>&1 &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
/usr/lib/xdg-desktop-portal-wlr  >/dev/null 2>&1 &

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
