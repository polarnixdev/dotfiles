#!/bin/bash

# Terminate already running bar instances
killall -q polybar 

# Launch polybar, using default config location ~/.config/polybar/config
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
polybar vertbar 2>&1 | tee -a /tmp/polybar2.log & disown
polybar rightbar 2>&1 | tee -a /tmp/polybar3.log & disown

echo "Polybar launched..."
