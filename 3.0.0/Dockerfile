FROM ubuntu:18.04

RUN apt update && \
    apt install -y software-properties-common && \
    apt install -y curl gcc g++ build-essential mesa-common-dev && \
    cd /opt && \
    curl --output graphviz-3.0.0.tar.gz https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/3.0.0/graphviz-3.0.0.tar.gz && \
    tar -xvf graphviz-3.0.0.tar.gz && rm -f graphviz-3.0.0.tar.gz && \
    cd graphviz-3.0.0 && \
    ./configure && \
    make && \
    make install && \
    apt remove -y curl && \
    apt clean

ENV HOME /root
WORKDIR /root
ENTRYPOINT ["dot"]
