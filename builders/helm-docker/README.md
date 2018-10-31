# Helm Client

## Overview
This container provides the Helm client for use with Kubernetes

## Run with tunneling
`kubectl run -it helm --env=HELM_HOST=<HOST>:<PORT> --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true` 

## Run without tunneling
`kubectl run -it helm --image=lachlanevenson/k8s-helm --command /bin/sh -n kube-system --rm=true`
