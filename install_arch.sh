#!/usr/bin/env bash
. "install_base.sh"

echoo "Installing A1rPun dotfiles"
echoo "Downloading and installing needed packages"

install "networkmanager"
install "firefox"
install "vim"
install "vscode"
install "thunar"
install "git"

install "mangowm"
install "waybar"
install "swaybg"
install "mako"
install "clipman"
install "swaylock"
install "grim"
install "slurp"
install "wlr-randr"

install "htop"
install "pavucontrol"
install "gucharmap"
install "alacritty"
install "openssh"
install "neofetch"

install "ttf-fira-code"
install "ttf-roboto-mono"
install "ttf-font-awesome"

echoo "Symlink configuration files"

# alias_arch
echoo "Link .alias_arch"
linkFile "./bash/.alias_arch"

# gtkrc
echoo "Link .gtkrc-2.0"
linkFile "./bash/.gtkrc-2.0"
echoo "Link gtk-3.0 settings"
makeDirIfNotExists ~/.config/gtk-3.0
linkFile "./config/gtk-3.0/settings.ini" ".config/gtk-3.0/"

# wayland
echoo "Link mango config"
makeDirIfNotExists ~/.config/mango
linkAllFile "./config/wayland/mango/" ".config/mango/"
echoo "Link waybar config"
makeDirIfNotExists ~/.config/waybar
linkAllFile "./config/wayland/waybar/" ".config/waybar/"
echoo "Link wofi config"
makeDirIfNotExists ~/.config/wofi
linkAllFile "./config/wayland/wofi/" ".config/wofi/"
echoo "Link mako config"
makeDirIfNotExists ~/.config/mako
linkAllFile "./config/wayland/mako/" ".config/mako/"
echoo "Link swaylock config"
makeDirIfNotExists ~/.config/swaylock
linkAllFile "./config/wayland/swaylock/" ".config/swaylock/"

echoo "Done installing dotfiles"
