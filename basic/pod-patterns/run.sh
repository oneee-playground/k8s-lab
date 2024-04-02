#!/bin/bash

# sidecar
sudo kubectl apply -f ./basic/pod-patterns/sidecar.yml
sudo kubectl port-forward nginx-sidecar 8080:80

# adapter
# Example source by Bhargav Bachina(@bbachi)
https://github.com/bbachi/k8s-adaptor-container-pattern.git
sudo kubectl apply -f ./basic/pod-patterns/adapter.yml