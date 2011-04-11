#!/bin/sh

autoreconf configure.ac
automake --add-missing --copy
if [ $# -gt 0 ] ; then
  ./configure --prefix $1
else
./configure
fi
make
