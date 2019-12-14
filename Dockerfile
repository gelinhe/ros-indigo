RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN apt-get update -y && \
    apt-get install -y \
    wget \
    pkg-config \
    zip \
    g++ \
    zlib1g-dev \
    unzip python \
    wget libtool \
    cmake \
    libboost-all-dev \
    git \
    libssl-dev \
    net-tools 
RUN git clone --recurse-submodules https://github.com/lgsvl/apollo-5.0.git
WORKDIR /home
