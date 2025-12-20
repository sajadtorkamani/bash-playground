#!/bin/bash

set -euo pipefail

# Remove the first and last chars from a string
function remove_chars() {
  local str=$1
  local str_length=${#str}

  if [ "$str_length" -le 2 ]; then
    echo ""
    exit 0
  fi

  local slice_length=$str_length-2
  echo "${str:1:slice_length}"
}

remove_chars "sajad"
