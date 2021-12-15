#!/bin/bash

set -e

docker build -f docker-base.Dockerfile -t vprotasenia/devforth-drone-builder:docker-base .
docker push vprotasenia/devforth-drone-builder:docker-base

docker build --build-arg PYTHON_VERSION=3.6 -f python-base.Dockerfile -t vprotasenia/devforth-drone-builder:python3.6 .
docker push vprotasenia/devforth-drone-builder:python3.6
