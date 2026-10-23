#!/usr/bin/env bash
. "install_base.sh"

# motd
echoo "Link motd"
linkFile "./termux/motd" "../usr/etc/"
# termux properties
echoo "Link properties"
linkFile "./termux/termux.properties" ".termux/"
# termux colors
echoo "Link colors"
linkFile "./termux/termux.colors" ".termux/"
# termux alias
echoo "Link termux alias"
linkFile "./bash/.alias_termux"
# setup bin
echoo "Create $HOME/bin dir"
mkdir $HOME/bin
