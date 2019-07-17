#!/bin/bash
# kubectl run nginx1 --image=jinkyun1210/nginx --port=80
# kubectl scale depolyment nginx --replicas=4
# kubectl expose deployment/nginx --type="NodePort" --port 80

kubectl delete deploy/nginx1
kubectl create -f ./deploy.yaml
