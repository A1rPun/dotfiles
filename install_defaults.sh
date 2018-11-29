#!/usr/bin/env bash
echoo() {
  local fmt="$1"; shift
  printf "$fmt\n" "$@"
}

linkFile() {
  ln -sri "$1" ~/"$2"
}

# bashrc
echoo "Link .bashrc"
linkFile "./bash/.bashrc"
# inputrc
echoo "Link .inputrc"
linkFile "./bash/.inputrc"
