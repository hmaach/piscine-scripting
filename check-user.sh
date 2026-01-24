#!/bin/bash

if [ "$#" -ne 2 ]; then
    >&2 echo "Error: expect 2 arguments"
    exit 1
fi

flag="$1"
user="$2"

case "$flag" in
    -e)
        if getent passwd "$user" > /dev/null; then
            echo "yes"
        else
            echo "no"
        fi
        ;;
    -i)
        getent passwd "$user"
        ;;
    *)
        >&2 echo "Error: unknown flag"
        exit 1
        ;;
esac

