#!/usr/bin/env bash

set -eou pipefail

function my_logger() {
  local message="Random number: $RANDOM"
  logger -s -i -p user.info -t randomly "$message"
}

my_logger
my_logger
my_logger


