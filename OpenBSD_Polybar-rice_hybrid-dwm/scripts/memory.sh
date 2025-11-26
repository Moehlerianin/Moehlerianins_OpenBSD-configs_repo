#!/bin/sh
TOTAL=$(sysctl -n hw.physmem)
FREE=$(vmstat -s | grep 'free pages' | awk '{print $1 * 4096}')
USED=$((TOTAL - FREE))
PERCENT=$((USED * 100 / TOTAL))
echo "RAM $PERCENT%"
