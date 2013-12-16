#!/bin/bash
read -p "mata in ett tal mellan 1 och 100 " Num
until [ $Num -eq 0 ]; do
    echo "number = $Num"
    Num=$[Num - 1]
done
