FROM ubuntu:18.04
RUN apt-get update -y 
RUN sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN sudo apt-key adv --keyserver 'hkp://pgp.mit.edu:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update -y
RUN apt-get install ros-melodic-desktop-full -y
RUN sudo rosdep init
RUN rosdep update
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc
RUN apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
WORKDIR /home
