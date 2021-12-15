ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-alpine

RUN apk add --no-cache docker curl bash git py-pip nodejs npm python3-dev libffi-dev openssl-dev gcc g++ libc-dev make jq
RUN pip install --upgrade pip && npm install -g npm
RUN pip install docker-compose awscli \
    && npm install -g serverless

RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine \
    && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
