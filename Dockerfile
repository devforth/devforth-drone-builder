FROM docker:20.10.12-alpine3.14

RUN apk add --no-cache curl bash git py-pip nodejs npm python3-dev libffi-dev openssl-dev gcc g++ libc-dev make jq \
    && pip install --upgrade pip \
    && pip install docker-compose awscli \
    && npm install -g serverless
RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine \
    && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
