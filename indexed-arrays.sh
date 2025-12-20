#!/usr/bin/env bash

set -euo pipefail

# Declare the array
languages=(ruby java python javascript golang bash)

# Access elements at a specific index
echo "---------------------------------------------"
echo "The element at index 0 is: ${languages[0]}"
echo "The element at index 2 is: ${languages[2]}"
echo -e "---------------------------------------------\n"

# Append element to array
languages+=("php")
echo "---------------------------------------------"
echo "We just added php to the array"
echo -e "---------------------------------------------\n"

# Get length of array
echo "---------------------------------------------"
echo "The length of the array is ${#languages[@]}"
echo -e "---------------------------------------------\n"

# Loop over array
echo "---------------------------------------------"
echo "We'll loop over the array now:"
echo -e "---------------------------------------------"
for language in "${languages[@]}"; do
  echo "$language"
done

# Loop over array with index
echo -e "\n---------------------------------------------"
echo "We'll loop over the array now with an index:"
echo -e "---------------------------------------------"
for ((index=0; index<"${#languages[@]}"; index++)); do
  echo "- index: $index, element: $language"
done


