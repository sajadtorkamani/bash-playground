#!/bin/bash

file_or_dir=$1

if [ -z "$file_or_dir" ]; then
  echo "You must provide a file or directory name"
  exit 2
fi

if [ -d "$file_or_dir" ]
then
  echo "$file_or_dir" is a directory
elif [ -f "$file_or_dir" ]
then
  echo "$file_or_dir" is a regular file
else
    echo "$file_or_dir is nether a directory nor a file"
    exit 2
fi

ls -la "$file_or_dir"
