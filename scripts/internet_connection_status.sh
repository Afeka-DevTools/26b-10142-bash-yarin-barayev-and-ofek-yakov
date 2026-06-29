#!/bin/bash

# the google DNS server
TARGET="8.8.8.8"

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "Checking connection to internet..."

if ping -c 1 -W 2 "$TARGET" > /dev/null 2>&1; then
    echo "[$TIMESTAMP] ✅ LOG: Connected. (Ping to $TARGET successful)"
else
    echo "[$TIMESTAMP] ❌ LOG: Not connected. (Ping to $TARGET failed)"
fi