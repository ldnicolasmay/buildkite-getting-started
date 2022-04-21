#!/usr/bin/env bash
# run from parent directory

# Log in to AWS ECR
aws ecr get-login-password --region us-east-1 | \
  docker login --username AWS --password-stdin 164557480116.dkr.ecr.us-east-1.amazonaws.com

docker build -t buildkite-getting-started-image .

docker tag buildkite-getting-started-image:latest \
  164557480116.dkr.ecr.us-east-1.amazonaws.com/buildkite-getting-started-image:latest

docker push 164557480116.dkr.ecr.us-east-1.amazonaws.com/buildkite-getting-started-image:latest
