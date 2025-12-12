#!/bin/bash

read -r "What's the name of the file or directory?" file_or_dir

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