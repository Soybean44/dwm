#!/bin/sh

while :; do
  xsetroot -name "$(date +'%I:%M%p')"
  sleep $((60 - $(date +%s) % 60))
done
