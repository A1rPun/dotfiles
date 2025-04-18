#!/usr/bin/env bash
. "install_base.sh"

# bash_aliases
echoo "Link .bash_aliases"
linkFile "./bash/.bash_aliases"
# bash_functions
echoo "Link .bash_functions"
linkFile "./bash/.bash_functions"
# bashrc
echoo "Link .bashrc"
linkFile "./bash/.bashrc"
# bash_profile
echoo "Link .bash_profile"
linkFile "./bash/.bash_profile"
# inputrc
echoo "Link .inputrc"
linkFile "./bash/.inputrc"
# vimrc
echoo "Link .vimrc"
linkFile "./bash/.vimrc"
