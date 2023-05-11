#!/bin/sh
rm -f imageTexts.js
touch imageTexts.js
echo 'export var frames' = >> imageTexts
echo [ >> imageTexts.js
for d in ./images/*; do
  echo $d
  python3 main.py --file $d --cols 300
  echo '`' >> imageTexts.js
  cat ./out.txt >> imageTexts.js
  echo '`,' >> imageTexts.js
  echo ''>> imageTexts.js
done
echo ] >> imageTexts.js


