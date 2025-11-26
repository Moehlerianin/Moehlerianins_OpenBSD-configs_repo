#!/bin/sh
# Battery for Polybar on OpenBSD (apm)
PERCENT=$(apm -l)
STATUS=$(apm -a)
if [ "$STATUS" -eq 1 ]; then
  echo "Charging $PERCENT%"
elif [ "$STATUS" -eq 2 ]; then
  echo "AC $PERCENT%"
elif [ "$STATUS" -eq 3 ]; then
  echo "Full"
else
  echo "Discharging $PERCENT%"
fi
