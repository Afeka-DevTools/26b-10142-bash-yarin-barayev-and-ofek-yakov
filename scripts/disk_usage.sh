#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./disk_usage.sh <directory_path>"
    exit 1
fi

du -sh "$1"/*