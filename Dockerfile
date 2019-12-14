FROM ubuntu:14.04
RUN apt-get update -y && \
    apt-get install -y \
    git \
RUN git clone --recurse-submodules https://github.com/lgsvl/apollo-5.0.git
WORKDIR /home
