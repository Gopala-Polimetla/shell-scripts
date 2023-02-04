#!/bin/bash

# This scripts generates a list of random passwords.
# This is comment fdgs

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

# A better password.
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "$PASSWORD"

# Even a better password.
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

# Append a special character to the password.
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+=-' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
