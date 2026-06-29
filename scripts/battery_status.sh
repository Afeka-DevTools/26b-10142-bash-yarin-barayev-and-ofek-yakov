#!/bin/bash

# searching the battery folder
BATTERY_PATH=$(ls -d /sys/class/power_supply/BAT* 2>/dev/null | head -n 1)

# check if there is a battery
if [ -z "$BATTERY_PATH" ]; then
    echo "Error: there is no a battery."
    exit 1
fi


STATUS=$(cat "$BATTERY_PATH/status")
CAPACITY=$(cat "$BATTERY_PATH/capacity")

# print results
echo "🔋 Info about battery"
echo "-------------------"
echo "battery precentage $CAPACITY%"
echo "battery mode: $STATUS%"
