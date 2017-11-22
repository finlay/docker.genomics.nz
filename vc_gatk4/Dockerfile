FROM openjdk:8-jre

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="variant calling"
LABEL software="GATK"
LABEL version="4"
LABEL license="BSD (3-clause)"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
       vim git make wget curl python\
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://software.broadinstitute.org/gatk/download/auth?package=BETA -O gatk-4.beta.5.zip 
RUN unzip gatk-4.beta.5.zip
RUN rm  gatk-4.beta.5.zip

RUN wget https://github.com/broadinstitute/picard/releases/download/2.15.0/picard.jar -O picard.jar 

CMD ["bash"]
