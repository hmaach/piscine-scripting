#!/bin/bash

nohup bash -c '
match=$(cat facts | grep "moon")
if [ -n "$match" ]; then
    echo "$match"
    echo "The moon fact was found!" >> output.txt
fi
' &
