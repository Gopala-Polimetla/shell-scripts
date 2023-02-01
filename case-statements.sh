#!/bin/bash

# This script will demonstarte the case statements
case "${1}" in
	start)
		echo 'Starting'
		;;
	stop)
		echo 'Stopping.'
		;;
	status|state|--state|--status)
		echo 'Status:'
		;;
	*)
		echo 'Supply a valid Option.' >&2
		exit 1
		;;
esac
