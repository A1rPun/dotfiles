#!/usr/bin/env bash
echoo() {
  local fmt="$1"; shift
  printf "$fmt\n" "$@"
}

linkFile() {
  ln -sri "$1" ~/"$2"
}

makeExecutable() {
  chmod u+x "$1"
}

makeDirIfNotExists() {
  mkdir -p "$1"
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
makeDirIfNotExists ~/.config/bspwm
makeExecutable "./config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwmrc" ".config/bspwm/bspwmrc"
linkFile "./config/bspwm/bspwm_rules" ".config/bspwm/bspwm_rules"
# sxhkd
echoo "Link sxhkd"
makeDirIfNotExists ~/.config/sxhkd
linkFile "./config/sxhkd/sxhkdrc" ".config/sxhkd/sxhkdrc"
# Dunst
echoo "Link Dunst"
makeDirIfNotExists ~/.config/dunst
linkFile "./config/dunst/dunstrc" ".config/dunst/dunstrc"
# Rofi
echoo "Link Rofi"
makeDirIfNotExists ~/.config/rofi
linkFile "./config/rofi/config" ".config/rofi/config"
# Polybar
echoo "Link Polybar"
makeDirIfNotExists ~/.config/polybar
linkFile "./config/polybar/config" ".config/polybar/config"
makeExecutable "./config/polybar/pkg.sh"
linkFile "./config/polybar/pkg.sh" ".config/polybar/pkg.sh"
# cava
echoo "Link cava"
makeDirIfNotExists ~/.config/cava
linkFile "./config/cava/config" ".config/cava/config"

echoo "Done installing dotfiles"
