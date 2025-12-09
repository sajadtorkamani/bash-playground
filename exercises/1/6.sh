#!/bin/bash

read -rp "What's the name of the file or directory?" FILE_OR_DIR

if [ -d "$FILE_OR_DIR" ]
then
  echo "$FILE_OR_DIR" is a directory
elif [ -f "$FILE_OR_DIR" ]
then
  echo "$FILE_OR_DIR" is a regular file
else
    echo "$FILE_OR_DIR is nether a directory nor a file"
fi

ls -la "$FILE_OR_DIR"