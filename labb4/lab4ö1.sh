#!/bin/bash

read -p "mata in tal 1: " Tal1
read -p "mata in tal 2: " Tal2

let add="$Tal1+$Tal2"
printf "$Tal1 + $Tal2 = $add\n"
let sub="$Tal1-$Tal2"
printf "$Tal1 - $Tal2 = $sub\n"
let mult="$Tal1*$Tal2"
printf "$Tal1 * $Tal2 = $mult\n" 
let div="$Tal1/$Tal2"
let rest="$Tal1%$Tal2"
printf "$Tal1 / $Tal2 = $div,$rest\n"

