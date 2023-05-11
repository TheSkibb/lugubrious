#!/bin/sh
rm -f images
touch images
echo [ >> images
for d in ./../images/*; do
 echo $d
 python3 main.py --file $d --cols 400
 echo '`' >> images
 cat ./out.txt >> images
 echo '`,' >> images
 echo ''>> images
done
echo ] >> images


