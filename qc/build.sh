#!/bin/bash

set ex

export token=$(swift -v stat | grep Token | sed 's/^ *Auth Token: //')
export url=$(swift -v stat | grep Storage | sed 's/^ *StorageURL: //')

swift --verbose list reference-data

( for f in $(swift  list reference-data | grep fastq.gz$); do
    curl -X GET -H "X-Auth-Token: $token" $url/reference-data/$f
done ) | gunzip -c | fastqc -threads 4 stdin

ls -ltr 
 
cp *.zip *.html /output/
 

