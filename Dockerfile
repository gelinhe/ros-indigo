FROM osrf/ros:melodic-desktop-full-bionic
RUN apt-get update
RUN apt-get install git
RUN apt-get install sudo
RUN pat-get install wget
RUN apt-get install gedit
RUN mkdir /temp
RUN cd /temp
RUN git clone https://github.com/ethz-adrl/control-toolbox
RUN cd /temp/control-toolbox/ct
RUN bash install_deps.sh
sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
WORKDIR /home

