#!/usr/bin/env bash

set -euo pipefail

# Reverse the words in the given string
function reverse_words() {
  local str=$1

  echo $str
}

reverse_words "hello how are you doing?"
