#!/bin/bash

### Mostra o tempo total de atrasos para decolagem no JFK

awk -F, '$17 ~ /JFK/' $1 | awk -F, '$16 > 0.0' | awk -F, '{sum+=$16} END {print sum" min"}'

