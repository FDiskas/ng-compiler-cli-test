#!/bin/bash

set SOURCE="node_modules/@angular/tsc-wrapped"
set DESTINATION="node_modules/@angular/compiler-cli/node_modules/"

if [[ ! -e $SOURCE ]]; then
  rm node_modules -rf
  npm i
fi

rm -rf $DESTINATION/**/*
cp -r $SOURCE $DESTINATION

echo "Done injecting the tsc-wrapped-builds into the compiler-cli"
