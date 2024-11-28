#!/bin/bash

# Variables
IMAGE_NAME="python-hello"
CONTAINER_NAME="python-hello-container"

# # Start the Docker container
# echo "Starting Docker container from image: $IMAGE_NAME..."
# docker run -d --name $CONTAINER_NAME $IMAGE_NAME

# # CONTAINER_ID=$(docker ps -q --filter "name=$CONTAINER_NAME")

# # Check if the container started successfully
# if [ $? -ne 0 ]; then
#   echo "Failed to start the Docker container!"
#   exit 1
# fi

# # Wait for a few seconds to allow the container to initialize
# sleep 5

# # Check the container's running status
# CONTAINER_STATUS=$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME)
# echo $CONTAINER_STATUS
# if [ "$CONTAINER_STATUS" == "true" ]; then
# if [ "$CONTAINER_STATUS" == "true" ]; then
#   echo "Container $CONTAINER_NAME is running successfully!"
# else
#   echo "Container $CONTAINER_NAME is not running. Checking logs for errors..."
#   docker logs $CONTAINER_NAME
#   echo "Cleaning up..."
#   docker rm -f $CONTAINER_NAME
#   exit 1
# fi

# echo "Docker container is up and running without any errors!"
