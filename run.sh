#!/bin/zsh

# node js listening port on host and container
HOST_PORT=3000
CONTAINER_NODE_PORT=3000

CONTAINER_NAME="${USER}/docker_node:1.0"

# build container
docker build -t $CONTAINER_NAME $PWD

# run container locally
docker run -p $HOST_PORT:$CONTAINER_NODE_PORT $CONTAINER_NAME
