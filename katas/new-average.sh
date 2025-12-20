#!/usr/bin/env bash

set -euo pipefail

function new_average() {
  local nums=($1)
  local new_avg=$2
  local current_total=0
  local nums_count="${#nums[@]}"

  for num in "${nums[@]}"; do
    current_total=$((current_total + num))
  done

  local required_new_total=$(((nums_count + 1) * new_avg))

  result=$((required_new_total - current_total))

  if [[ "$result" -lt 0 ]]; then
    echo "ERROR"
    exit 1
  else
    echo "$result"
  fi
}

new_average "14, 30, 5, 7, 9, 11, 15"