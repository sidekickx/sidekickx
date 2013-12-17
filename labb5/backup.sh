#!/bin/bash

Now=$(date +"%m-%d-%Y-%H.%M")
Zip=" tar -czpf $HOME/katalog/$Now.tar.gz "
To="$HOME"

read -p "which directory do you want to backup? " Arg

if [ ! -r $To ] && [ ! -w $To ]; then
    echo "the backup point is not write- or readable"
fi
if [ -r $Arg ] && [ -w $Arg ]; then
    
    `$Zip $Arg`
else 
    echo "the directory is not read -or writeable"
fi

exit 0 
