#!/bin/bash
city=Casablanca
obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -e "-?[[:digit:]]+" | head -1)
fc_temp=$(curl -s wttr.in/$city?T | grep -m 2 '°.' | cut -d 'C' -f 2 | grep -Eo -e "-?[[:digit:]]+" | head -1)
hour=$(TZ='Morocco/Casablanca' date -u +%H)
day=$(TZ='Morocco/Casablanca' date -u +%d)
month=$(TZ='Morocco/Casablanca' date +%m)
year=$(TZ='Morocco/Casablanca' date +%Y)

record=$(echo -e "$year\t$month\t$day\t$hour\t$obs_temp\t$fc_temp C")
echo $record >> rx_poc.log