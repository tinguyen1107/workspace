FROM ubuntu:24.04

RUN apt update \
  && apt-get update \
  && apt-get install software-properties-common -y \
  && add-apt-repository ppa:neovim-ppa/unstable \
  && apt-get update \

# NOTE: Install docker ...and stuffs
RUN apt-get install \
  docker.io \
  neovim zsh \
  zsh \
  tmux \
  build-essential -y

RUN apt-get install curl wget -y

RUN wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh

# NOTE: Install node
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION v20.11.0

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN /bin/zsh -c "source ~/.zshrc"

# Make nvm command available to the shell
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Install specific Node version with NVM
RUN . "$NVM_DIR/nvm.sh" && \
    nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION && \
    nvm alias default $NODE_VERSION

# NOTE: Keep image alive
CMD ["sleep", "infinity"]
