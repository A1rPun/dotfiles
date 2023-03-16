# Used on MacOs

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Alias
if [ -f "$HOME/.bash_aliases" ]; then
  . "$HOME/.bash_aliases"
fi
if [ -f "$HOME/.bash_functions" ]; then
  . "$HOME/.bash_functions"
fi
if [ -f "$HOME/.custom" ]; then
  . "$HOME/.custom"
fi

## Themes
SIMPLE="> "
MACA1R="\033[38;5;10m┌─» \w \033[38;5;12m\$(find_git_branch) \n\033[38;5;10m└─»\033[0m "
## Export prompt screens
export PS1=$MACA1R
export SUDO_PS1=$MACA1R
export PS2=$SIMPLE
export PS3=$SIMPLE
export PS4=$SIMPLE
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export GREP_COLOR="49;32"
# Other options
export VISUAL=vim
export EDITOR=$VISUAL
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
export HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize
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

# MacOS specific
export CLICOLOR=1
export BASH_SILENCE_DEPRECATION_WARNING=1
bind -f ~/.inputrc
alias ..="cd .."
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
