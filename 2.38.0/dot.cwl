#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
  SubworkflowFeatureRequirement: {}
  DockerRequirement:
    dockerPull: icaoberg/graphviz:2.38.0

inputs:
  inputFile:
    type: File
    inputBinding:
      position: 1

  outputImageFilename:
    type: string
    inputBinding:
      position: 2
      prefix: -o
    default: output.png

outputs:
  outputImage:
    type: File
    outputBinding:
      glob: $(inputs.outputImageFilename)

baseCommand: ['dot','-Tpng']
