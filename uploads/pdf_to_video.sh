#!/bin/bash

convert *.pdf -rotate 90\< test.jpg
ffmpeg -y -r 1/6 -start_number 1 -pattern_type glob -i '*.jpg' -vcodec libx264 -crf 25 -s 1080x1280 -f flv tmp.flv
# -r 1/10 is slower than 1/3
cp -fv tmp.flv ../static
