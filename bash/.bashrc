# Terminal style
C1="\[\e[38;5;28m\]"
C2="\[\e[38;5;41m\]" 
GREEN="\[\e[38;5;10m\]"
export PS1="$C1\H:$C2[\w]$GREEN\n\#\$"
export PS2="$GREEN> "

# Alias
alias nb="nano ~/.bashrc"
alias pls="sudo !!"
alias ll="ls -l"
alias la="ls -la"
alias ins="apt-get install"
alias last="history 10"

# Git alias
alias gs="git status"
alias gc="git commit -m"
alias gl="git log --pretty=oneline"
alias ggg="git log --pretty=format:\"%h %s\" --graph"

# Termux alias
alias shf="mpv --fs --shuffle -vo tct ~/storage/music"
alias sator="python ~/projects/pys/sator.py"
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"

# Scan network
ipscan(){
#  nmap -sn "$1.1-254/24" | egrep "scan report" | cut -d " " -f 5
  nmap -sn "$1.1-254/24"
}
