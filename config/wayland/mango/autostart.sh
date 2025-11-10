#!/bin/bash
set +e

# obs
#dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots >/dev/null 2>&1

# wallpaper
swaybg -i ~/Media/wallpaper.jpg >/dev/null 2>&1 &

# top bar
waybar >/dev/null 2>&1 &

# xwayland dpi scale
echo "Xft.dpi: 140" | xrdb -merge #dpi缩放
# xrdb merge ~/.Xresources >/dev/null 2>&1

# ime input
fcitx5 --replace -d >/dev/null 2>&1 &

# keep clipboard content
# wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &
exec wl-paste -t text --watch clipman store

# clipboard content manager
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &

# Permission authentication
#/usr/lib/xfce-polkit/xfce-polkit >/dev/null 2>&1 &

mako >/dev/null 2>&1 &
