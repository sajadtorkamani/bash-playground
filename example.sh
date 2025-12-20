#!/usr/bin/env bash

str="Hello, how are you doing today?"

read -ra words <<<"$str"

for word in "${words[@]}"; do
  echo "$word"
done

# Output
# --------
# Hello,
# how
# are
# you
# doing
# today?
