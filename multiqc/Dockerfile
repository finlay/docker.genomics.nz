FROM biocontainers/biocontainers:latest

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="qc"
LABEL software="multiqc"
LABEL version="1.0.dev0"

RUN conda config --add channels bioconda

RUN conda install multiqc

USER root
CMD ["multqc"]

