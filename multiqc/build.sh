#!/bin/bash

set ex

#export IMAGE=
#export DOCKER=

make multiqc 

cp  -r multiqc* /output 


