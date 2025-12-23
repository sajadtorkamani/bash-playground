#!/usr/bin/env bash

set -euo pipefail

# https://www.codewars.com/kata/55f2b110f61eb01779000053/train/shell
function sum_of_range() {
  local num1=$1
  local num2=$2
  local sum=0

  if (( num1 == num2 )); then
    echo "$num1"
    exit 0
  fi

  if (( num1 > num2 )); then
    larger_num=$num1
    smaller_num=$num2
  else
    larger_num=$num2
    smaller_num=$num1
  fi

  for (( num=smaller_num; num <= larger_num; num++ )); do
    sum=$((sum + num))
  done

  echo "$sum"
}

sum_of_range "1" "3" # Should return 6 (1 + 2 + 3 = 6)
sum_of_range "1" "5" # Should return 15 (1 + 2 + 3 + 4 + 5 = 15)
sum_of_range "3" "-1" # Should return 5 (-1 + 0 + 1 + 2 + 3 = 5)
