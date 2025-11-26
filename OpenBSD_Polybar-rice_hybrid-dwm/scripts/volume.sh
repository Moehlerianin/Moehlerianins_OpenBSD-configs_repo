#!/bin/sh
# Volume for Polybar on OpenBSD sndio (mixerctl)
VOL=$(mixerctl controls.volume | cut -d= -f2 | cut -d, -f1)
echo "Vol $VOL%"
