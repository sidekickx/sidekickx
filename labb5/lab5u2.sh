#!/bin/bash

read -p "mata in ett tal mellan 1 och 100 " Num

if [ $Num -lt 10 ]; then
    echo "talet är lägre än 10"
elif [ $Num -gt 100 ]; then
    echo "talet är högre än 100"

else 
    until [ $Num -eq 0 ]; do
        echo "number = $Num"
            Num=$[Num - 1]
done
fi

