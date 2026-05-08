#!/bin/sh

iface="wlo1"

if iw dev $iface link | grep -q "Connected"; then
    ssid=$(iw dev $iface link | awk '/SSID/ {print $2}')
    signal=$(iw dev $iface link | awk '/signal/ {print $2}' | cut -d'.' -f1)
    echo "$icon $ssid ($signal dBm)"
else
    echo " Disconnected"
fi
