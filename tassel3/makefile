## Docker image
IMAGE ?= docker.genomics.nz/gbs-pipelines/tassel3:v1
DOCKER ?= docker run --rm --user=$$(id -u):$$(id -g) -v $$(pwd):/work -w /work

CHECKOUT ?= /opt/tassel3
CLASSPATH := $(CHECKOUT)/sTASSEL.jar:$(CHECKOUT)/*

TASSEL3_PATH=/opt/tassel-tassel3-standalone/
TASSEL3 := $(TASSEL3_PATH)/run_pipeline.pl -Xms512m -Xmx1536m 

test:
	$(DOCKER) $(IMAGE) $(TASSEL3) \
		-fork1 -h $(CHECKOUT)/TASSELTutorialData/data/mdp_genotype.hmp.txt \
				-filterAlign -filterAlignMinFreq 0.05 \
		-fork2 -r $(CHECKOUT)/TASSELTutorialData/data/mdp_traits.txt \
		-fork3 -r $(CHECKOUT)/TASSELTutorialData/data/mdp_population_structure.txt \
		        -excludeLastTrait \
		-combine5 -input1 -input2 -input3 -intersect -glm -export glm_output_tutorial

docker:
	docker build -t $(IMAGE) .


push:
	docker push $(IMAGE)

interact:
	$(DOCKER) -it $(IMAGE) bash


