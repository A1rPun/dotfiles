# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Alias
## For pipes |
RAINBOW="toilet -f term --gay"
## Open this file
alias nb="nano ~/.bashrc"
## Application Colors!
alias ls="ls --color=auto"
alias diff="diff --color=auto"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
export GREP_COLOR="49;32"
## General
alias ..="cd .."
alias cd..="cd .."
alias ll="ls -lF"
alias la="ls -lAF"
alias last="history 10"
alias rimraf="rm -rf"
# Queries
alias qp="ps faux | grep"
alias qw="xprop |awk '/WM_CLASS/{print $4}'"
## Arch
alias s="sudo"
alias pls='sudo $(fc -ln -1)'
alias yy="yay"
alias ya="yay -S"
alias yi="yay -Qte"
alias yu="yay -Qu"
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
alias nt="speedometer -l -r enp2s0 -t enp2s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"

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
  local ipaddress=""
  if [ -e $1 ] ; then
    ipaddress=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`
    echo "Current IP = $ipaddress"
    ipaddress="${ipaddress%.*}.*"
  else
    ipaddress="$1.*"
  fi
  echo "IP range = $ipaddress"
  if hash sudo 2>/dev/null; then
    sudo nmap -sn --system-dns $ipaddress
  else
    nmap -sn --system-dns $ipaddress
  fi
}
github() {
  git clone "https://github.com/$1"
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
# Print all colors
colors() {
  (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
}

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
R41NB0W="\[\e[38;5;9m\][\[\e[38;5;214m\]\h\[\e[38;5;11m\]][\[\e[38;5;10m\]\u\[\e[38;5;14m\]][\[\e[38;5;12m\]\w\[\e[38;5;5m\]]\n$LIGHTGREEN> $NORMAL"
## Export prompt screens
export PS1="$R41NB0W"
export PS2="$SIMPLE"
export PS3="$SIMPLE"
export PS4="$SIMPLE"

# Other options
export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=1000
shopt -s histappend
shopt -s checkwinsize
