#!/bin/bash
set -ex
echo $@
FILE=$1
START=$2
DURATION=$3

echo $FILE $START $DURATION
ls /data

ffmpeg -ss ${START} -i /data/${FILE} -t ${DURATION} -acodec copy -vcodec copy /tmp/output.mp4

code=$(curl --request POST --url https://api.streamable.com/upload --user $STREAMABLE_USER:$STREAMABLE_PASSWORD --form file=@"/tmp/output.mp4" | jq '.shortcode' | perl -pe 's/"//g');

echo https://streamable.com/${code}
