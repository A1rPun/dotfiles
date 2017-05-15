#!/usr/bin/env bash
fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "This script will setup your linux distro :)"
# TODO
