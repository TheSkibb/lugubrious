#!/bin/sh
file='./imageTexts.js'
video=''
while getopts 'f:s:' OPTION; do
  case "$OPTION" in
    s)
      echo "saving in animations/$OPTARG"
      file="./../animations/$OPTARG.js"
      ;;
    f)
      echo "video in $OPTARG"
      video="$OPTARG"
      ;;
    ?)
      echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"

rm -f ./images/*
ffmpeg -i $video -vf fps=4/1 images/out%d.png
./generateImages.sh $file
