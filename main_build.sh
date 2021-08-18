#!/usr/bin/env bash

rm -r build/*
cd SGA-1 && ./build.R && mv build ../build/SGA-1 && cd -
cd SGA-6 && ./build.R && mv build ../build/SGA-6 && cd -
