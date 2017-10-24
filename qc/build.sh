#!/bin/bash

set ex

swift --verbose download reference-data

ls -ltr

zcat *fastq.gz | fastqc stdin

ls -ltr 
 
cp *.zip *.html /output/
 

