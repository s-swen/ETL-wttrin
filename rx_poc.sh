#!/bin/bash
city=Casablanca
obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -e "-?[[:digit:]]+" | head -1)
fc_temp=$(curl -s wttr.in/$city?T | grep -m 2 '°.' | cut -d 'C' -f 2 | grep -Eo -e "-?[[:digit:]]+" | head -1)