#!/bin/sh
file=$1
echo '********'
echo $file
rm -f $file
touch $file
echo 'export var frames' = >> $file
echo [ >> $file
for d in ./images/*; do
  echo $d
  python3 main.py --file $d --cols 300
  echo '`' >> $file
  cat ./out.txt >> $file
  echo '`,' >> $file
  echo ''>> $file
done
echo ] >> $file


