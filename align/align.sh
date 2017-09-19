#!/bin/bash

if [ "$1" == "SE" ]; then
    bwa mem $2 $3 | samtools view -b | samtools sort -o $4 
elif [ "$1" == "PE" ]; then
    bwa mem $2 $3 $4 | samtools view -b | samtools sort -o $5
else
    echo "First command line in align.sh option must be either SE or PE"
    exit 1
fi
