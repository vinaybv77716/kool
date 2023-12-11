#! /bin/bash
set -e
set -x



sudo kubectl apply -f deployment.yaml
sudo kubectl apply -f service.yaml
