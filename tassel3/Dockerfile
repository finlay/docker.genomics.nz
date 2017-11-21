FROM openjdk:8-jre

MAINTAINER helge.dzierzon@plantandfood.co.nz

LABEL purpose="variant calling"
LABEL software="tassel"
LABEL version="3"
LABEL license="GNU LESSER GENERAL PUBLIC LICENSE v2.1"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
       vim git make wget unzip \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://git.code.sf.net/p/tassel/tassel3-standalone /opt/tassel-tassel3-standalone 

CMD ["bash"]
