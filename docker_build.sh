#!/bin/bash

usage() {
    echo "Usage: $0 v<version>"
    exit 1
}

# Check if a parameter is provided
if [ -z "$1" ]; then
    echo "Error: Version parameter is required."
    usage
fi

VERSION=$1
IMAGE_OWNER=pangzlab
IMAGE_NAME=verus-rpc-server

echo "Removing old image ..."
sudo docker image rm $IMAGE_NAME

echo "Building $IMAGE_OWNER/$IMAGE_NAME image with version: $VERSION"
sudo docker build --no-cache -f Dockerfile.v2 -t $IMAGE_OWNER/$IMAGE_NAME:latest -t $IMAGE_OWNER/$IMAGE_NAME:$VERSION .
