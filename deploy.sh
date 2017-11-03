#!/bin/sh
gulp build
cd .tmp
git clone git@github.com:schliflo/schliflo.github.io.git
cd schliflo.github.io
git checkout master
rm -rf *
touch CNAME
echo 'schliflo.de' > CNAME
cp -r ../../dist/* .
git add -A
git commit -m "update site"
git push
cd ../../
