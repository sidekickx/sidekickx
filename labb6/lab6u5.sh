#!/bin/bash

declare -a dev=(`df | awk '{print $6 }' | sed -n '2,$p'`)
declare -a Use=(`df | awk '{ print $5 }' | sed -n '2,$p' | sed 's/%//g'`)

for percent in ${!Use[@]}; do
    if [ ${Use[$percent]} -gt 80 ]; then
        echo -e "${dev[$percent]} \t ${Use[$percent]}%" | mail -s "disk usage" emma
    fi
done





