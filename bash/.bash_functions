## Extract archive
extract() {
  if [ -f $1 ]; then
    case $1 in
    *.tar.bz2) tar xvjf $1 ;;
    *.tar.gz) tar xvzf $1 ;;
    *.bz2) bunzip2 $1 ;;
    *.rar) unrar x $1 ;;
    *.gz) gunzip $1 ;;
    *.tar) tar xvf $1 ;;
    *.tbz2) tar xvjf $1 ;;
    *.tgz) tar xvzf $1 ;;
    *.zip) unzip $1 ;;
    *.Z) uncompress $1 ;;
    *.7z) 7z x $1 ;;
    *) echo "don't know how to extract > '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

## Scan network. Usage > "ipscan 192.168.1"
ipscan() {
  local ipaddress=""
  if [ -e $1 ]; then
    ipaddress=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
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

hostname() {
  sudo nmap -O $1 2>&1
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
  x=$(tput op) y=$(printf %76s)
  for i in {0..256}; do
    o=00$i
    echo -e ${o:${#o}-3:3} $(
      tput setaf $i
      tput setab $i
    )${y// /=}$x
  done
}

# View markdown in terminal
md() {
  fileName=${1:-"README.md"}
  markdown "$fileName"
}

# count files & folders
count() {
  local count=$(ls | wc -l)
  local countd=$(ls -l | grep ^d -c)
  local countf=$(ls -l | grep ^- -c)
  echo -e "Total:\t$count\nDir:\t$countd\nFile:\t$countf"
}

# Check if a file has a Byte Order Mark
hasbom() {
  head -c3 "$1" | LC_ALL=C grep -qP '\xef\xbb\xbf'
}

find_git_dirty() {
  local status=$(git status --porcelain 2>/dev/null)
  if [[ "$status" != "" ]]; then
    echo "*"
  else
    echo ""
  fi
}

find_git_upstream_count() {
  local count=$(git rev-list @{u}... --count 2>/dev/null)
  if [[ $count != 0 && "$count" != "" ]]; then
    echo $count
  else
    echo ""
  fi
}

find_git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ "$branch" != "" ]]; then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    echo "($branch)$(find_git_upstream_count)>$(find_git_dirty)"
  else
    echo ""
  fi
}
