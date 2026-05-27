# Placemux CI/CD Pipeline Guide

## Overview

This project demonstrates a basic CI/CD pipeline for deploying a Node.js backend application using GitHub Actions, Docker, and AWS deployment concepts.

The pipeline automatically performs:
- Code checkout
- Dependency installation
- Lint checks
- Test execution
- Docker image build
- Smoke testing

---

# Technologies Used

- Node.js
- Docker
- Docker Compose
- GitHub Actions
- AWS Deployment Concepts

---

# Project Structure

```text
placemux-cicd-pipeline/
│
├── Dockerfile
├── docker-compose.yml
├── deploy.sh
├── CICD_GUIDE.md
├── package.json
├── server.js
│
└── .github/
    └── workflows/
        └── main.yml
```

---

# Pipeline Workflow

## Stage 1 — Checkout Code

The GitHub Actions workflow pulls the latest source code from the repository.

---

## Stage 2 — Install Dependencies

Node.js dependencies are installed using npm.

```bash
npm install
```

---

## Stage 3 — Lint Checks

Basic lint verification is executed.

```bash
npm run lint
```

---

## Stage 4 — Test Execution

Unit and integration test scripts are executed.

```bash
npm test
```

---

## Stage 5 — Docker Image Build

The backend application is packaged into a Docker image.

```bash
docker build -t placemux-backend .
```

---

## Stage 6 — Smoke Test

The container is started temporarily and health checks are verified.

```bash
curl http://localhost:3000/health
```

---

# Docker Compose

Docker Compose is included for local development and testing.

Run locally:

```bash
docker-compose up
```

---

# Deployment Script

The deployment script automates:
- stopping old containers
- removing old instances
- running updated Docker containers

Run deployment:

```bash
bash deploy.sh
```

---

# CI/CD Benefits

- Faster deployment workflow
- Reduced manual deployment steps
- Automated validation
- Consistent containerized environment
- Easier rollback and scalability preparation

---

# Conclusion

This project demonstrates a beginner-friendly CI/CD workflow using GitHub Actions and Docker for backend deployment automation.