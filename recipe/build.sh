#! /usr/bin/bash

mkdir build-scripts
cd build-scripts

cmake $RECIPE_DIR/scripts
cd ..

./configure --prefix=$PREFIX --disable-pyext

make -j$(nproc)
make install
