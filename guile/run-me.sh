#!/bin/bash

# in this implementation the SDL2 foreign function interface has a
# dynamically loaded helper library called pixelformat
# LTDL_LIBRARY_PATH=pixelformat
#
# guile == starts guile scheme
# -L ./  means add the current directory to the load path , so guile can find macros
# so guile can find the bespoke guile scheme graphics libraries
#
#
#


LTDL_LIBRARY_PATH=pixelformat guile -L ./ -c '(begin (load "demos/game1.scm") (demo))'
