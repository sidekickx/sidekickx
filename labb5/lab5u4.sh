#!/bin/bash

File=`cat $HOME/betyg.txt`

for i in $File; do
    Sum=$(($Sum+$i))  
done

if [ $Sum -lt 48 -a $Sum -gt 30 ]; then
    echo "betyget är g"

elif [ $Sum -gt 48 ]; then
    echo "betyget är vg"
else
    echo "betyget är ig"
fi
exit 0
