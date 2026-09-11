#!/bin/bash
MY_RANDOM_COMMAND() {
  fortune | cowsay -r | lolcat
}

cmds=( 
  "cmatrix"
  "pipes.sh"
  "fastfetch"
  "htop"
  "MY_RANDOM_COMMAND"
  "fzf"
  "vim $HOME/.bashrc"
  "tty-clock -c -s"
)
i=$(( RANDOM % ${#cmds[@]} ))
${cmds[i]}
