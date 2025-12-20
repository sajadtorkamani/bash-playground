#!/usr/bin/env bash

set -eou pipefail

message="Random number: $RANDOM"

logger -s -p user.info $message