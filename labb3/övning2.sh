#!/bin/bash 

if [ -e ./recept.txt ]; then
    echo "filen finns"
else 
    echo "filen finns inte"
    exit 0
fi

if [ -w ./recept.txt ]; then 
        echo "filen är skrivbar "
fi
if [ -r ./recept.txt ]; then
    echo "filen är läsbar"
fi
exit 0
