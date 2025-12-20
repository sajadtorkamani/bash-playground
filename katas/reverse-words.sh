#!/usr/bin/env bash

set -euo pipefail

# Reverse the words in the given string
function reverse_words() {
  local str=$1
  local words
  read -ra words <<< "$str"
  printf "We have %d words" "${#words[@]}"
}

reverse_words "hello how are you doing?"
