#!/bin/bash
city=Casablanca
curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -e "-?[[:digit:]]." | head -1