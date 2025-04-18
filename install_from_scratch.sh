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

echoo "Done installing dotfiles"
