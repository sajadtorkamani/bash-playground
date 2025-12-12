#!/usr/bin/env bash

arg=$1

if [ -z "$arg" ]; then
  echo "You must provide an argument"
  exit 2
fi

if [ -f "$arg" ]; then
  exit 0
elif [ -d "$arg" ]; then
   exit 1
else
  exit 2
fi
