#!/bin/bash

set -e

IMAGE_NAME="placemux-backend"
CONTAINER_NAME="placemux-backend"
APP_PORT=3000

echo "Starting deployment..."

docker pull $IMAGE_NAME:latest || true

docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

docker run -d \
  --name $CONTAINER_NAME \
  -p $APP_PORT:$APP_PORT \
  --restart always \
  $IMAGE_NAME:latest

echo "Deployment completed successfully."