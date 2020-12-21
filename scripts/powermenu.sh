#!/bin/bash
#
# Import the colors

chosen=$(echo -e "Cancel\nLogout\nShutdown\nReboot\nSuspend\nLock" |dmenu -fn "terminus-medium-r-*-*-*-*" -nb "#16161e" -nf "#787c99" -sb "#f7768e" -sf "#acb0d0")

if [[ $chosen = "Logout" ]]; then
	bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Lock" ]]; then
	sleep 0.1 && i3lock-fancy
fi
