#!/bin/bash
#$1 = file input


uniques_airpot=($(tail -n +2 $1 | cut -d',' -f17 | sort | uniq))

echo "Processing...."
maior=0
i=1
for f in "${uniques_airpot[@]}"

do
  echo $i
  ((i=i+1))
  count=0
  while IFS="," read c_1 c_2 c_3 c_4 c_5 c_6 c_7 c_8 c_9 c_10 c_11 c_12 c_13 c_15 c_15 c_16 c_17 c_18 c_19; do

    if [[ "$f" = "$c_17" &&  "$c_16" != -* ]]; then
        ((count=count+1))
        #echo $count
    fi

  done <  <(tail -n +2 $1)
  if [[ $count -gt $maior ]]; then
    maior=$count
    aiport_code=$f
  fi

done

echo $aiport_code $maior




#rec_column1 rec_column2 rec_remaining
