#!/bin/sh
#
# $Id: test.sh 5359 2014-01-23 00:33:57Z max $ $Date: 2014-01-22 16:33:57 -0800 (Wed, 22 Jan 2014) $

if [ $# = 1 ]
then
    PYTHON="$1"
else
    PYTHON=python
fi

EMPY=em.py
SAMPLE=sample.em
BENCH=sample.bench

if $PYTHON -c 'import sys; print(sys.version)' > /dev/null
then
    :
else
    echo "EmPy was not checked; $PYTHON looks broken." 1>&2
    exit 1
fi

if $PYTHON $EMPY $SAMPLE | diff $BENCH -
then
    echo "EmPy checks out." 1>&2
else
    echo "EmPy does not check out!  Please mail output to author." 1>&2
fi
