cwlVersion: v1.2
class: CommandLineTool

requirements:
  SubworkflowFeatureRequirement: {}
  DockerRequirement:
    dockerPull: icaoberg/graphviz:3.0.0

inputs:
  inputFile:
    type: File
    inputBinding:
      position: 1
      prefix: -Tpng

  outputImage:
    type: File
    inputBinding:
      position: 2
      prefix: -o
    default: output.png

outputs:
  outputImage:
    type: File
    outputBinding:
      glob: $(inputs.outputImage)

baseCommand: ['dot']
