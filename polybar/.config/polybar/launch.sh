#!/bin/bash

# Terminate running bar instances
killall -q polybar

# Wait until processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

CONF_PATH="~/.config/polybar/config.ini"

# Launch polybar using config
polybar --config=$CONF_PATH top_laptop &

EXTERNAL_CONNECTED=$(xrandr | grep -o "HDMI-1 connected")
echo "$EXTERNAL_CONNECTED"

if [[ $EXTERNAL_CONNECTED ]]; then
	echo "External display connected"
	polybar --config=$CONF_PATH top_external &
fi
