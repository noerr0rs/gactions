#!/bin/sh -l

echo "Hello $1"
time=$(date)
IFS='.' # space is set as delimiter
read -ra ADDR <<< "$1" # str is read into an array as tokens separated by IFS
for i in "${ADDR[@]}"; do # access each element of array
    echo "$i"
done
echo ::set-output name=time::$time