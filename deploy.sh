#!/bin/sh
gulp clean
gulp build
cd .tmp
git clone git@github.com:schliflo/schliflo.github.io.git
cd schliflo.github.io
git checkout master
cp -r ../../dist/* .
git commit -am "update site"
git push
git checkout src
