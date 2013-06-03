#!/bin/bash

IN=$1
if [ "$IN" != "" ]; then
	OUT=bin/${IN/.hs/}
	
	if [ -f $OUT ]; then
		rm $OUT
	fi

	# -package haskell98
	ghc -threaded -o $OUT $IN

	i=0
	for arg in "$@"
	do
		if [ "$i" -gt 0 ]; then
			OUT=$OUT" "$arg
		fi
		i=$[i+1]
	done
	if [ -f $OUT ]; then
		echo "running: "$OUT
		./$OUT
	fi

else
	echo "no input file was selected"
fi

rm -f *.hi
rm -f *.o

