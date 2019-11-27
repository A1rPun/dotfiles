## Open this file
alias nb="vim ~/.bashrc"
## Application Colors!
alias diff="diff --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto --exclude-dir={.git,node_modules,dist}'
alias ls="ls --color=auto"
## General
alias cal="cal -m -w --color"
alias dua="du -hsc *"
alias la="ls -lAF"
alias last="history 10"
alias ll="ls -lF"
alias rimraf="rm -rf"
alias v="vim"
alias whereami="pwd -P"
alias listalias="alias | bat -l=bash --paging=never"
alias nslookup="drill"
alias dig="drill"
alias mime="file -bi"
# Queries
alias qf="find . | grep"
alias qp="ps faux | grep"
alias qt="grep -C 2 -R"
alias qw="xdotool search . behave %@ focus getwindowname"
## Languages
alias js="node"
alias paccept='php bin/console --env=accept'
alias pdev='php bin/console --env=dev'
alias phpfix='php-cs-fixer fix && ./vendor/bin/phpstan analyse --level=7 -n src'
alias pi="ipython"
alias pprod='php bin/console --env=prod'
alias py="python"
alias r="Rscript"
alias ri="R --quiet"
## Apps
### Asciinema
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"
### Git
alias ff="git diff"
alias gai="git add -p"
alias gb="git checkout -b"
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias gci="git checkout -p"
alias gco="git checkout"
alias gg="git pull"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gor="git remote show origin"
alias gp="git push"
alias gri="git reset -p"
alias grs="git remote set-url origin"
alias gs="git status"
alias up="git for-each-ref --format='%(refname:short) -> %(upstream:short)' refs/heads"
alias yolo="git add ."
alias master="git checkout master"
### GitDaily
alias gd="gitdaily --all"
alias gdc="gitdaily --compact"
alias gda="gd --parent"
### Htop
alias ht="htop --sort-key=PERCENT_MEM"
### Mpv
alias shf="mpv -vo null --shuffle --loop-playlist --msg-level=ao=fatal"
# NPM
alias npminstalled="npm list -g --depth=0"
alias npmoutdated="npm outdated -g --depth=0"
alias blackhole="npm i"
alias obliterate="rimraf node_modules/"
### Speedometer
alias wt="speedometer -l -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
alias nt="speedometer -l -r enp2s0 -t enp2s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
