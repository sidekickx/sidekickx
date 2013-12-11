#!/bin/bash

read -p "skriv ett tal mellan 1 och 10 " Tal

if [ "$Tal" -le 10 -a "$Tal" -ge 1 ]; then 
    printf "bra\n"


else 
    printf "kan du inte läsa\n"

fi
