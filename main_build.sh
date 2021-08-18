#!/usr/bin/env bash

[ -d "build" ] && rm -r build
mkdir -p build

cp README.md build/index.md
cp _config.yml build/
cp -R assets build/

cp _output.yml SGA-1/
cp _output.yml SGA-6/

cd SGA-1 && ./build.R && mv build ../build/SGA-1 && cd -
cd SGA-6 && ./build.R && mv build ../build/SGA-6 && cd -
