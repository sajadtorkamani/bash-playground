#!/usr/bin/env bash

set -euox pipefail

# Reverse the words in the given string
function reverse_words() {
  local str="$1"
  local words
  read -ra words <<< "$str"
  local num_words="${#words[@]}"
  reversed_words=()

  for (( index=num_words-1; index >= 0; index-- )); do
    reversed_words+=("${words[$index]}")
  done

 for word in $reversed_words; do
#   echo "$word"
   echo "$word"
 done
}

reverse_words "hello how are you doing?"
