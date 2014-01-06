#!/bin/bash

funcAdd(){
    Sum=$(($Tal1 + $Tal2))
    return $Sum
}

funcSub(){
    Diff=$(($Tal1 - $Tal2))
    return $Diff
} 
funcMul(){
    Pro=$(($Tal1 * $Tal2))
    return $Pro
} 
funcDiv(){
    Kv=$(($Tal1 / $Tal2))
    return $Kv
} 

read -p "write two numbers " Tal1 Tal2
    
    funcAdd
    echo "summan is $? "
    funcSub
    echo "differens is $? "
    funcMul
    echo "produkt is $? "
    funcDiv
    echo "kvot is $? "

