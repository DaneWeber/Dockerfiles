FROM ubuntu:18.04

ENV ORACLE_JDK_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-${ORACLE_JDK_VER}-oracle

USER root

RUN apt update
RUN apt install default-jdk -y

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
