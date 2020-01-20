FROM osrf/ros:melodic-desktop-full-bionic
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install sudo -y
RUN apt-get install wget -y
RUN apt-get install gedit -y
WORKDIR /temp
RUN git clone https://github.com/ethz-adrl/control-toolbox
RUN git clone https://github.com/ANYbotics/kindr.git
WORKDIR /temp/kindr
RUN mkdir build
WORKDIR /temp/kindr/build
RUN cmake ..
RUN make install
WORKDIR /temp/control-toolbox/ct
RUN bash install_deps.sh
RUN bash install_hpipm.sh
RUN bash build_ct.sh -DCMAKE_BUILD_TYPE=Release
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
WORKDIR /home

