FROM osrf/ros:melodic-desktop-full-bionic
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install sudo -y
RUN apt-get install wget -y
RUN apt-get install gedit -y
RUN mkdir /temp && \ 
    cd /temp && \
    git clone https://github.com/ethz-adrl/control-toolbox /temp
RUN cd /temp/control-toolbox/ct
RUN bash install_deps.sh

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
WORKDIR /home

