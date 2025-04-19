#!/bin/bash
set -e

# 필수 패키지 설치
apt-get update && apt-get install -y curl git build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncursesw5-dev xz-utils tk-dev \
    libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev ca-certificates

# pyenv 설치
curl https://pyenv.run | bash

# 환경변수 설정 (현재 세션에서만 반영)
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# pyenv 정상 설치 확인
echo ">>> pyenv 설치 경로:"
which pyenv
echo ">>> pyenv 버전:"
pyenv -v

# Python 3.12.0 설치 및 설정 (3.12.2는 중복되므로 삭제)
pyenv install 3.12.0
pyenv global 3.12.0

# pyenv 및 python 버전 확인
pyenv -v
python --version
