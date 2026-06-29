#!/bin/bash

# checking if got size to compare
if [ -z "$1" ]; then
    echo "Error: no size."
    echo "Usage: $0 <size> [directory]"
    echo "for example:"
    echo "  $0 100M             (searching files bigger then 100MB in current folder)"
    echo "  $0 2G /path/to/dir  (searching files bigger then 2GB in dir folder)"
    exit 1
fi

SIZE=$1
# if there is no folder to search -> searching in current folder
DIR=${2:-.}

echo "🔍 Searching files bigger then $SIZE in folder: $DIR"
echo "------------------------------------------------"

# 1. find: Searching only files (-type f) bigger then (-size +$SIZE). 
#    -print0 
# 2. xargs and du: calculating the size.
# 3. sort -hr: sort big to small.

find "$DIR" -type f -size +"$SIZE" -print0 | xargs -0 -r du -h | sort -hr

echo "------------------------------------------------"
echo "✅ Searching is completed."