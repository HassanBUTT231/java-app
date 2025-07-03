#!/bin/bash
set -e

# Set your values
REGION="us-east-1"
ACCOUNT_ID="099199746132"
REPO_NAME="lumino-java-app"
IMAGE_TAG="latest"

echo "Logging into Amazon ECR..."
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com"

echo "Pulling the Docker image..."
docker pull "$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG"

echo "Running the Docker container..."
docker run -d -p 5000:5000 "$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG"
