#!/bin/bash
echo "Stopping existing container..."

CONTAINER_ID=$(docker ps -q --filter ancestor=099199746132.dkr.ecr.us-east-1.amazonaws.com/lumino-java-app:latest)

if [ ! -z "$CONTAINER_ID" ]; then
  docker stop $CONTAINER_ID
  docker rm $CONTAINER_ID
else
  echo "No running container found."
fi
