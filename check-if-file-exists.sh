#!/bin/bash

FILE=/etc/shadow

if [ -e $FILE ]
then
  echo "The file $FILE exists"
else
  echo "The file $FILE doesn't exist"
fi