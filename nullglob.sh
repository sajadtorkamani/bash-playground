#!/usr/bin/env bash

set -e

# ------------------------------------------------------------------------------
# nullglob is turned off here so $files will be set to /tmp/foo/* if no files
# match that pattern. This is almost always unwanted.
# ------------------------------------------------------------------------------

shopt -u nullglob

files=(/tmp/foo/*)

echo "========================================="
echo "shopt: ON"
echo "========================================="
echo "Matched ${#files[@]} file(s)"
echo "First file: ${files[0]}"
echo -e "=========================================\n\n"


# ------------------------------------------------------------------------------
# nullglob is turned on here so $files will be set to nothing (zero words).
# if no files match that pettern.
# ------------------------------------------------------------------------------
shopt -s nullglob

files=(/tmp/foo/*)

echo "========================================="
echo "shopt: OFF"
echo "========================================="
echo "Matched ${#files[@]} file(s)"
echo "First file: ${files[0]}"
echo -e "========================================="
