#!/bin/sh

echo "\n-----------------------------------------------------\n"

echo "🏴‍☠️ Destroying Kubernetes cluster..."

kind delete cluster --name subscription-cluster

docker rm -f -v subscription-cluster-control-plane

echo "\n"

echo "🏴‍☠️ Cluster destroyed"
