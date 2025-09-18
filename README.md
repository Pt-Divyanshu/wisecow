# Wisecow Application

## Project Overview
Wisecow is a sample application that we containerize using Docker and deploy on Kubernetes. The project also implements a CI/CD pipeline using GitHub Actions.

## Features
- Containerized using Docker
- Deployed on Kubernetes (Minikube or Kind)
- CI/CD pipeline with GitHub Actions
- Supports secure and automated deployment

## Project Structure
- `Dockerfile` → Docker configuration for Wisecow app
- `wisecow.sh` → Main script to run the app
- `deployment.yaml` → Kubernetes deployment manifest
- `service.yaml` → Kubernetes service manifest
- `.github/workflows/ci-cd.yml` → GitHub Actions workflow

## Usage
1. Build Docker image: `docker build -t wisecow:latest .`
2. Run locally: `docker run -p 3000:3000 wisecow:latest`
3. Deploy to Kubernetes: `kubectl apply -f deployment.yaml && kubectl apply -f service.yaml`
4. Access app: `http://<minikube-ip>:32000`
Trigger CI/CD workflow

app running status :-

http://localhost:4499/
--------
Author
 Divyanshu Sharma
 ----
