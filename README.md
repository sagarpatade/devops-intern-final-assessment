# DevOps Intern Final Assessment

**Author:** Sagar Patade  
**Date:** January 30, 2026  
**Status:** [![DevOps Intern CI](https://github.com/sagarpatade/devops-intern-final-assessment/actions/workflows/ci.yml/badge.svg)](https://github.com/sagarpatade/devops-intern-final-assessment/actions/workflows/ci.yml)

## 📖 Project Description
This repository demonstrates a complete DevOps workflow created for the Final Internship Assessment. It integrates multiple open-source tools to simulate a realistic development pipeline, moving from code creation to containerization, deployment, and monitoring.

### 🛠 Tools Used
* **Version Control:** Git & GitHub
* **Scripting:** Python & Bash
* **Containerization:** Docker
* **CI/CD:** GitHub Actions
* **Orchestration:** HashiCorp Nomad
* **Monitoring:** Grafana Loki

---

## 📂 Project Structure
```text
devops-intern-final/
├── README.md               # Project documentation
├── hello.py                # Python application source code
├── Dockerfile              # Instructions to build the Docker image
├── scripts/
│   └── sysinfo.sh          # Bash script for system monitoring
├── .github/
│   └── workflows/
│       └── ci.yml          # CI/CD pipeline configuration
├── nomad/
│   └── hello.nomad         # Nomad job specification
└── monitoring/
    └── loki_setup.txt      # Documentation for Loki setup


    🚀 How to Run
1. Linux Scripting
The scripts/sysinfo.sh script gathers basic system information (User, Date, Disk Usage).

Command:

Bash

chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
Expected Output:

Plaintext

=== DevOps Intern System Info ===
Current User: sagar
Current Date: Fri Jan 30 ...
-----------------------------
Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
...
2. Python Application
To run the application locally without Docker:

Command:

Bash

python3 hello.py
3. Docker Containerization
The project includes a Dockerfile to containerize the Python application.

Build the Image:

Bash

docker build -t devops-final-app .
Run the Container:

Bash

docker run devops-final-app
Output: Hello, DevOps! This is my final assessment.

⚙️ CI/CD Pipeline
This repository uses GitHub Actions for Continuous Integration.

Workflow File: .github/workflows/ci.yml

Triggers: Pushes to the main branch.

Jobs:

Sets up a Python environment.

Runs the hello.py script to ensure code validity.

Executes the sysinfo.sh script to verify system interaction.

Check the Actions tab in this repository to see the pipeline history.

📦 Deployment (Nomad)
The application is configured to run as a Nomad job using the docker driver.

Job File: nomad/hello.nomad

To submit this job to a running Nomad cluster:

Bash

nomad job run nomad/hello.nomad
📊 Monitoring (Loki)
We use Grafana Loki for log aggregation. The setup details are documented in monitoring/loki_setup.txt.

Quick Start for Loki (Local Docker):

Bash

docker run -d --name loki -p 3100:3100 grafana/loki:latest
Verify Loki is Up:

Bash

curl http://localhost:3100/ready