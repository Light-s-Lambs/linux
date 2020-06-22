FROM ubuntu:20.04

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y build-essential libncurses5 libncurses5-dev bin86 kernel-package libssl-dev bison flex libelf-dev git lz4

WORKDIR /usr/src/

RUN git clone https://github.com/Light-s-Lambs/linux.git

WORKDIR /usr/src/linux/