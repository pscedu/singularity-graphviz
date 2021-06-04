#!/bin/bash

set -x

cat << EOF > file.dot 
digraph D {

  A [shape=diamond]
  B [shape=box]
  C [shape=circle]

  A -> B [style=dashed, color=grey]
  A -> C [color="black:invis:black"]
  A -> D [penwidth=5, arrowhead=none]

}
EOF

INPUT=file.dot
OUTPUT=truth1.png

ls -lta

chown 1001:116 file.dot
chown 1001:166 singularity-graphviz-2.44.0.sif

singularity exec singularity-graphviz-2.44.0.sif dot -Tpng "$INPUT" -o "$OUTPUT"

if [ -f $OUTPUT ]; then
        file $OUTPUT
	exit 0
else
	exit 1
fi
