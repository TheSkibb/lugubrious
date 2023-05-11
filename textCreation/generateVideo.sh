#!/bin/sh
#rm -f imageTexts
#touch imageTexts
#echo [ >> imageTexts
#for d in ./images/*; do
 #echo $d
 #python3 main.py --file $d --cols 100
 #echo '`' >> imageTexts
 #cat ./out.txt >> imageTexts
 #echo '`,' >> imageTexts
 #echo ''>> imageTexts
#done
#echo ] >> imageTexts

rm -f ./images/*
#python3 converter.py
ffmpeg -i video/ohioboys.mp4 -vf fps=4/1 images/out%d.png
./generateImages.sh
