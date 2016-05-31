
FROM ubuntu:14.04

USER root

# base installs
RUN apt-get update
RUN apt-get install -y software-properties-common wget vim git

# install java 7
RUN apt-get install -y openjdk-7-jdk

# install scala
RUN wget http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
RUN mkdir /usr/local/src/scala
RUN tar xvf scala-2.10.4.tgz -C /usr/local/src/scala/ && rm /scala-2.10.4.tgz
ENV SCALA_HOME /usr/local/src/scala/scala-2.10.4
ENV PATH $SCALA_HOME/bin:$PATH

# # install spark
RUN wget http://www.gtlib.gatech.edu/pub/apache/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz
RUN tar xvf spark-1.6.1-bin-hadoop2.6.tgz -C ~/ && rm /spark-1.6.1-bin-hadoop2.6.tgz
RUN mv ~/spark-1.6.1-bin-hadoop2.6 ~/spark-1.6.1

# install anaconda
RUN cd ~ && wget http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh
RUN bash ~/Anaconda2-4.0.0-Linux-x86_64.sh -b -p /root/anaconda
ENV PATH /root/anaconda/bin:$PATH

# set env vars to link anaconda to spark
ENV PATH "$PATH:/root/spark-1.6.1/bin"
ENV IPYTHON_OPTS "notebook --ip=0.0.0.0 --no-browser"
ENV MASTER local[2]

# expose jupyter notebook port 8888
EXPOSE 8888

# make directory for notebooks
RUN mkdir /root/jup

# change dir
WORKDIR /root/jup

# default command
CMD ["echo", "Hello from spark anaconda image!"]
