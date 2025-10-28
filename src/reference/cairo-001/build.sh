#!/bin/bash

set -e
set -x

CC=clang
SDL=`pkg-config --cflags --libs sdl2`
GUILE=`pkg-config --cflags --libs guile-3.0`
CAIRO=`pkg-config --cflags --libs cairo`

${CC} -o demo ${SDL} ${CAIRO} demo.c

