#!/bin/bash

funcAdd() {
    Sum=$((Tal1 + Tal2)) 
        echo $Sum
    }
funcSub() {
    Diff=$((Tal1 - Tal2))
        echo $Diff
    }
funcDiv(){ 
    Kvo=$(echo "scale=2;$Tal1/$Tal2" | bc)   
    echo  $Kvo
    }
funcMul() {
    Pro=$(echo "scale=2; $Tal1*$Tal2" | bc)
        echo $Pro
    }
    
echo "choose 1-4 " 

Options=( "+" "-" "/" "*" )

select Opt in "${Options[@]}"
do
    read -p "write 2 numbers " Tal1 Tal2
    case $Opt in
       
        +) 
            funcAdd
            ;;
        -)
            funcSub
            ;;
        /)
            funcDiv
            ;;
        *)
            funcMul
            ;;
    esac

    break
done
exit 0
