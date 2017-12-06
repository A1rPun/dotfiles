#!/usr/bin/env bash
echoo() {
  local fmt="$1"; shift
  printf "$fmt\n" "$@"
}

linkFile() {
  ln -sri "$1" ~/"$2"
}

echoo "This script will make symlinks from the current git directory to root"
# bashrc
echoo "Link .bashrc"
linkFile "./bash/.bashrc"
# inputrc
echoo "Link .inputrc"
linkFile "./bash/.inputrc"
# Xbindkeys
echoo "Link .xbindkeysrc"
linkFile "./bash/.xbindkeysrc"
# bspwm
echoo "Link bspwm"
mkdir -p ~/.config/bspwm
chmod u+x "./config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwmrc" ".config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwm_rules" ".config/bspwm/bspwm_rules"
# sxhkd
echoo "Link sxhkd"
mkdir -p ~/.config/sxhkd
linkFile "./config/sxhkd/sxhkdrc" ".config/sxhkd/sxhkdrc"
# Dunst
echoo "Link Dunst"
mkdir -p ~/.config/dunst
linkFile "./config/dunst/dunstrc" ".config/dunst/dunstrc"
# Rofi
echoo "Link Rofi"
mkdir -p ~/.config/rofi
linkFile "./config/rofi/config" ".config/rofi/config"

echoo "Done installing dotfiles"
