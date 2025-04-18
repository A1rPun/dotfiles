#!/usr/bin/env bash
. "install_base.sh"

echoo "Installing A1rPun dotfiles"
echoo "Downloading and installing needed packages"

install "networkmanager"
install "firefox"
install "vim"
install "vscode"
install "thunar"

install "hyprland"
install "waybar"
install "swaybg"
install "mako"
install "clipman"
install "swaylock"
install "grim"
install "slurp"

install "htop"
install "pavucontrol"
install "gucharmap"
install "xfce4-terminal"
install "openssh"
install "neofetch"
install "cava"

install "ttf-fira-code"
install "ttf-roboto-mono"
install "ttf-font-awesome"

# alias_arch
echoo "Link .alias_arch"
linkFile "./bash/.alias_arch"

# motd
echoo "Link motd"
linkFile "./termux/motd" "../usr/etc/motd"

echoo "Symlink configuration files for packages"
# gtkrc
echoo "Link .gtkrc-2.0"
linkFile "./bash/.gtkrc-2.0"

# cava
echoo "Link cava"
makeDirIfNotExists ~/.config/cava
linkFile "./config/cava/config" ".config/cava/config"

# emacs
echoo "Link emacs config"
makeDirIfNotExists ~/.emacs.d/
linkFile "./emacs/init.el" ".emacs.d/init.el"
# TODO: g810-led
# TODO: gtk-3.0

# wayland
echoo "Link hyprland config"
makeDirIfNotExists ~/.config/hypr
linkFile "./config/wayland/hyprland.conf" ".config/hypr/hyprland.conf"
echoo "Link waybar config"
makeDirIfNotExists ~/.config/waybar
linkFile "./config/wayland/waybar/config.jsonc" ".config/waybar/config.jsonc"
linkFile "./config/wayland/waybar/style.css" ".config/waybar/style.css"
echoo "Link wofi config"
makeDirIfNotExists ~/.config/wofi
linkFile "./config/wayland/wofi/config" ".config/wofi/config"
linkFile "./config/wayland/wofi/style.css" ".config/wofi/style.css"
echoo "Link mako config"
makeDirIfNotExists ~/.config/mako
linkFile "./config/wayland/mako/config" ".config/mako/config"

echoo "Done installing dotfiles"
