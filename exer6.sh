#!/bin/bash
#$1 = file input

awk -F',' '$9 ~ /DL/' $1 | awk -F',' '$15 > 0 && $15 !~ /""/' | awk -F',' '{s+=$15}END{print s}'
