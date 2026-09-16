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
	wofi --dmenu --sort-order=default
}

run_wofi() {
	printf "$shutdown\n$reboot\n$logout\n$lock" | wofi_cmd
}

case "$(run_wofi)" in
	$shutdown) ${shutdown_cmd};;
	$reboot) ${reboot_cmd};;
	$logout) ${logout_cmd};;
	$lock) ${lock_cmd};;
esac
