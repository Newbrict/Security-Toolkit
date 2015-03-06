#!/bin/bash

if [ "$#" = "0" ]
then
	echo "Enter an script to run"
	exit 1
fi

# Determine relative directory
dir=$(dirname $0)
tools="$dir/tools"

# Consume the first arg
script=$1
shift

case $script in
	# Hex to Decimal
	h2d)
		python $tools/h2d.py "$1"
	;;
	# Decimal to Hex
	d2h)
		python $tools/d2h.py "$1"
	;;
	str2asm)
		python $tools/str2asm.py "$1"
	;;
	hex2str)
		python $tools/hex2str.py "$1"
	;;
	bin2shell)
		for i in $(objdump -d $1 -M intel |grep "^ " |cut -f2)
		do
			echo -n '\x'$i
		done
		echo
	;;
	help)
		cat $dir/help.txt
	;;
	*)
		echo "Unknown script"
	;;
esac
