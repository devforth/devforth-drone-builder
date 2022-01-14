ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

RUN apt update && apt install curl bash git nodejs npm python3-dev libffi-dev gcc g++ libc-dev make jq -y

RUN apt-get install ca-certificates curl gnupg lsb-release -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update && apt install docker-ce docker-ce-cli containerd.io -y

RUN pip install --upgrade pip && npm install -g npm
RUN pip install docker-compose awscli
# RUN npm install -g serverless

RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine \
    && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
