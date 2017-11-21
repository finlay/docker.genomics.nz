#!/bin/bash

set ex

export IMAGE=
export DOCKER=

make index
make aligns

cp *.bam /output/


