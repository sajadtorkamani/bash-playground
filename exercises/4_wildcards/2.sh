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

default_prefix=$(date +'%Y-%m-%d')

read -rp "Please enter a file extension: " file_extension
read -rp "Please enter a file prefix: (Press ENTER for $default_prefix)" file_prefix

if [ -z "$file_prefix" ]; then
  file_prefix="$default_prefix"
fi

files="$images_directory/*.$file_extension"

for file in $files; do
  existing_filename=$(basename "$file")
  new_filename="$file_prefix-$existing_filename"

  echo "Renaming $existing_filename to $new_filename"
done
