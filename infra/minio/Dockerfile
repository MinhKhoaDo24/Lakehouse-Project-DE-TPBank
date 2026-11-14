FROM ubuntu:24.04

RUN mkdir /workspace &&\
    mkdir /data &&\
    mkdir /data/1 &&\
    mkdir /data/2
WORKDIR /workspace
COPY minio /workspace
RUN chmod +x minio

ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin