#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
  #for f in /etc/X11/xinit/xinitrc.d/*; do
    #[ -x "$f" ] && . "$f"
  #done
  #unset f
#fi

urxvtd -q -f -o &

while true; do
        if amixer get Master | tail -1 | grep off > /dev/null; then
                VOL="Vol. muted"
        else
                VOL="Vol. $(amixer get Master | tail -1 | awk '{ print $5 }' | tr -d '[]')"
        fi
        if acpi -a | grep off-line > /dev/null; then
                xsetroot -name "Bat. $( acpi -b | awk '{ print $4 " " $5 }' | tr -d ',' ) | $VOL | $(
date +"%F %T")"
        else
                xsetroot -name "$VOL | $(date +"%F %T")"
        fi
        sleep 1s
done &


# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec dwm
