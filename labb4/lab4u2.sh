#!/bin/bash
Dollarkurs=7

read -p "vill du konvertera från kronor eller dollar? k/d " Kon_vad 

if [ $Kon_vad = k ]; then 
    read -p "hur många kronor? " Kr
        let Dollar=$Kr/$Dollarkurs;
    printf "$Kr kronor är $Dollar dollar\n"

elif [ $Kon_vad = d ]; then 
    read -p "hur många dollar? " Us
     let Kronor=$Us*$Dollarkurs;
         printf "$Us dollar är $Kronor kronor\n"
else 
    printf "du har inte valt något av alternativen\n"
fi




