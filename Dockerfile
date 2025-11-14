FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    ansible \
    sshpass \
    git \
    vim \
    unzip \
    curl \
    tar \
    sudo && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /ansible

COPY . /ansible

RUN chmod -R 755 /ansible

CMD ["/bin/bash"]


