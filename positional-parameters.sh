#!/bin/bash

# $0: The path to the script
# $1: The first script argument
# $2: The second script argument
# $3: The third script argument
# $4..9: The fourth to ninth arguments

echo "You executed the script: $0"

if [ -n "$1" ]
then
  echo "Your first argument was: $1"
else
  echo "You didn't provide any arguments"
  exit 0
fi

if [ -n "$2" ]
then
  echo "Your second argument was: $2"
fi

