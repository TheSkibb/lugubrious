#!/bin/sh
rm -f imageTexts
touch imageTexts
echo [ >> imageTexts
for d in ./images/*; do
 echo $d
 python3 main.py --file $d --cols 100
 echo '`' >> imageTexts
 cat ./out.txt >> imageTexts
 echo '`,' >> imageTexts
 echo ''>> imageTexts
done
echo ] >> imageTexts


