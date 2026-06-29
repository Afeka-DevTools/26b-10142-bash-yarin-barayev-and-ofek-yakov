#!/bin/bash

# check if 2 arguments is exist
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <prefix>"
    echo "example: $0 /path/to/folder my_prefix_"
    exit 1
fi

DIR="$1"
PREFIX="$2"

# check if the folder exist
if [ ! -d "$DIR" ]; then
    echo "Error: the folder '$DIR' does not exist."
    exit 1
fi

echo "starting to add the prefix '$PREFIX' to .txt files in folder: $DIR"
echo "--------------------------------------------------------"

count=0

# loop for each .txt file
for file in "$DIR"/*.txt; do
    # check if the file exist
    if [ -f "$file" ]; then
        # only name
        filename=$(basename "$file")
        
        # building the path
        new_file="$DIR/${PREFIX}${filename}"
        
        # file name change
        mv "$file" "$new_file"
        
        echo "changed: $filename  ->  ${PREFIX}${filename}"
        ((count++))
    fi
done

echo "--------------------------------------------------------"
if [ $count -eq 0 ]; then
    echo "there is no .txt files in this folder"
else
    echo "✅ $count files has changed!"
fi