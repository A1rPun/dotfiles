#! /bin/bash

lock=''
lock_cmd='swaylock --daemonize --color 000000'

logout=''
logout_cmd='killall mango'

reboot=''
reboot_cmd='systemctl reboot'

shutdown=''
shutdown_cmd='systemctl poweroff'


wofi_cmd() {
	wofi --dmenu
}

run_wofi() {
	printf "$lock\n$logout\n$reboot\n$shutdown" | wofi_cmd
}

case "$(run_wofi)" in
	$lock) ${lock_cmd};;
	$logout) ${logout_cmd};;
	$reboot) ${reboot_cmd};;
	$shutdown) ${shutdown_cmd};;
esac
