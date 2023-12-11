#! /bin/bash
set -e
set -x



kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
