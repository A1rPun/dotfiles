## Open this file
alias nb="vi ~/.bashrc"
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
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
## General
alias ll="ls -lF"
alias la="ls -lAF"
alias last="history 10"
alias rimraf="rm -rf"
alias whereami="pwd -P"
alias dua="du -hsc *"
alias cal="cal -m -w --color"
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
alias pdev='php bin/console --env=dev'
alias pprod='php bin/console --env=prod'
alias paccept='php bin/console --env=accept'
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
alias grs="git remote set-url origin"
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
alias npmupdate="npm install -g npm"
alias npminstalled="npm list -g --depth=0"
alias blackhole="npm install"
### Speedometer
alias wt="speedometer -l -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
alias nt="speedometer -l -r enp2s0 -t enp2s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
