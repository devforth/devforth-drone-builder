#!/bin/bash

set -e

docker build -t vprotasenia/devforth-drone-builder .
docker push vprotasenia/devforth-drone-builder:latest