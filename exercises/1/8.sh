#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "You must provide at least one argument"
  exit 2
fi

for arg in "$@"
do
  echo "-----------------------------------------------------------------------"
  if [ -d "$arg" ]
  then
    echo "$arg" is a directory with the following contents:
    ls -la "$arg"
  elif [ -f "$arg" ]
  then
    echo "$arg" is a regular file
  else
      echo "$arg" is nether a directory nor a file
  fi
  echo -e "-----------------------------------------------------------------------\n"
done
