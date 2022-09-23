#!/bin/bash

# start go-idp-mock
kubectl run go-idp-mock --image=mszlgr/go-idp-mock
kubectl expose pod go-idp-mock --port=80 --target-port=8080 --name go-idp-mock --type=NodePort

# start echo-server
kubectl run echo-server --image=ealen/echo-server --env ENABLE__ENVIRONMENT=false
kubectl expose pod echo-server --port=80 --name echo-server --type=NodePort

# expose services
minikube service --all=true --url=true &
