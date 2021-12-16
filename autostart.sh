#!/bin/bash

killall -q wp-autochange.sh
while pgrep -u $UID -x wp-autochange.sh >/dev/null; do sleep 1; done
~/.config/i3/wp-autochange.sh &

killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom -b

killall -q fcitx5
while pgrep -u $UID -x fcitx5 >/dev/null; do sleep 1; done
fcitx5 &

# killall -q nm-applet &
# while pgrep -u $UID -x nm-applet >/dev/null; do sleep 1; done
# nm-applet &

killall -q blueman-applet &
while pgrep -u $UID -x blueman-applet >/dev/null; do sleep 1; done
blueman-applet &

killall -q xfce4-power-manager &
while pgrep -u $UID -x xfce4-power-manager >/dev/null; do sleep 1; done
xfce4-power-manager &

# killall -q xfce4-volumed-pulse &
# while pgrep -u $UID -x xfce4-volumed-pulse >/dev/null; do sleep 1; done
# xfce4-volumed-pulse &
