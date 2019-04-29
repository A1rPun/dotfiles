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

install() {
  echoo "Installing package: $1"
  pacman -S "$1" -y
}
