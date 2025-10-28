#!/bin/bash

echo "running cairo tests"

cd "$DEVELOPER/demos"
echo "current directory is ${pwd}"
LTDL_LIBRARY_PATH=../pixelformat guile -L ../ -c '(begin (load "cairo.scm")(cairo))'


