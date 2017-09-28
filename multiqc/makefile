## Docker image
IMAGE ?= docker.genomics.nz/gbs-pipelines/multiqc:374511d
DOCKER ?= /bin/docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

MULTIQC := multiqc -f  .

multiqc:
	$(DOCKER) $(IMAGE) $(MULTIQC) 

test: multiqc 

interact:
	$(DOCKER) -it $(IMAGE) bash

docker:
	/bin/docker build -t $(IMAGE) .

clean:
	rm -rf multiqc_data multiqc_report.html 

