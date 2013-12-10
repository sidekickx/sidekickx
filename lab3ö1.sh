#!/bin/bash

read -p "skriv ett tal " x
read -p "skriv ett tal till " y

if [ $x -eq $y ]; then
    echo "$x är lika med $y"
else 
    echo "$x är inte lika med $y"
fi
if [ $x -lt $y ]; then 
    echo "$x är mindre än $y"
elif [ $x -gt $y ]; then 
    echo "$x är större än $y"
else
    echo ""
fi
exit 0

