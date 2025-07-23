#!/bin/bash

set -x

shopt -s expand_aliases

DIRECTORY=$(pwd)
alias dot='./singularity-graphviz-13.1.0.sif'

echo 'digraph { a -> b; }' | dot
