#!/bin/bash

set -x

shopt -s expand_aliases

DIRECTORY=$(pwd)
alias dot='./singularity-graphviz-13.1.0.sif dot'

echo 'digraph { a -> b; }' | dot
