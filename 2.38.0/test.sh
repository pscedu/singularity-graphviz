#!/bin/bash

set -x

shopt -s expand_aliases

DIRECTORY=$(pwd)
alias dot='singularity exec "$DIRECTORY"/singularity-graphviz-2.38.0.sif dot'

echo 'digraph { a -> b; }' | dot
