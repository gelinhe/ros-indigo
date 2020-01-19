FROM osrf/ros:melodic-desktop-full-bionic
sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install sudo
RUN pat-get install wget
RUN apt-get install gedit
WORKDIR /home

