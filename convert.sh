#!/bin/sh

DIR=$(dirname "$0")/output

FILE=$DIR/x.png

mkdir -p $DIR

rm -fr $FILE

osascript -e "get the clipboard as «class PNGf»" | sed "s/«data PNGf//; s/»//" | xxd -r -p > $FILE

# brew install imagemagick  
convert $FILE -resize 50% $FILE

open $DIR