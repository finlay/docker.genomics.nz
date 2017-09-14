## Docker image
IMAGE ?= docker.dragonfly.co.nz/gbs-pipelines/tassel5
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

CHECKOUT ?= /opt/tassel5
CLASSPATH := $(CHECKOUT)/sTASSEL.jar:$(CHECKOUT)/*
JAVA := java -classpath $(CLASSPATH) -Xms512m -Xmx1536m net.maizegenetics.pipeline.TasselPipeline

all:
	$(DOCKER) $(IMAGE) $(JAVA) \
		-fork1 -h $(CHECKOUT)/TASSELTutorialData/data/mdp_genotype.hmp.txt \
				-filterAlign -filterAlignMinFreq 0.05 \
		-fork2 -r $(CHECKOUT)/TASSELTutorialData/data/mdp_traits.txt \
		-fork3 -r $(CHECKOUT)/TASSELTutorialData/data/mdp_population_structure.txt \
		        -excludeLastTrait \
		-combine5 -input1 -input2 -input3 -intersect -glm -export glm_output_tutorial


interact:
	$(DOCKER) -it $(IMAGE) bash


docker:
	docker build -t $(IMAGE) .
