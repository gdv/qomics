#!/bin/bash


today=$(date +%Y%m%d-%H%M)

## Options
audioQuality=10	# Opus Qual - Bad 0 <> 10 Good


ffmpeg -loglevel 16 -threads 4 -probesize 10M \
    -f pulse -ac 2 -i default \
    -c:a libopus \
    audio-${today}.mkv
