## Docker image
IMAGE ?= docker.dragonfly.co.nz/gbs-pipelines/align
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

interact:
	$(DOCKER) -it $(IMAGE) bash


docker:
	docker build -t $(IMAGE) .
