## Open this file
alias nb="vim ~/.bashrc"
## Application Colors!
alias diff="diff --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto --exclude-dir={.git,node_modules,dist}"
if [ -x "$(command -v exa)" ]; then
  alias ls="exa"
else
  alias ls="ls --color=auto"
fi
## General
#alias -="cd -"
alias cal="cal -m -w --color"
alias dig="drill"
alias dua="du -hsc *"
alias dui="du -h * --max-depth=1 --exclude=.git --exclude=node_modules"
alias diskusage="dfc"
alias la="ls -aF"
alias ll="ls -laF"
alias last="history 10"
alias listalias="alias | bat -l=bash --paging=never"
alias mime="file -bi"
alias mk="cat Makefile | grep '^[a-zA-Z0-9]*:$' | sort"
alias nslookup="drill"
alias rimraf="rm -rf"
alias doom-emacs="emacs -nw"
alias vi="vim"
alias ed="doom-emacs"
alias whereami="pwd -P"
alias cleardns='dscacheutil -flushcache; killall -HUP mDNSResponder; say DNS Cleared.'
# Queries
alias qf="find . | grep"
alias qp="ps faux | grep"
alias qt="grep -C 2 -R"
alias qw="xprop | grep WM_CLASS"
alias qs="du -sh"
## Languages
alias paccept="php bin/console --env=accept"
alias pdev="php bin/console --env=dev"
alias pi="ipython"
alias pprod="php bin/console --env=prod"
alias r="Rscript"
alias ri="R --quiet"
alias phpfix="php vendor/bin/rector process && vendor/bin/php-cs-fixer fix && vendor/bin/phpstan --memory-limit=-1 --xdebug"
## Apps
### Asciinema
alias ac="asciinema rec -w 2.5 -c '$PREFIX/bin/bash -l' demo.json"
# Docker
alias dps='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"'
# Entr
alias watch_with="ls * | entr"
alias ww="watch_with"
### Fx
alias json="fx package.json"
### Git
alias ff="git diff"
alias gai="git add -p"
alias gca="git commit --amend --no-edit"
alias gci="git checkout -p"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gcd="git branch -D"
alias gg="git pull"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gor="git remote show origin"
alias gp="git push"
alias gri="git reset -p"
alias grs="git remote set-url origin"
alias gs="git status"
alias commit="git commit -m"
alias master="git checkout master"
alias stashall="git stash --include-untracked"
alias popstash="git stash pop"
alias showstash="git stash show -p"
alias up="git for-each-ref --format='%(refname:short) -> %(upstream:short)' refs/heads"
alias yolo="git add ."
alias liststashes="git stash list"
alias listlocalbranches="git branch"
alias listremotebranches="git branch -r"
### GitDaily
alias gd="gitdaily --all"
alias gda="gd --parent"
alias gdc="gitdaily --compact"
### Htop
alias ht="htop --sort-key=PERCENT_MEM"
### Mpv
alias shf="mpv -vo null --shuffle --loop-playlist --msg-level=ao=fatal"
### SSH
#alias sshagent="eval `ssh-agent` && ssh-add ~/.ssh/id_rsa"
### NPM
alias blackhole="npm i"
alias npminstalled="npm list -g --depth=0"
alias npmoutdated="npm outdated -g --depth=0"
alias obliterate="rimraf node_modules/"
### Speedometer
alias wt="speedometer -l -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
alias nt="speedometer -l -r enp2s0 -t enp2s0 -m $(( 1024 * 1024 * 3 / 2 )) -b"
