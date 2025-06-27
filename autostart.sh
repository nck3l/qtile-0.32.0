#!/bin/zsh

setxkbmap -layout us &
export $(dbus-launch) # ad-hoc dbus management rather than wrapping in a dbus-run-session
xinput set-prop 11 354 0.6 & # makes trackpoint track faster (higher numbers)
xinput set-prop 10 314 300, 300 & # makes touchpad scroll slower (higher = slower)
xinput set-prop 10 316 1, 1 & # makes touchpad scroll vertically and horizontally
picom -b # this daemonizes the process. Settings are in picom.conf
dunst -conf ~/.config/dunst/config &
feh --bg-fill --random ~/Pictures/Wallpapers/* &
