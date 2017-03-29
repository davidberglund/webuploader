#!/bin/bash

cd uploads
convert *.pdf -rotate 90\< test.jpg
ffmpeg -y -r 1/4 -start_number 0 -pattern_type glob -i '*.jpg' -vcodec libx264 -crf 30 -s 1080x1280 -f flv tmp.flv
# -r 1/2
cp -fv tmp.flv ../static
