#!/usr/bin/env bash

mkdir -p build
rm -r build/*
cp -R assets build/assets
cd SGA-1 && ./build.R && mv build ../build/SGA-1 && cd -
cd SGA-6 && ./build.R && mv build ../build/SGA-6 && cd -
cp README.md build/index.md
