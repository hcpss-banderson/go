FROM golang

RUN apt-get update && apt-get install -y \
  build-essential \
  vim \
  cmake \
  pkg-config \
  wget \
  && mkdir /srv/libgit
  
WORKDIR /srv/libgit

RUN wget https://github.com/libgit2/libgit2/archive/v0.22.3.tar.gz && \
  tar -zxvf v0.22.3.tar.gz && \
  mkdir /srv/libgit/libgit2-0.22.3/build
  
WORKDIR /srv/libgit/libgit2-0.22.3/build
  
RUN cmake .. && cmake --build .
