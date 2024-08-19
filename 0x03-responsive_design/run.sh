#!/usr/bin/bash

# replace css filename in html file 
# accepts two arguments: html file and css filename
# usage: ./run.sh 2 index.html

# check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: ./run.sh <number> index.html"
    exit 1
fi

# check if the html file exists
if [ ! -f $2 ]; then
    echo "File $2 does not exist"
    exit 1
fi

# check if the css file exists
if [ ! -f $2 ]; then
    echo "File $2 does not exist"
    exit 1
fi

# replace css filename in html file
# sed -i "s/[0-9]*-1-styles\.css/$1-1-styles.css/" "$2"
sed -i "s/[0-9]*-styles\.css/$1-styles.css/" "$2"

echo "$2"