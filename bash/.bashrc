# Alias
## Open this file
alias nb="nano ~/.bashrc"
## General
alias ..="cd .."
alias cd..="cd .."
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias last="history 10"
## Arch
alias s="sudo"
alias pls='sudo $(fc -ln -1)'
alias ya="yaourt -S"
alias yas="yaourt -Qs"
alias updategrub="grub-mkconfig -o /boot/grub/grub.cfg"
## Termux
alias ins="apt-get install"
## Apps
### Asciinema
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"
### Git
alias gs="git status"
alias gc="git commit -m"
alias gl="git log --pretty=oneline"
alias ggg="git log --pretty=format:\"%h %s\" --graph"
### Htop
alias ht="htop --sort-key=PERCENT_MEM"
### Mpv
alias shf="mpv -vo null --shuffle --msg-level=ao=fatal ~/storage/music"
### Speedometer
alias wt="speedometer -l -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 ))"

# Functions
## Extract archive
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }
## Scan network. Usage > "ipscan 192.168.1"
ipscan(){
#  nmap -sn "$1.1-254/24" | egrep "scan report" | cut -d " " -f 5
  nmap -sn --system-dns "$1.1-254/24"
}

# Terminal styles
## Colors
DARKGREEN="\[\e[38;5;28m\]"
GREEN="\[\e[38;5;41m\]" 
RED="\[\e[38;5;196m\]"
LIGHTGREEN="\[\e[38;5;10m\]"
YELLOW="\[\e[38;5;11m\]"
## Themes
ARROWS="$DARKGREEN>$GREEN>$LIGHTGREEN> "
HAXXOR="$RED┌─[$DARKGREEN\u$GREEN@$LIGHTGREEN\H$RED]─[$GREEN\w$RED]\n$RED└─\$$LIGHTGREEN"
SIMPLE="$LIGHTGREEN> "
## Export prompt screens
export PS1="$HAXXOR"
export PS2="$SIMPLE"
export PS3="$SIMPLE"
export PS4="$SIMPLE"
