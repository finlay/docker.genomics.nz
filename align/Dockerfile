FROM biocontainers/biocontainers:latest

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="align"
LABEL software="bwa"
LABEL version="0.7.15"

RUN conda config --add channels bioconda

RUN conda install -y bwa=0.7.15
RUN conda install -y samtools

CMD ["bwa"]

