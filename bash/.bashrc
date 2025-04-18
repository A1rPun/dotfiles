# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Alias
if [ -f "$HOME/.bash_aliases" ]; then
  . "$HOME/.bash_aliases"
fi
if [ -f "$HOME/.bash_functions" ]; then
  . "$HOME/.bash_functions"
fi
if [ -f "$HOME/.alias_arch" ]; then
  . "$HOME/.alias_arch"
fi
if [ -f "$HOME/.alias_termux" ]; then
  . "$HOME/.alias_termux"
fi

# Terminal styles
## Colors
DARKGREEN="\[\e[38;5;28m\]"
RED="\[\e[38;5;9m\]"
ORANGE="\[\e[38;5;214m\]"
YELLOW="\[\e[38;5;11m\]"
GREEN="\[\e[38;5;10m\]"
CYAN="\[\e[38;5;14m\]"
BLUE="\[\e[38;5;12m\]"
MAGENTA="\[\e[38;5;5m\]"
NORMAL="\[\e[0m\]"
## Themes
HAXXOR="$RED┌─[$DARKGREEN\u$RED]─[$GREEN\H$RED]─[$DARKGREEN\w$RED]\n$RED└─\$$GREEN"
SIMPLE="$GREEN> $NORMAL"
R41NB0W="$RED┌─[$ORANGE\h$YELLOW][$GREEN\u$CYAN][$BLUE\w$MAGENTA]\$(find_git_branch)\n$RED└»$NORMAL "
A1R2022="$GREEN┌─» \w $MAGENTA\$(find_git_branch) \n$GREEN└─»$NORMAL "
## Export prompt screens
export PS1=$A1R2022
export SUDO_PS1=$A1R2022
export PS2=$SIMPLE
export PS3=$SIMPLE
export PS4=$SIMPLE
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export GREP_COLORS='mt=49;32'
# Other options
export VISUAL=emacs
export EDITOR=$VISUAL
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
export HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
# man colorize
man() {
  LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[38;5;5m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[38;5;10m' \
    command man "$@"
}
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''
