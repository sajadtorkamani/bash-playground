#!/usr/bin/env bash

function file_count() {
  directory=$1

  if [ -z "$directory" ]; then
    echo "You must provide a directory"
    exit 2
  fi

  if [ ! -d "$directory" ]; then
    echo "$directory is not a valid directory"
    exit 2
  fi

  local num_files=$(ls | wc -l | xargs)
  echo "$directory:"
  echo -e "\t$num_files"
}

file_count "/etc"
file_count "/var"
file_count "/usr/bin"
