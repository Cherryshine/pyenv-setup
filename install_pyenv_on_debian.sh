#!/bin/bash
# pyenv 설치 및 Python 3.12 설치 스크립트 예시

# 필수 패키지 설치
sudo apt update && sudo apt install -y curl git build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncursesw5-dev xz-utils \
  tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev ca-certificates

# pyenv 설치
curl https://pyenv.run | bash

# pyenv 환경변수 설정
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Python 3.12 설치
pyenv install 3.12.0
pyenv global 3.12.0
