#!/bin/bash

HOME_WIFI_LIST=("TP-Link_0BC1_5G" "TP-Link_0BC1")
PROFILE_DIR="$HOME/.config/hypr/hypridle_profiles"
ACTIVE_CONF="$HOME/.config/hypr/hypridle.conf"
LOG_FILE="$HOME/.local/share/hypridle-switch.log"

CURRENT_WIFI=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

is_home_wifi=false
for ssid in "${HOME_WIFI_LIST[@]}"; do
    if [[ "$CURRENT_WIFI" == "$ssid" ]]; then
	is_home_wifi=true
	break
    fi
done

if $is_home_wifi; then
    TARGET_PROFILE="home.conf"
else
    TARGET_PROFILE="default.conf"
fi

if cmp -s "$PROFILE_DIR/$TARGET_PROFILE" "$ACTIVE_CONF"; then
	echo "$(date '+%F %T') [INFO] No change needed (still on $TARGET_PROFILE)" >> "$LOG_FILE"
    exit 0
fi

cp "$PROFILE_DIR/$TARGET_PROFILE" "$ACTIVE_CONF"
echo "$(date '+%F %T') [INFO] Switched to $TARGET_PROFILE (Wi-Fi: ${CURRENT_WIFI:-none})" >> "$LOG_FILE"

pkill -u "$USER" hypridle
hypridle &
