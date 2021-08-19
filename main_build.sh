#!/usr/bin/env bash

[ -d "build" ] && rm -r build
mkdir -p build

cp README.md build/index.md
cp _config.yml build/
cp -R assets build/

for num in 1 2 6
do
  cp {_output.yml,assets/scripts.html,assets/style.css} SGA-$num/ &&
  cd SGA-$num &&
  ./build.R &&
  mv build ../build/SGA-$num &&
  cd -
done
