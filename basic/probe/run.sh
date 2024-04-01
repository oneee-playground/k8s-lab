#!/bin/bash

# liveness prove
sudo kubectl apply -f ./basic/probe/liveness.yml

# readiness prove
# won't test it because it is almost same as livenss.
sudo kubectl apply -f ./basic/probe/readiness.yml --dry-run=client

# startup prove
# won't test it.