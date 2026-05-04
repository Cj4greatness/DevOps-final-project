# Kubernetes Manifests

## Files
- portfolio-deployment.yml — Portfolio app Deployment + Service
- java-deployment.yml — Java app Deployment + Service
- ingress.yml — Ingress controller for routing
- configmap.yml — App configuration

## How to deploy to a cluster

### Prerequisites
- kubectl installed
- Access to a Kubernetes cluster (EKS, Minikube, etc.)

### Deploy all manifests
kubectl apply -f .

### Check deployments
kubectl get pods
kubectl get services
kubectl get ingress

### Scale the portfolio app
kubectl scale deployment portfolio-app --replicas=3

### Check logs
kubectl logs -l app=portfolio
kubectl logs -l app=java-app

### Delete all resources
kubectl delete -f .

## Architecture
Both apps run as Kubernetes Deployments with 2 replicas each.
Services expose them internally and LoadBalancer exposes them externally.
Ingress routes traffic based on URL path.
