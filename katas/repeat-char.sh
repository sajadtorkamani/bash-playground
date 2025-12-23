#!/usr/bin/env bash

set -euo pipefail

function repeat_char() {
  local char=$1
  local num_repetitions=$2
  local result=""

  for (( index=0; index < num_repetitions; index++ )); do
    result+="$char"
  done

  echo "$result"
}

repeat_char "a" 6
