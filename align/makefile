## Docker image
IMAGE ?= docker.dragonfly.co.nz/gbs-pipelines/bwa:fa418f8
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

REF ?= MT.fa 
INDEX ?= MT.fa
FASTQ1 ?= test.fq
FASTQ2 ?= 
OUTPUT ?= test.sam
BAM ?= test.bam

BWAIND := bwa index 
BWAMEM := ./align.sh 

index:
	$(DOCKER) $(IMAGE) $(BWAIND) $(REF)

aligns:
	$(DOCKER) $(IMAGE) $(BWAMEM) SE $(INDEX) $(FASTQ1) $(BAM)  

alignp:
	$(DOCKER) $(IMAGE) $(BWAMEM) PE $(INDEX) $(FASTQ1) $(FASTQ2) $(BAM)

test: index aligns

interact:
	$(DOCKER) -it $(IMAGE) bash

docker:
	docker build -t $(IMAGE) .

clean:
	rm -f MT.fa.* *.sam *.bam
