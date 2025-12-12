#!/usr/bin/env bash

function say_hello() {
  name="Sajad"
  echo "Hello $name"
}

say_hello

if [ -n "$name" ]; then
  echo "name = $name"
else
  echo "name is not defined"
fi
