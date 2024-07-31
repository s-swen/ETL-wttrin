#!/bin/bash
echo $(tail -7 synthetic_historical_fc_accuracy.tsv | cut -f6) > scratch.txt
week_fc=($(echo $(cat scratch.txt)))

for i in {0..6}; do
    echo ${week_fc[$i]}
done

for i in {0..6}; do
    if [ ${week_fc[$i]} -lt 0 ]
    then
        week_fc[$i]=$(((-1)*week_fc[$i]))
    fi
    echo ${week_fc[$i]}
done

min=${week_fc[0]}
max=${week_fc[0]}
for item in ${week_fc[@]}; do
    if [[ $min > $item ]]
    then 
        min=$item
    fi
    if [[ $max < $item ]]
    then
        max=$item
    fi
done

echo "Min=${min}"
echo "max=${max}"