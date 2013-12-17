#!/bin/bash
function star {
until [ $Num -lt 0 ]; do
    printf "*"
    ((Num--))
done
}

read -p "how many stars would you like? " Num
    star
    printf "\n"
exit 0
