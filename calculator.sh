#!/bin/bash

do_add() {
    echo $(($1 + $2))
}

do_sub() {
    echo $(($1 - $2))
}

do_mult() {
    echo $(($1 * $2))
}

do_divide() {
    echo $(($1 / $2))
}

if [ "$#" -ne 3 ]; then
    >&2 echo "Error: expect 3 arguments"
    exit
fi

left="$1"
op="$2"
right="$3"

number_regex='^-?[0-9]+$'

if ! [[ $left =~ $number_regex && $right =~ $number_regex ]]; then
    >&2 echo "Error: invalid number"
    exit
fi

case "$op" in
    "+")
        do_add "$left" "$right"
        ;;
    "-")
        do_sub "$left" "$right"
        ;;
    "*")
        do_mult "$left" "$right"
        ;;
    "/")
        if [ "$right" -eq 0 ]; then
            >&2 echo "Error: division by 0"
            exit
        fi
        do_divide "$left" "$right"
        ;;
    *)
        >&2 echo "Error: invalid operator"
        exit
        ;;
esac

