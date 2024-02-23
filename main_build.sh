#!/usr/bin/env bash

[ -d "build" ] && rm -r build
mkdir -p build

cp README.md build/index.md
cp _config.yml build/
cp -R assets build/
cp -R _layouts build/

# TO-DO: make this loop cleverer (use a regex or something)
for NUM in 1 6; do
  [ -d "sga-$NUM" ] &&
  cp {assets/_output.yml,assets/scripts.html,assets/style.css} sga-$NUM/ &&
  cd sga-$NUM &&
  ./build.R &&
  mv build ../build/sga-$NUM &&
  cd -
done
