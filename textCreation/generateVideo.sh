#!/bin/sh
file='./imageTexts.js'
while getopts 's:' OPTION; do
  case "$OPTION" in
    s)
      echo "saving in animations/$OPTARG"
      file="./../animations/$OPTARG.js"
      ;;
    ?)
      echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"

rm -f ./images/*
ffmpeg -i video/ohioboys.mp4 -vf fps=4/1 images/out%d.png
./generateImages.sh $file
