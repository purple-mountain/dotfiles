#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 


# polybar-msg cmd quit


# Otherwise you can use the nuclear option:
killall -q polybar

echo "thermal-zone = `grep "." /sys/class/thermal/thermal_zone*/type | cut -c32,38- | grep "x86_pkg_temp" | cut -d":" -f1`" > ~/.config/polybar/thermal-zone

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main -c $(dirname $0)/config.ini &

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

# echo "Bars launched..."


# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

# echo "Bars launched..."
