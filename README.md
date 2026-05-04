# DevOps Final Project — End-to-End CI/CD Pipeline

## Live URLs
- Portfolio App: http://3.71.87.80:80
- Java App: http://3.71.87.80:8080

## Tech Stack
Docker · Docker Compose · Terraform · Ansible · GitHub Actions · AWS EC2

## Pipeline
Every push to main automatically:
1. Builds and tests both applications
2. Deploys to AWS EC2 via Ansible
3. Verifies both apps are accessible

## How to Run Locally
```bash
git clone https://github.com/Cj4greatness/DevOps-final-project.git
cd DevOps-final-project
docker compose up --build
```

## Kubernetes (Bonus)
Kubernetes manifests are included in the `k8s/` folder for deployment to a cluster.

### Deploy to Kubernetes
```bash
kubectl apply -f k8s/
kubectl get pods
kubectl get services
```
