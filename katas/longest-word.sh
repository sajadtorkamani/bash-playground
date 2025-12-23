#!/usr/bin/env bash

set -euo pipefail

# https://www.codewars.com/kata/5656b6906de340bd1b0000ac
# ⚠️ INCOMPLETE: work in progress
function longest_word() {
  local word1=$1
  local word2=$2
  local word1_chars=()

  for (( index=0; index<${#word1}; index++ )); do
    local char="${word1:index:1}"
    word1_chars+=("$char")
  done

  echo "$word1_chars"
}

function contains_item() {
  local list=$1
  local item=$1

  for (( index=0; index<${#list}; index++ )); do
    local list_item="${list[index]}"

    if [ "$item" -eq "$list_item" ]; then
      echo 0
    fi
  done

  echo 1
}

longest_word "xyaabbbccccdefww" "xxxxyyyyabklmopq" # Should return "abcdefklmopqwxy"

