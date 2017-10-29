#!/bin/bash

set ex

export token=$(swift -v stat | grep Token | sed 's/^ *Auth Token: //')
export url=$(swift -v stat | grep Storage | sed 's/^ *StorageURL: //')

swift --verbose list reference-data

swift list reference-data | \
    grep fastq.gz$ | \
    sed "s@^@$url/reference-data/@" | \
    xargs -n 1  \
    curl -X GET -H "X-Auth-Token: $token"  \
    > all.fastq.gz

fastqc -threads 4 all.fastq.gz

ls -ltr 
 
cp *.zip *.html /output/
 

