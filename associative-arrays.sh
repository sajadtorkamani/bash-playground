#!/usr/bin/env bash

set -euo pipefail

# Declare the array
declare -A person=(
  [name]="Sajad"
  [age]=32
  [location]="Liverpool"
)

# Assign elements to array
person[hobby]="Coding"

# Get length of array
echo "---------------------------------------------"
echo "The length of the array is ${#person[@]}"
echo -e "---------------------------------------------\n"

# Access array elements by key
echo "---------------------------------------------"
echo "Accessing elements by key:"
echo "---------------------------------------------"
echo "Name: ${person[name]}"
echo "Age: ${person[age]}"
echo "Location: ${person[location]}"
echo "Hobby": "${person[hobby]}"

# Loop over keys
echo -e "\n---------------------------------------------"
echo "Looping over keys:"
echo "---------------------------------------------"
for key in "${!person[@]}"; do
  echo "$key"
done

# Loop over values
echo -e "\n---------------------------------------------"
echo "Looping over values:"
echo "---------------------------------------------"
for value in "${person[@]}"; do
  echo "$value"
done

# Loop over keys and values
echo -e "\n---------------------------------------------"
echo "Looping over keys and values:"
echo "---------------------------------------------"
for key in "${!person[@]}"; do
  echo "key: $key, value: ${person[$key]}"
done


