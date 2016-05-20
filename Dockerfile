FROM golang

RUN apt-get update && apt-get install -y \
  build-essential \
  vim \
  cmake \
  libgit2-dev \
  pkg-config
