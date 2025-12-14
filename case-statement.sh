#!/usr/bin/env bash

set -eou pipefail

read -rp "What do you want to do? (run|walk) " action

case "$action" in
  "run")
    echo "Ok, let's run 🏃"
    ;;
  "walk")
    echo "Ok, let's take a walk 🚶"
    ;;
  *)
    echo "Usage: $0 run|walk"
    exit 1
    ;;
  esac
