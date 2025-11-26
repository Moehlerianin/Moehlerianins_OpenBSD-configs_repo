#!/bin/sh
CPU=$(vmstat 1 2 | tail -1 | awk '{print 100 - $NF "%"}')
echo "CPU $CPU"
