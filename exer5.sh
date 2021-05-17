#!/bin/bash

### Conta quantos vôos precisam ser redirecionados (Diverted)

tail -n +2 $1 | awk -F, '$24 == 1' | wc -l

