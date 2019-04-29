#!/usr/bin/env bash
. "install_base.sh"

# bash_aliases
echoo "Link .bash_aliases"
linkFile "./bash/.bash_aliases"
# bashrc
echoo "Link .bashrc"
linkFile "./bash/.bashrc"
# inputrc
echoo "Link .inputrc"
linkFile "./bash/.inputrc"
# vimrc
echoo "Link .vimrc"
linkFile "./bash/.vimrc"
# alias_arch
echoo "Link .alias_arch"
linkFile "./bash/.alias_arch"
