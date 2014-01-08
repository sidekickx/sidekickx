#!/bin/bash
 
ls -l | sed '{
s/^d/En katalog->/
s/^l/En länk->/
}'


