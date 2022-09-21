#!/bin/bash

minikube delete

 minikube start && \
   istioctl install -y && \
   kubectl label ns default istio-injection=enabled
