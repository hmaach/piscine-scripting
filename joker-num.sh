#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: wrong argument"
    exit 1
fi

secret="$1"

if ! [[ "$secret" =~ ^[0-9]+$ ]] || [ "$secret" -lt 1 ] || [ "$secret" -gt 100 ]; then
    echo "Error: wrong argument"
    exit 1
fi

tries_left=5
moves=0
found=0

for (( ; tries_left > 0; )); do
    echo "Enter your guess ($tries_left tries left):"
    read guess

    if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]] || [ "$guess" -lt 1 ] || [ "$guess" -gt 100 ]; then
        continue
    fi

    moves=$((moves + 1))
    tries_left=$((tries_left - 1))

    if [ "$guess" -gt "$secret" ]; then
        echo "Go down"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $moves moves!"
        found=1
        break
    fi
done

if [ "$found" -eq 0 ]; then
    echo "You lost, the number was $secret"
fi
