#!/bin/bash -eux

IMAGE_NAME="ghcr.io/backend-developers-ltd/computehorde/validator-app"
rsync -avzP ../../compute_horde packages/
docker build -t $IMAGE_NAME -f envs/prod/Dockerfile .