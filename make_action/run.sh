#!/bin/bash

# -e: Exit script immediately if any command returns a non-zero exit status.
# -x: Expand and print each command before executing
set -ex 

# Check if the makefile exists
if [ ! -f "$MAKEFILE" ]; then
  echo "$MAKEFILE not found! Exiting. . ."
  exit 1
fi

make -f "$MAKEFILE" "$COMMAND"
