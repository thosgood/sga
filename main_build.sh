#!/usr/bin/env bash

[ -d "build" ] && rm -r build
mkdir -p build

cp README.md build/index.md
cp _config.yml build/
cp -R assets build/

# make this loop cleverer
for NUM in 1 6; do
  [ -d "sga-$NUM" ] &&
  cp {_output.yml,assets/scripts.html,assets/style.css} sga-$NUM/ &&
  cd sga-$NUM &&
  ./build.R &&
  mv build ../build/sga-$NUM &&
  cd -
done
