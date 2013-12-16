#!/bin/bash

File=$HOME/while.dat

while [ ! -e $File ]; do
    :
done

echo "filen finns"

exit 0

