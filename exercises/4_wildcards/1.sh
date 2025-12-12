#!/usr/bin/env bash

set -e

root_dir=$HOME/code/bash-playground
images_directory="$root_dir/exercises/4_wildcards/images"

function ensure_directory_exists {
  directory=$1

  if [ ! -d "$directory" ]; then
    echo "Not a directory: $directory"
    exit 2
  fi
}


ensure_directory_exists $root_dir
ensure_directory_exists $images_directory

jpeg_files="$images_directory/*.jpg"

for jpeg in $jpeg_files; do
  formatted_date=$(date +'%Y-%m-%d')
  filename=$(basename "$jpeg")
  echo "$formatted_date-$filename"
done
