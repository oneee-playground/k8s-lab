#!/bin/bash

# single container
sudo kubectl apply -f ./basic/num-containers/single-container.yml --dry-run=client
# if without using dry run, you can run these
sudo kubectl get pod nginx

# multi container
sudo kubectl apply -f ./basic/num-containers/multi-container.yml --dry-run=client