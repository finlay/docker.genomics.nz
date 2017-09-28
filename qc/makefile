## Docker image
IMAGE ?= docker.genomics.nz/gbs-pipelines/fastqc:374511d
DOCKER ?= /bin/docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

FASTQ ?= test.fq
FASTQC ?= fastqc

test: 
	$(DOCKER) $(IMAGE) $(FASTQC) $(FASTQ)

fastqc:
	$(DOCKER) $(IMAGE) $(FASTQC) $(FASTQ)

interact:
	$(DOCKER) -it $(IMAGE) bash

docker:
	docker build -t $(IMAGE) .

clean:
	rm -f *.html *.zip

