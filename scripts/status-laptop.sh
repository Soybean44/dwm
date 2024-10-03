#!/bin/sh

while :; do
  BAT=$(cat /sys/class/power_supply/BAT1/capacity)
  xsetroot -name "$(date +'%I:%M%p') | $BAT%"
  sleep $((60 - $(date +%s) % 60))
done
