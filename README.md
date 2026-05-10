
# 🚀 DevOps Final Project — End-to-End CI/CD Pipeline

<div align="center">

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)

**A complete DevOps pipeline deploying two applications to AWS — fully automated from code push to live deployment.**

</div>

---

## 🌍 Live Applications

| Application | URL | Status |
|---|---|---|
| Portfolio Web App | http://3.71.87.80:80 | 🟢 Live |
| Java Spring Boot App | http://3.71.87.80:8080 | 🟢 Live |

---

## 📋 Project Overview

This project demonstrates a complete, production-grade DevOps workflow:

- **Two applications** containerized with Docker and deployed to AWS
- **Infrastructure provisioned as code** using Terraform
- **Server configuration automated** using Ansible
- **Full CI/CD pipeline** using GitHub Actions
- **Kubernetes manifests** for container orchestration

---

## 🏗️ Architecture
Developer pushes code to GitHub
↓
GitHub Actions triggers pipeline
↓
┌────────────────────────────┐
│   JOB 1: Build & Test      │
│   • Maven builds Java app  │
│   • Python tests portfolio │
└────────────┬───────────────┘
↓
┌────────────────────────────┐
│   JOB 2: Deploy (Ansible)  │
│   • SSH into EC2           │
│   • Install dependencies   │
│   • Run Docker Compose     │
└────────────┬───────────────┘
↓
┌────────────────────────────┐
│   JOB 3: Verify            │
│   • Check portfolio URL    │
│   • Check Java app URL     │
│   • Print live URLs        │
└────────────────────────────┘
↓
Both Apps Live on AWS! 🎉
---

## 🛠️ Tech Stack

| Category | Tool | Purpose |
|---|---|---|
| Source Control | Git + GitHub | Version control |
| CI/CD | GitHub Actions | Automated pipeline |
| Containerization | Docker | App packaging |
| Orchestration | Docker Compose | Multi-container management |
| IaC | Terraform | AWS infrastructure |
| Config Management | Ansible | Server setup & deployment |
| Cloud | AWS EC2 | Application hosting |
| Networking | AWS VPC | Network isolation |
| Security | AWS Security Groups | Firewall rules |
| Kubernetes | K8s Manifests | Container orchestration |

---

## 📁 Project Structure
devops-final-project/
├── .github/
│   └── workflows/
│       └── ci-cd.yml          ← GitHub Actions pipeline
├── portfolio-app/
│   ├── app.py                 ← Flask web application
│   ├── templates/index.html   ← Portfolio HTML
│   ├── static/style.css       ← Styling
│   ├── requirements.txt       ← Python dependencies
│   └── Dockerfile             ← Container definition
├── java-app/
│   ├── src/                   ← Java source code
│   ├── pom.xml                ← Maven build config
│   └── Dockerfile             ← Multi-stage container build
├── terraform/
│   ├── main.tf                ← Terraform provider config
│   ├── vpc.tf                 ← VPC, subnet, routing
│   ├── ec2.tf                 ← EC2 instance
│   ├── security_groups.tf     ← Firewall rules
│   ├── variables.tf           ← Input variables
│   └── outputs.tf             ← Output values
├── ansible/
│   ├── inventory/hosts.ini    ← Server inventory
│   ├── playbook.yml           ← Main playbook
│   └── roles/
│       ├── common/            ← System packages
│       ├── docker/            ← Docker installation
│       └── deploy/            ← App deployment
├── k8s/
│   ├── portfolio-deployment.yml  ← Portfolio K8s manifest
│   ├── java-deployment.yml       ← Java app K8s manifest
│   ├── ingress.yml               ← Ingress controller
│   └── configmap.yml             ← App configuration
└── docker-compose.yml         ← Local development
---

## 🚀 How to Run Locally

### Prerequisites
- Docker Desktop installed
- Git installed

### Steps
```bash
# Clone the repository
git clone https://github.com/Cj4greatness/DevOps-final-project.git
cd DevOps-final-project

# Start both apps
docker compose up --build

# Access the apps
# Portfolio: http://localhost:80
# Java App:  http://localhost:8080
```

---

## ☁️ Deploy to AWS

### Prerequisites
- AWS CLI configured
- Terraform installed
- Ansible installed
- EC2 Key Pair created

### Step 1 — Provision Infrastructure
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### Step 2 — Deploy Applications
```bash
cd ansible
ansible-playbook -i inventory/hosts.ini playbook.yml
```

### Step 3 — Verify Deployment
```bash
curl http://YOUR_EC2_IP:80
curl http://YOUR_EC2_IP:8080
```

---

## 🔄 CI/CD Pipeline

Every push to `main` branch automatically:

1. **Build & Test** — Maven builds Java app, Python tests portfolio health endpoint
2. **Deploy** — Ansible SSHes into EC2, installs Docker, runs both containers
3. **Verify** — Pipeline confirms both apps return HTTP 200

### Pipeline Status
![CI/CD](https://github.com/Cj4greatness/DevOps-final-project/actions/workflows/ci-cd.yml/badge.svg)

---

## 🐳 Docker

Both apps are containerized:

```bash
# Build images
docker build -t portfolio-app ./portfolio-app
docker build -t java-app ./java-app

# Run with compose
docker compose up --build -d

# Check running containers
docker ps

# View logs
docker compose logs -f
```

---

## ☸️ Kubernetes

Deploy to any Kubernetes cluster:

```bash
# Apply all manifests
kubectl apply -f k8s/

# Check deployments
kubectl get pods
kubectl get services
kubectl get ingress

# Scale portfolio to 3 replicas
kubectl scale deployment portfolio-app --replicas=3
```

---

## 🔒 Security

- EC2 access restricted to specific IP via Security Groups
- SSH key-based authentication only
- No credentials stored in code — all secrets in GitHub Secrets
- Containers run as non-root users
- UFW firewall configured on server

---

## 📊 Infrastructure Details

| Resource | Value |
|---|---|
| Cloud Provider | AWS |
| Region | us-east-1 |
| Instance Type | t2.micro (Free Tier) |
| OS | Ubuntu 22.04 |
| Portfolio Port | 80 |
| Java App Port | 8080 |

---

## 👨‍💻 Author

**Chisom Johnson**
- GitHub: [@Cj4greatness](https://github.com/Cj4greatness)
- Email: cj4greatness@gmail.com
- LinkedIn: [linkedin.com/in/chisom-johnson](https://linkedin.com/in/chisom-johnson)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

<div align="center">
Built with ❤️ using Docker · Terraform · Ansible · GitHub Actions · AWS
</div>
EOF
