#!/bin/bash

#$1 = data file
#$2 = carrier name

tail -n +2 $1 | grep  $2 | awk -F, '$15 !~/^0/ && $15 > 0.0 || $16 !~/^0/ && $16 > 0.0'| wc -l

