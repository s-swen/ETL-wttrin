#!/bin/bash
city=Casablanca
curl -s wttr.in/$city?T | grep -m 1 '°.'