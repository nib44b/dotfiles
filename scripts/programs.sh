#!/bin/bash
#
# Import the colors

chosen=$(echo -e "Cancel\nMusic\nGimp\nFiles\nEmacs\nPower" |dmenu -fn "terminus-medium-r-*-*-*-*" -nb "#16161e" -nf "#787c99" -sb "#f7768e" -sf "#acb0d0")

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
