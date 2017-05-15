# Terminal style
export PS1="\[\033[38;5;10m\]\w/\$"

# Alias
alias pls="sudo !!"
alias ll="ls -l"
alias la="ls -la"
alias ins="apt-get install"
alias last="history 10"

# Git alias
alias gstat="git status"
alias gcom="git commit -m"
alias glog="git log --pretty=oneline"

# Termux alias
alias shf="mpv --fs --shuffle -vo tct ~/storage/music"
alias sator="python ~/projects/pys/sator.py"

# Scan network
ipscan(){
  nmap -sn "$1.1-254/24" | egrep "scan report" | cut -d " " -f 5
}
