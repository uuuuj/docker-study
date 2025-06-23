FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 필수 패키지 설치 (PPA 추가용 포함)
RUN apt update && apt install -y \
    software-properties-common \
    curl git vim gnupg lsb-release

# Python 3.12 설치 (deadsnakes PPA 사용)
RUN add-apt-repository ppa:deadsnakes/ppa -y && \
    apt update && \
    apt install -y python3.12 python3.12-venv python3.12-distutils && \
    ln -s /usr/bin/python3.12 /usr/local/bin/python3 && \
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12

# Node.js 및 npm 설치 (버전 최신화 가능)
RUN apt install -y nodejs npm

WORKDIR /workspace

EXPOSE 8000

CMD ["bash"]
