#!/bin/bash

set -x

tree .

echo 'digraph { a -> b; }' | singularity exec singularity-graphviz-2.44.0.sif dot
