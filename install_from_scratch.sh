#!/usr/bin/env bash
. "install_base.sh"

echoo "Installing A1rPun dotfiles"
echoo "Downloading and installing needed packages"

install "bspwm"
install "lxdm"
install "dunst"
install "rofi"
install "polybar"
install "cava"

echoo "Symlink configuration files for packages"
# gtkrc
echoo "Link .gtkrc-2.0"
linkFile "./bash/.gtkrc-2.0"
# Xbindkeys
echoo "Link .xbindkeysrc"
linkFile "./bash/.xbindkeysrc"
# bspwm
echoo "Link bspwm"
makeDirIfNotExists ~/.config/bspwm
makeExecutable "./config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwmrc" ".config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwm_rules" ".config/bspwm/bspwm_rules"
# cava
echoo "Link cava"
makeDirIfNotExists ~/.config/cava
linkFile "./config/cava/config" ".config/cava/config"
# dunst
echoo "Link Dunst"
makeDirIfNotExists ~/.config/dunst
linkFile "./config/dunst/dunstrc" ".config/dunst/dunstrc"
# emacs
echoo "Link emacs config"
makeDirIfNotExists ~/.emacs.d/
linkFile "./emacs/init.el" ".emacs.d/init.el"
# TODO: g810-led
# TODO: gtk-3.0
# lxdm
#echoo "Link lxdm"
#makeDirIfNotExists /etc/lxdm
#ln -si ./config/lxdm/Simple /usr/share/lxdm/themes/Simple # find another way
#ln -si ./config/lxdm/lxdm.conf /etc/lxdm/lxdm.conf # find another way
# polybar
echoo "Link Polybar"
makeDirIfNotExists ~/.config/polybar
linkFile "./config/polybar/config" ".config/polybar/config"
makeExecutable "./config/polybar/pkg.sh"
linkFile "./config/polybar/pkg.sh" ".config/polybar/pkg.sh"
# rofi
echoo "Link Rofi"
makeDirIfNotExists ~/.config/rofi
linkFile "./config/rofi/config" ".config/rofi/config"
# sxhkd
echoo "Link sxhkd"
makeDirIfNotExists ~/.config/sxhkd
linkFile "./config/sxhkd/sxhkdrc" ".config/sxhkd/sxhkdrc"

echoo "Done installing dotfiles"
