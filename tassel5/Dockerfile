FROM openjdk:8-jre

RUN apt-get -y update \
    && apt-get install -y vim \
    && apt-get install -y git

WORKDIR /home/tassel5/

RUN git clone https://bitbucket.org/tasseladmin/tassel-5-standalone.git

CMD ["bash"]
