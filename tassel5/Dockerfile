FROM openjdk:8-jre

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
       vim git make \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://bitbucket.org/tasseladmin/tassel-5-standalone.git /opt/tassel5

CMD ["bash"]
