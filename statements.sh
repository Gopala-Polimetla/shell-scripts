#!/bin/bash

# This Script demonstrates the case statement.

if [[ "${1}" = 'start' ]]
then
	echo 'starting'
elif [[ "${1}" = 'stop' ]]
then
	echo 'Stopping'
elif [[ "${1}" = 'status' ]]
then
	echo 'Status:'
else
	echo 'Supply a Valid Option.' >&2
	exit 1
fi
