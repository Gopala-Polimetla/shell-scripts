#!/bin/bash

# This scripts generates a list of random passwords.

# A random number as a password
PASSWORD="${RANDOM}"
echo "$PASSWORD"

# Three random passwords together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "$PASSWORD"

# Use the current date/time as the basis for the password.
PASSWORD=$(date +%s)
echo "$PASSWORD"

# Use the nanoseconds to act as randomization.
PASSWORD=$(date +%s%N)
echo "$PASSWORD"