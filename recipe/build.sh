#!/bin/sh

export CC=${PREFIX}/bin/gcc
export CXXFLAGS="-fPIC $CXXFLAGS"
export LDFLAGS="-L${PREFIX}/lib $LDFLAGS"
export CPPFLAGS="-I${PREFIX}/include $CPPFLAGS"
export CFLAGS="-I${PREFIX}/include $CFLAGS"
export HAS_CAIRO=1
export F2CLIBS=gfortran
export PNG_PREFIX=${PREFIX}
export NCARG_ROOT=${PREFIX}

cd src
python setup.py install
