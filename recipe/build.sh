#! /usr/bin/bash

mkdir build-scripts
cd build-scripts

cmake $RECIPE_DIR/scripts
cd ..

./configure --prefix=$PREFIX --disable-pyext FCFLAGS="-O2 -std=legacy" CFLAGS="-O2"

make -j$(nproc)
make install

mv $PREFIX/bin/lhapdf-config $PREFIX/bin/lhapdf5-config
mv $PREFIX/include/LHAPDF/LHAPDF.h $PREFIX/include/LHAPDF/LHAPDF5.h
mv $PREFIX/lib/libLHAPDF.a $PREFIX/lib/libLHAPDF5.a
mv $PREFIX/lib/libLHAPDF.so $PREFIX/lib/libLHAPDF5.so
