ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

RUN apt update && apt install docker curl bash git nodejs npm python3-dev libffi-dev gcc g++ libc-dev make jq -y
RUN pip install --upgrade pip && npm install -g npm
RUN pip install docker-compose awscli
# RUN npm install -g serverless

RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine \
    && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
