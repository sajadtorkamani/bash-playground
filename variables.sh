#!/bin/bash

# ------------------------------------------------------------------------------
# Simple variables
# ------------------------------------------------------------------------------

# Define variable
MY_NAME="sajad"

# Use variable
echo "Hello, my name is $MY_NAME"

# ------------------------------------------------------------------------------
# Use variable in string
# ------------------------------------------------------------------------------
MY_SHELL="bash"

# If you want to immediately precede or follow the variable with additional
# data, you can enclose it braces like this:
echo "I am ${MY_SHELL}ing on my keyboard"

# ------------------------------------------------------------------------------
# Use the output of a command in a variable
# ------------------------------------------------------------------------------
SERVER_NAME=$(hostname)
echo "You're running this script on ${SERVER_NAME}"
