FROM openjdk:8-jre

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="variant calling"
LABEL software="GATK"
LABEL version="4"
LABEL license="BSD (3-clause)"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
       vim git make wget \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://software.broadinstitute.org/gatk/download/auth?package=BETA -O GenomeAnalysisTK.tar.bz2 
RUN tar xvf  GenomeAnalysisTK.tar.bz2
RUN mv GenomeAnalysisTK-3.8-0-ge9d806836/GenomeAnalysisTK.jar /	

CMD ["bash"]
