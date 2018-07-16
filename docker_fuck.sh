#!/usr/bin/env bash
set -e

docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)
