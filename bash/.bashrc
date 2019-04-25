# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Alias
if [ -f "$HOME/.aliases" ]; then
  . "$HOME/.aliases"
fi
if [ -f "$HOME/.alias_arch" ]; then
  . "$HOME/.alias_arch"
fi
if [ -f "$HOME/.alias_termux" ]; then
  . "$HOME/.alias_termux"
fi
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
alias ll="ls -lF"
alias la="ls -lAF"
alias last="history 10"
alias rimraf="rm -rf"
alias whereami="pwd -P"
alias dua="du -hsc *"
# Queries
alias qp="ps faux | grep"
alias qw="xdotool search . behave %@ focus getwindowname"
alias qt="grep -C 2 -R"
alias qf="find . | grep"
## Languages
alias py="python"
alias pi="ipython"
alias js="node"
alias r="Rscript"
alias ri="R --quiet"
## Apps
### Asciinema
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"
### Git
alias gai="git add -p"
alias gri="git reset -p"
alias gci="git checkout -p"
alias gs="git status"
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias ff="git diff"
alias gg="git pull"
alias gp="git push"
alias gco="git checkout"
alias gor="git remote show origin"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gb="git checkout -b"
alias yolo="git add ."
alias up="git for-each-ref --format='%(refname:short) -> %(upstream:short)' refs/heads"
### GitDaily
alias gd="gitdaily --all"
alias gdc="gd --compact"
### Htop
alias ht="htop --sort-key=PERCENT_MEM"
### Mpv
alias shf="mpv -vo null --shuffle --loop-playlist --msg-level=ao=fatal"
# NPM
alias blackhole="npm install"
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
  local split=(${1//\// })
  local slength=${#split[@]}
  local repo="${split[slength - 1]}"
  local user="${split[slength - 2]}"
  git clone "https://github.com/$user/$repo"
  cd "$repo"
}
# Print all colors
colors() {
  (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
}
# View markdown in terminal
md() {
  fileName=${1:-"README.md"}
  mdp "$fileName"
}
# count files & folders
count() {
  local count=`ls | wc -l`
  local countd=`ls -l | grep ^d -c`
  local countf=`ls -l | grep ^- -c`
  echo -e "Total:\t$count\nDir:\t$countd\nFile:\t$countf"
}

# Set up git variables for PS1
find_git_branch() {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch="[$branch]"
  else
    git_branch=""
  fi
}
find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty="*"
  else
    git_dirty=""
  fi
}
find_git_upstream_count() {
  local count=$(git rev-list @{u}... --count 2> /dev/null)
  if [[ $count != 0 && "$count" != "" ]]; then
    git_up_count=">$count"
  else
    git_up_count=""
  fi
}
PROMPT_COMMAND="find_git_branch; find_git_dirty; find_git_upstream_count; $PROMPT_COMMAND"

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
R41NB0W="$RED┌─[$ORANGE\h$YELLOW][$GREEN\u$CYAN][$BLUE\w$MAGENTA]\$git_branch\$git_up_count\$git_dirty\n$RED└»$NORMAL "
## Export prompt screens
export PS1="$R41NB0W"
export SUDO_PS1="$R41NB0W"
export PS2="$SIMPLE"
export PS3="$SIMPLE"
export PS4="$SIMPLE"

# Other options
export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=1000
shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
