#!/usr/bin/env bash

host=sajadtorkamani.com
ping -c 1 $host > /dev/null
return_code=$?

if [ "$return_code" -eq "0" ]; then
  echo "✅  $host is reachable"
else
  echo "❌  $host is unreachable"
fi
