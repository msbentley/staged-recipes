#!/bin/bash
sed -e "s|LAPACK=-llapack|LAPACK=-L $PREFIX/lib -llapack|g" src/Makefile.g95 > src/Makefile.g95
cd src
make atomsk
cp atomsk $PREFIX/bin/atomsk
