# Terminal style
export PS1="\[\033[38;5;10m\]\w/\$"

# Aliases
alias ll="ls -l"
alias la="ls -la"
alias ins="apt-get install"
alias shf="mpv --fs --shuffle -vo tct ~/storage/music"
alias sator="python ~/projects/pys/sator.py"

# Scan network
ipscan(){
  nmap -sn "$1.1-254/24" | egrep "scan report" | cut -d " " -f 5
}
