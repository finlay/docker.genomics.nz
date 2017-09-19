#!/bin/bash

set ex

export KEY=aZFQAG4knLJCLDs

curl -o $KEY.tgz https://elshiregroup.dattodrive.com/index.php/s/$KEY/download
tar xfvz $KEY.tgz

mkdir fastqc
fastqc --extract -o fastqc  GBS/Chr9_10-20000000/C05F2ACXX_5_fastq.gz GBS/Chr9_10-20000000/C08L7ACXX_6_fastq.gz


cp fastqc/*.zip /output/
