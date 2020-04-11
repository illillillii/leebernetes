#!/bin/bash

KUBERNETES_VERSION=${KUBERNETES_VERSION:-"1.15.6"}

# run minikube
minikube start \
  --driver=virtualbox \
  --kubernetes-version=${KUBERNETES_VERSION} \
  --cpus=3 \
  --memory=8g
