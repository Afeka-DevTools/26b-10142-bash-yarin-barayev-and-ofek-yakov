#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./kill_processes.sh <process_name>"
    exit 1
fi

pkill "$1"
echo "Killed all processes matching: $1"