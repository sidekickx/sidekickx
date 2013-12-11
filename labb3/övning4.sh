#!/bin/bash

Var=$1

if [ -b $Var ]; then
    printf "filen är en block-fil\n"

elif [ -f $Var ]; then 
    printf "filen är en vanlig fil\n"

elif [ -d $Var ]; then 
    printf "filen är en katalog\n"

elif [ -h $Var ]; then
    printf "filen är en länk\n"
else
    printf "filen är inte någon av typerna du sökte\n"
fi
