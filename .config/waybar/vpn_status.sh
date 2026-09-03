#!/bin/bash

vpn=$(nmcli -t -f NAME,TYPE con show --active | grep wireguard | cut -d: -f1)

if [ -n $vpn ]; then
  latency=$(ping -c1 -W1 1.1.1.1 2>/dev/null | grep -oP '\d+(?=\.?\d* ms)' | head -n1)

  case "$vpn" in
  netherlands) title="🇳🇱" ;;
  *) title="󰢭" ;;
  esac

  if [ -n "$latency" ]; then
    echo "$title ${latency}ms"
  else
    echo "$title (no ping)"
  fi
else
  echo "󰣼"
fi
