#!/bin/bash

MY_SHELL="csxuh"

if [ "$MY_SHELL" = "bash" ]
then
  echo "You're using the bash shell"
elif [ "$MY_SHELL" = "csh" ]
then
  echo "You're using the csh shell"
else
  echo "You're using something other that bash or csh"
fi