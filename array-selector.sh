#!/bin/bash

# Declare the array
colors=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]]; then
    echo "Error"
    exit 1
fi

if [[ ! $1 =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 1
fi

index=$1

if (( index < 1 || index > ${#colors[@]} )); then
    echo "Error"
    exit 1
fi

echo "${colors[index-1]}"

