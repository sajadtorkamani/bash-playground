#!/bin/bash

set -euo pipefail

# Remove all spaces from the string
function remove_spaces() {
  local str=$1

  echo "${str// /}"
}

remove_spaces '8 j 8   mBliB8g  imjB8B8  jl  B'
