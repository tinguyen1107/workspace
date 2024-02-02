FROM ubuntu:24.04

RUN apt update \
  && apt-get update \
  && apt-get install software-properties-common -y \
  && add-apt-repository ppa:neovim-ppa/unstable \
  && apt-get update

# Install docker
RUN apt-get install \
  docker.io \
  neovim zsh \
  zsh \
  build-essential -y
