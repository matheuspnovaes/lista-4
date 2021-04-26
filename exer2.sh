#!/bin/bash

tail -n +2 $1 | sort -n -t"," -k15 | tail -1
