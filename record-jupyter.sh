#!/bin/bash


today=$(date +%Y%m%d-%H%M)
wmctrl -e 0,1152,28,1960,1190 -r JupyterLab
sleep 1s

## Options
frameRate=25	# FPS
audioQuality=10	# Opus Qual - Bad 0 <> 10 Good

currentRes=':0.0+1160,150'

ffmpeg -loglevel 16 -threads 4 -probesize 10M \
    -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+1170,116 \
    -f pulse -ac 2 -i default \
    -c:v libx264rgb -crf 0 -preset ultrafast -color_range 2 \
    -c:a libopus \
    video-${today}.mkv
