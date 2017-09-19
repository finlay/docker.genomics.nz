## Docker image
IMAGE ?= docker.dragonfly.co.nz/gbs-pipelines/axe:v1
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

all:
	axe-demux --help


interact:
	$(DOCKER) -it $(IMAGE) bash

docker:
	docker build -t $(IMAGE) .


