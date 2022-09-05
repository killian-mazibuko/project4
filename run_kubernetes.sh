#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ktmazibuko/slapp
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run slapp\
	--image=$dockerpath\
	--port=80 --labels app=slapp

# Stee container port to a host
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward th
kubectl port-forward slapp 8000:80