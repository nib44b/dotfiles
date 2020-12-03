#!/bin/bash
#
# Import the colors

chosen=$(echo -e "Cancel\nLogout\nShutdown\nReboot\nSuspend\nLock" |dmenu -fn "terminus-medium-r-*-*-*-*" -nb "#fbf1c7" -nf "#3c3836" -sb "#cc241d" -sf "#e4ede4")

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
