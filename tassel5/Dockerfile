FROM openjdk:8-jre

RUN apt-get -y update \
    && apt-get install -y vim \
    && apt-get install -y git

RUN git clone https://bitbucket.org/tasseladmin/tassel-5-standalone.git /opt/tassel5

CMD ["bash"]
