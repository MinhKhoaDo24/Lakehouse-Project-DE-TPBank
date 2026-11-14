FROM ubuntu:24.04

RUN mkdir /workspace
WORKDIR /workspace
COPY java /workspace/java
COPY trino /workspace/trino

ENV JAVA_HOME=/workspace/java
ENV PATH=$JAVA_HOME/bin:$PATH

ENV TRINO_HOME=/workspace/trino
ENV PATH=$TRINO_HOME/bin:$PATH