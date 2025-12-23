#!/usr/bin/env bash

set -euo pipefail

function remove_vowels() {
  str=$1
  echo "$str" | sed -E "s/[aeiou]//gi"
}


remove_vowels 'This website is for losers LOL!'
# Should return 'Ths wbst s fr lsrs LL!'
