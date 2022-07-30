#! /bin/sh

DIR="$HOME/.config/polybar/too"

killall -q polybar

polybar top -c "$DIR"/config.ini & 
polybar bottom -c "$DIR"/config.ini & 
