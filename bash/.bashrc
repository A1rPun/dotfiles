# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Alias
## For pipes |
RAINBOW="toilet -f term --gay"
## pen this file
alias nb="nano ~/.bashrc"
## General
alias ..="cd .."
alias cd..="cd .."
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias last="history 10"
alias rimraf="rm -rf"
# Queries
alias qp="ps faux | grep"
## Arch
alias s="sudo"
alias pls='sudo $(fc -ln -1)'
alias ya="yay -S"
alias yas="yay -Ss"
alias yar="yay -R"
alias archupdate="yay -Syy"
alias archupgrade="yay -Su"
alias yorphanlist="yay -Qdt | awk '{print \$1}' | xargs yay -Qi | awk -F ':' '/Name/{printf \$2} /Installed Size/{print \$2;}'"
alias yorphanclean="xargs -ra <(yay -Qdt | awk '{print \$1}') yay -Rcs"
alias updategrub="grub-mkconfig -o /boot/grub/grub.cfg"
## Termux
alias ins="apt-get install"
## Apps
### Asciinema
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"
### Git
alias gs="git status"
alias gc="git commit -m"
alias gg="git pull"
alias df="git diff"
alias gp="git push"
alias go="git checkout"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias yolo="git add ."
### GitDaily
alias gd="gitdaily --all"
alias gdc="gd --compact"
### Htop
alias ht="htop --sort-key=PERCENT_MEM"
### Mpv
alias shf="mpv -vo null --shuffle --loop-playlist --msg-level=ao=fatal"
### Speedometer
alias wt="speedometer -l -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"

# Functions
## Extract archive
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract > '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
## Scan network. Usage > "ipscan 192.168.1"
ipscan(){
  nmap -sn --system-dns "$1.*"
}
# Colorful manpages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
# Copyright (c) 2017 - Paradoxis
GORDON_INSULTS=~/projects/git/_other/Gordon/insults
gordon() {
    if [[ $? != 0 && -d $GORDON_INSULTS ]]; then
        insult=$(ls $GORDON_INSULTS | shuf -n 1)
        mpv --really-quiet $GORDON_INSULTS/$insult &
        disown
    fi
}
PROMPT_COMMAND=gordon

# Terminal styles
## Colors
DARKGREEN="\[\e[38;5;28m\]"
GREEN="\[\e[38;5;41m\]"
RED="\[\e[38;5;196m\]"
LIGHTGREEN="\[\e[38;5;10m\]"
NORMAL="\[\e[0m\]"
## Themes
ARROWS="$GREEN> $DARKGREEN\w $GREEN<\n$GREEN> $NORMAL"
GARTER="\[\e[0;44;30m\] \u \[\e[0;104;34m\]▶\[\e[0;104;30m\] \H \[\e[0;46;94m\]▶\[\e[0;46;30m\] \w \[\e[0;106;36m\]▶\[\e[0;106;30m\] \# \[\e[0;49;96m\]▶\n\[\e[0;44;30m\] $ \[\e[0;49;34m\]▶\[\e[0;49;96m\]"
HAXXOR="$RED┌─[$DARKGREEN\u$RED]─[$GREEN\H$RED]─[$LIGHTGREEN\w$RED]\n$RED└─\$$LIGHTGREEN"
SIMPLE="$LIGHTGREEN> $NORMAL"
## Export prompt screens
export PS1="$ARROWS"
export PS2="$SIMPLE"
export PS3="$SIMPLE"
export PS4="$SIMPLE"

# Other options
export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=1000
shopt -s histappend
shopt -s checkwinsize
