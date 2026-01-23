#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Error: two numbers must be provided."
  exit 1
fi

a="$1"
b="$2"

if ! [[ "$a" =~ ^-?[0-9]+$ ]] || ! [[ "$b" =~ ^-?[0-9]+$ ]]; then
  echo "Error: both arguments must be integers."
  exit 1
fi

if [[ "$b" == "0" ]]; then
  echo "Error: division by zero is not allowed."
  exit 1
fi

echo "scale=0; $a / $b" | bc
