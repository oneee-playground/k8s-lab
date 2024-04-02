#!/bin/bash

# replica set
sudo kubectl apply -f ./basic/resource-types/replica-set.yml

# deployment
sudo kubectl apply -f ./basic/resource-types/deployment.yml

# stateful set
# won't test it because it consumes storage
sudo kubectl apply -f ./basic/resource-types/headless-service.yml --dry-run=client
sudo kubectl apply -f ./basic/resource-types/stateful-set.yml --dry-run=client

# daemon-set
# won't test it.
sudo kubectl apply -f ./basic/resource-types/daemon-set.yml --dry-run=client