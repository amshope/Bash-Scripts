#!/bin/sh

u_cho=$(printf "Shutdown\nReboot\nLock\nExit" | dmenu -l 10 -p "Choose your command")

[ $u_cho = "Shutdown" ] && doas poweroff
[ $u_cho = "Reboot" ] && doas reboot
[ $u_cho = "Lock" ] && slock
[ $u_cho = "Exit" ] && pkill dwm
