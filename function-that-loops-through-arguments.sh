#!/usr/bin/env bash

function say_hello() {
  for name in "$@"; do
    echo "Hello $name"
  done
}

say_hello Bob Jim Alice Mike
