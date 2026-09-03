#!/bin/bash

# Config
LOW=25           # percentage to trigger low battery
CRIT=10          # percentage to trigger critical battery
BRIGHTNESS=30    # brightness level for low battery
ICON=dialog-warning
SUMMARY="⚡ Low Battery"
BODY="Plug in your charger."

while true; do
  # Get battery info
  capacity=$(cat /sys/class/power_supply/BAT1/capacity)
  status=$(cat /sys/class/power_supply/BAT1/status)

  if [ "$status" = "Discharging" ]; then
    if [ "$capacity" -le "$CRIT" ]; then
      brightnessctl set "${BRIGHTNESS}%"
      canberra-gtk-play -i dialog-warning &
      dunstify -u critical -r 555 "$SUMMARY (critical)" "$BODY ($capacity%)" -i "$ICON"
      canberra-gtk-play -i dialog-warning &
    elif [ "$capacity" -le "$LOW" ]; then
      brightnessctl set "${BRIGHTNESS}%"
      canberra-gtk-play -i dialog-warning &
      dunstify -u critical -r 555 "$SUMMARY" "$BODY ($capacity%)" -i "$ICON"
      canberra-gtk-play -i dialog-warning &
    fi
  fi

    # If charging/full, clear any old notif
    if [ "$status" = "Charging" ] || [ "$status" = "Full" ]; then
      # brightnessctl -r
      dunstify -C 555
    fi

    sleep 60  # check every minute
  done

