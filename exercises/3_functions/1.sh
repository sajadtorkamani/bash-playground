#!/usr/bin/env bash

function file_count() {
  local num_files=$(ls -la | tail -n +4 | wc -l | xargs)
  echo "There are $num_files files in the current directory ($(pwd))"
}

file_count
