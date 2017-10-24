#!/bin/bash

set ex

swift --verbose list reference-data

( for f in $(swift  list reference-data | grep fastq.gz$); do
    swift download reference-data $f -o -
done ) | zcat | fastqc stdin

ls -ltr 
 
cp *.zip *.html /output/
 

