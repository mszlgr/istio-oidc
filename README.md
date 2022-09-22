# istio-oidc
Example of configuring Istio as sso proxy using RequestAuthentication and Authorization Policy


## Prerequisites
1. Install [minikube](https://minikube.sigs.k8s.io/docs/start/)
1. Install [istioctl](https://istio.io/latest/docs/ops/diagnostic-tools/istioctl/#install-hahahugoshortcode-s2-hbhb)

## Identity provider
Any identify provider that can issue JWT and exposes JWKS can be used. By default scripts are using mock implementation - [go-idp-mock](https://github.com/mszlgr/go-idp-mock)

## Starting the exmapel
1. Run `./reset-cluster.sh` script to set up fresh minikube cluster and install Istio.
1. Run `./start.sh` script to create `go-idp-mock` and `echo-server` pods and expose them as service and creates port forwarding to localhost.
1. Play with `ap.yaml` AuthorizationPolicy, `ra.yaml` RequestAuthentication and `ef-lua.yaml` EnvoyFIlter objects. 
