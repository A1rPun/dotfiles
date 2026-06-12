#
# ~/.bash_profile
#

## Autostart on TTY1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec mango
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
