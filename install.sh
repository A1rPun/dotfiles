#!/usr/bin/env bash
echoo() {
  local fmt="$1"; shift
  printf "$fmt\n" "$@"
}

echoo "This script will setup your linux distro :)"
ln -sf /bash/.bashrc ~/
ln -sf /bash/.inputrc ~/
echoo "Done installing dotfiles"
