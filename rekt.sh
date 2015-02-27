#!/bin/bash

if [ "$#" = "0" ]
then
	echo "Enter an script to run"
	exit 1
fi

# Determine relative directory
dir=$(dirname $0)

# Consume the first arg
script=$1
shift

case $script in
	# Hex to Decimal
	h2d)
		printf '%d\n' $1
	;;
	# Decimal to Hex
	d2h)
		printf '0x%x\n' $1
	;;
	str2asm)
		python $dir/tools/str2asm.py $1
	;;
	help)
		cat $dir/help.txt
	;;
	*)
		echo "Unknown script"
	;;
esac
