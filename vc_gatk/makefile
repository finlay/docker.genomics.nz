## Docker image
IMAGE ?= docker.genomics.nz/gbs-pipelines/vc_gatk:v3.8
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work


interact:
	$(DOCKER) -it $(IMAGE) bash

docker:
	docker build -t $(IMAGE) .

push:
	docker push $(IMAGE)


