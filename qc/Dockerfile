FROM biocontainers/biocontainers:latest

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="QC"
LABEL software="fastqc"
LABEL version="0.7.15"

RUN conda install -y fastqc 

USER root

RUN apt-get update && apt-get install -y python-swiftclient

CMD ["fastqc"]

