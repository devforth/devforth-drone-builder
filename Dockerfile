FROM docker:latest

RUN apk add --no-cache curl bash git py-pip nodejs npm python-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip install docker-compose
RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine \
    && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
