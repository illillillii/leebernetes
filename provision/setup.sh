#!/bin/bash

KUBERNETES_VERSION=${KUBERNETES_VERSION:-"1.15.6"}

# install virtualbox
function install_virtualbox() {
  sudo apt-get install virtualbox -y
}

# install kubectl
function install_kubectl() {
  curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBERNETES_VERSION}/bin/linux/amd64/kubectl
  chmod +x ./kubectl
  sudo mv ./kubectl /usr/local/bin/kubectl
}

# install minikube
function install_minikube() {

  curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  chmod +x minikube
  sudo mkdir -p /usr/local/bin/
  sudo install minikube /usr/local/bin/
  rm -rf minikube
}


echo $KUBERNETES_VERSION

# ========== main ===========

# dependency install

#install_virtualbox
#install_docker
#install_kubectl
#install_minikube

