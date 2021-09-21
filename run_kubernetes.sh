#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="suelahmed/project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment demolocal --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment demolocal --type="Nodeport" --port=80
kubectl port-forward deployment/demolocal 8000:80