#!/bin/bash

INPUT=data/file.dot
OUTPUT=data/truth1.png

alias dot='singularity exec singularity-graphviz-2.44.0.sif dot'
dot -Tpng $INPUT -o $OUTPUT

if [ -f $OUTPUT ]; then
        file $OUTPUT
	exit 0
else
	exit 1
fi
