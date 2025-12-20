#!/bin/bash

colours=(red green blue white)

for (( index=0; index < ${#colours[@]}; index++ )); do
  colour="${colours[index]}"
  echo "- index: $index, colour: $colour"
done
