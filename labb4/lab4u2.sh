#!/bin/bash
Dollarkurs=6.5

read -p "vill du konvertera från kronor eller dollar? k/d " Kon_vad 

if [ $Kon_vad = k ]; then 
    read -p "hur många kronor? " Kr
        Dollar=$( echo "scale=3;$Kr / $Dollarkurs" | bc )
    printf "$Kr kronor är $Dollar dollar\n"

elif [ $Kon_vad = d ]; then 
    read -p "hur många dollar? " Us
        Kronor=$( echo "$Us * $Dollarkurs" | bc )
    printf "$Us dollar är $Kronor kronor\n"
else 
    printf "du har inte valt något av alternativen\n"
fi




