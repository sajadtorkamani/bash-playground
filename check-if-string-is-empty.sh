#!/bin/bash

set -eou pipefail

value=""

if [ -z "$value" ]; then
  echo "value is empty"
else
  echo "value is not empty"
fi
