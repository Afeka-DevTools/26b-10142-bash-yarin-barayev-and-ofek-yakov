#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: ./backup_dir.sh <source_directory> <destination_file.tar.gz>"
    exit 1
fi

tar -czvf "$2" "$1"
echo "Backup successfully created at: $2"