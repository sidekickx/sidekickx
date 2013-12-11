#!/bin/bash
Color="röd"
read -t 5 -p "vilken är din favoritfärg? " Color
Color=${Color:="röd"}
echo -e "\nDin favoritfärg är $Color"
exit 0
