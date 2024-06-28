#!/bin/bash

# Download the file

export DOWNLOAD_URL="$DOWNLOAD_URL"

mkdir -p /tmp/inputs
mkdir -p /tmp/outputs

wget -O /tmp/inputs/file $DOWNLOAD_URL
ffmpeg -i /tmp/inputs/file -vf scale=320:240 /tmp/outputs/output.mp4

exec /bin/bash