#! /bin/bash
set -e
set -x
set -y


kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
