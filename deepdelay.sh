#!/bin/bash

### Mostra o vôo com maior atraso de saída (DepDelay)

tail -n +2 $1 | sort -n -t"," -k16 | tail -1

