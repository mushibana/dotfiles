#!/bin/bash
pidof hyprlock > /dev/null || hyprlock &
sleep 30
if pgrep -x "hyprlock" > /dev/null; then
    hyprctl dispatch dpms off
fi
