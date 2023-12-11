#! /bin/bash
set -e
set -x



echo "11744c8e5ea68c8310021245e333271a95" | sudo -S kubectl apply -f deployment.yaml
echo "11744c8e5ea68c8310021245e333271a95" | sudo -S kubectl apply -f service.yaml
