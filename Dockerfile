FROM ubuntu:18.04
RUN apt-get update -y && \
    apt-get install -y \
    git \
RUN sh -c ' echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
RUN apt-get update -y
RUN apt-get install ros-melodic-desktop-full -y
RUN sudo rosdep init
RUN rosdep update
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc
RUN apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
WORKDIR /home
