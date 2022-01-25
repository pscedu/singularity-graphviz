#!/bin/bash

set -x
shopt -s expand_aliases

DIRECTORY=$(pwd)
alias dot='singularity exec "$DIRECTORY"/singularity-graphviz-2.44.0.sif dot'

echo 'digraph { a -> b; }' > /tmp/file.dot
dot -Tpng /tmp/file.dot -o output.png

if [ -f output.png ]; then
	exit 0
else
	exit 1
fi
