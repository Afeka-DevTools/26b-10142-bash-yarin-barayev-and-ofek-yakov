#!/bin/bash

echo "Counting files with extension .$1:"
find . -maxdepth 1 -name "*.$1" | wc -l