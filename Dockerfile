FROM osrf/ros:melodic-desktop-full-bionic
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install sudo -y
RUN apt-get install wget -y
RUN apt-get install gedit -y
WORKDIR /home
