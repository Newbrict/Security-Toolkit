#!/bin/bash

if [ "$#" = "0" ]
then
	echo "Enter an script to run"
	exit 1
fi

# Consume the first arg
script=$1
shift

case $script in
	h2d)
		printf '%d\n' $1
	;;
	d2h)
		printf '0x%x\n' $1
	;;
	*)
		echo "Unknown script"
	;;
esac
