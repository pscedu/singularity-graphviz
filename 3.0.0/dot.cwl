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
  zarr_image:
    type: Directory
    outputBinding:
      glob: $(inputs.outputDirectory)

baseCommand: ['bioformats2raw']
stdout: bioformats2raw.out
