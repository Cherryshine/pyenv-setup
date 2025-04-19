#!/bin/bash

# 필수 패키지 설치
sudo apt update && sudo apt install -y curl git build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncursesw5-dev xz-utils \
  tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev ca-certificates

# pyenv 설치
curl https://pyenv.run | bash

# 환경 변수 설정 (bash 프로파일에 추가)
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# 변경된 .bashrc 적용
source ~/.bashrc

# Python 3.12 설치
pyenv install 3.12.0
pyenv global 3.12.0
