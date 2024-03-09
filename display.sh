#!/bin/bash

# Check if a name is provided as a command-line argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

# Retrieve the name from the command-line argument
name=$1

# Print the entered name
echo "Hello, $name! Nice to meet you."

