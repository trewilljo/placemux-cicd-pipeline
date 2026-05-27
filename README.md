# Placemux CI/CD Pipeline

This project demonstrates a beginner-friendly CI/CD pipeline implementation using GitHub Actions, Docker, and AWS deployment concepts for automated backend deployment workflows.

## Features

- GitHub Actions CI/CD workflow
- Automated lint and test stages
- Docker image build process
- Smoke test validation
- Deployment automation script
- Docker Compose local setup
- Deployment-ready structure

---

# Project Structure

```text
placemux-cicd-pipeline/
│
├── Dockerfile
├── docker-compose.yml
├── deploy.sh
├── README.md
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

1. Source code checkout
2. Dependency installation
3. Lint verification
4. Test execution
5. Docker image build
6. Smoke test validation
7. Deployment preparation

---

# Technologies Used

- Node.js
- Docker
- Docker Compose
- GitHub Actions
- AWS Deployment Concepts

---

# Objective

The objective of this project is to demonstrate automated deployment workflows and CI/CD concepts for scalable backend infrastructure management.

---

# Author

Aastha Joshi