#!/bin/bash

IN=$1
if [ "$IN" != "" ]; then
    OUT=bin/${IN/.hs/}
    rm $OUT
    ghc -o $OUT $IN
    ./$OUT
else
    echo "no input file was selected"
fi
rm *.hi
rm *.o
