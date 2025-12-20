#!/usr/bin/env bash

set -euo pipefail

# Reverse the words in the given string
function reverse_words() {
  local str="$1"
  local words
  read -ra words <<<"$str"
  local num_words="${#words[@]}"
  local reversed_words=()

  for ((index = num_words - 1; index >= 0; index--)); do
    reversed_words+=("${words[$index]}")
  done

  echo "${reversed_words[*]}"
}

reverse_words "hello how are you doing?"
