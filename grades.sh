#!/bin/bash

if [ "$#" -ne 1 ]; then
    >&2 echo "Error: expect 1 argument only!"
    exit 1
fi

students="$1"

if ! [[ "$students" =~ ^[0-9]+$ ]] || [ "$students" -le 0 ]; then
    >&2 echo "Error: expect 1 argument only!"
    exit 1
fi

declare -a names
declare -a grades

# ----- Input loop -----
for ((i=1; i<=students; i++)); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

	if ! [[ "$grade" =~ ^[0-9]+$ ]] || [ "$grade" -gt 100 ]; then
        >&2 echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted."
        exit 1
    fi

    names+=("$name")
    grades+=("$grade")
done

for ((i=0; i<students; i++)); do
    grade="${grades[$i]}"
    name="${names[$i]}"

    if [ "$grade" -ge 90 ]; then
        echo "$name: You did an excellent job!"
    elif [ "$grade" -ge 70 ]; then
        echo "$name: You did a good job!"
    elif [ "$grade" -ge 50 ]; then
        echo "$name: You need a bit more effort!"
    else
        echo "$name: You had a poor performance!"
    fi
done

