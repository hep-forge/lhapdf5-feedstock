#! /usr/bin/bash

mkdir build-scripts
cd build-scripts

cmake $RECIPE_DIR/scripts
cd ..

./configure --prefix=$PREFIX --disable-pyext FC=gfortran CC=gcc FCFLAGS="-O2 -std=legacy" CFLAGS="-O2"

make -j$(nproc)
make install
