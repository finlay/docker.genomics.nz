FROM openjdk:8-jre

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="variant calling"
LABEL software="GATK"
LABEL version="3.8"
LABEL license="https://software.broadinstitute.org/gatk/download/licensing"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
       vim git make wget samtools \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://software.broadinstitute.org/gatk/download/auth?package=GATK -O GenomeAnalysisTK.tar.bz2 
RUN tar xvf  GenomeAnalysisTK.tar.bz2
RUN mv GenomeAnalysisTK-3.8-0-ge9d806836/GenomeAnalysisTK.jar /	

RUN wget https://github.com/broadinstitute/picard/releases/download/2.15.0/picard.jar -O picard.jar

CMD ["bash"]
