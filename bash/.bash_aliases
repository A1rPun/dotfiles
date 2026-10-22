## Application Colors!
alias diff="diff --color=auto"
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
alias ...="cd ../.."
alias ....="cd ../../.."
alias listalias="alias | fzf"
alias mime="file -bi"
alias mk="cat Makefile | grep '^[a-zA-Z0-9]*:$' | sort"
alias nslookup="drill"
alias rimraf="rm -rf"
alias doom-emacs="emacs -nw"
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
alias phpfix="php vendor/bin/rector process && vendor/bin/php-cs-fixer fix && vendor/bin/phpstan --memory-limit=-1 --xdebug"
## Apps
# Docker
alias dps='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"'
# Entr
alias watch_with="ls * | entr"
alias ww="watch_with"
### Fx
alias json="fx package.json"
### Git
alias ff="git diff"
alias gai="git add --patch"
alias gca="git commit --amend --no-edit"
alias gbd="git branch --delete --force"
alias gf="git fetch --prune"
alias gg="git pull"
alias gwa="git worktree add"
alias gwl="git worktree list"
alias gwp="git worktree prune"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gor="git remote --verbose"
alias gp="git push"
alias gri="git reset --patch"
alias grs="git remote set-url origin"
alias gs="git status"
alias commit="git commit --message"
alias stashall="git stash --include-untracked"
alias popstash="git stash pop"
alias showstash="git stash show --patch"
alias up="git for-each-ref --format='%(refname:short) -> %(upstream:short)' refs/heads"
alias yolo="git add ."
alias liststashes="git stash list | fzf"
alias listlocalbranches="git branch | fzf"
alias listremotebranches="git branch --remotes | fzf"
### GitDaily
alias gd="gitdaily --all"
alias gda="gd --parent"
alias gdc="gitdaily --compact"
### Mpv
alias shf="mpv -vo null --shuffle --loop-playlist --msg-level=ao=fatal"
### NPM
alias blackhole="npm install"
alias obliterate="rimraf node_modules/"
#alias reverse_symlink="shopt -s dotglob; for i in *; do echo "$i -> $(find -L ~/ -maxdepth 1 -samefile "$i")"; done"
