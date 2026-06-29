#!/bin/bash

# 1. generating 1 char for each special kind
UPPER=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
LOWER=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
DIGIT=$(tr -dc '0-9' < /dev/urandom | head -c 1)
SPECIAL=$(tr -dc '!@#$%^&*()_+-=' < /dev/urandom | head -c 1)

# 2. generating 6 other chars
REST=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+-=' < /dev/urandom | head -c 6)

# 3. combinig to one string
COMBINED="${UPPER}${LOWER}${DIGIT}${SPECIAL}${REST}"

# 4. shuffle the string
PASSWORD=$(echo "$COMBINED" | fold -w1 | shuf | tr -d '\n')

echo "The generated password: $PASSWORD"