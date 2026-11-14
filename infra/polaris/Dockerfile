FROM python:3.12.0

RUN mkdir /workspace
WORKDIR /workspace
COPY java /workspace/java
COPY polaris /workspace/polaris

RUN pip install apache-polaris==1.7.0 --no-cache-dir

ENV JAVA_HOME=/workspace/java
ENV PATH=$JAVA_HOME/bin:$PATH

ENV POLARIS_HOME=/workspace/polaris
ENV PATH=$POLARIS_HOME/bin:$PATH
