#!/bin/bash

SOURCE="node_modules/@angular/tsc-wrapped"
DESTINATION="node_modules/@angular/compiler-cli/node_modules/"

if [[ ! -e $SOURCE ]]; then
  rm node_modules -rf
  npm i
fi

rm -rf $DESTINATION/**/*
cp $SOURCE $DESTINATION -r

echo "Done injecting the tsc-wrapped-builds into the compiler-cli"