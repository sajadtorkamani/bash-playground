#!/bin/bash

set -euo pipefail

# Remove all "a" chars with an asterisk "*"
function remove_spaces() {
  local str=$1

  echo "${str//a/*}"
}

remove_spaces "sajad torkamani"
