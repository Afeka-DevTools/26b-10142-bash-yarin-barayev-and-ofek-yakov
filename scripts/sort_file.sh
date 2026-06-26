#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./sort_file.sh <file_to_sort>"
    exit 1
fi

sort "$1"