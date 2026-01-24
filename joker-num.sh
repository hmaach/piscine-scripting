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

tries=5
found=0

for ((i=1; i<=5; i++)); do
    echo "Enter your guess ($tries tries left):"
    read guess

    # Invalid input: empty or non-numeric
    if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        i=$((i - 1))   # do not consume a try
        continue
    fi

    if [ "$guess" -gt "$secret" ]; then
        echo "Go down"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $i moves!"
        found=1
        break
    fi

    tries=$((tries - 1))
done

if [ "$found" -eq 0 ]; then
    echo "You lost, the number was $secret"
fi

