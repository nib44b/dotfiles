#!/bin/bash
#
# Import the colors

chosen=$(echo -e "Cancel\nMusic\nGimp\nFiles\nEmacs\nPower" |dmenu -fn "terminus-medium-r-*-*-*-*" -nb "#fbf1c7" -nf "#3c3836" -sb "#cc241d" -sf "#e4ede4")

if [[ $chosen = "Music" ]]; then
    urxvt -e musikcube
elif [[ $chosen = "Gimp" ]]; then
    gimp
elif [[ $chosen = "Files" ]]; then
    urxvt -e ranger
elif [[ $chosen = "Emacs" ]]; then
    emacs
elif [[ $chosen = "Power" ]]; then
    sh ~/.config/scripts/powermenu.sh
fi
