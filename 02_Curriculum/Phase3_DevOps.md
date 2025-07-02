# 📚 Phase 3: DevOps, Orchestration, & The Modular Capstone (Weeks 17-24)

**Outcome:** Become a "Full-Stack Developer with DevOps and Cloud skills," capable of building and deploying complex applications with automated pipelines.

### 1. Core DevOps & Automation

* [ ] **[Linux Shell Scripting Projects](https://www.udemy.com/course/linux-shell-scripting-projects/)**
* [ ] **[[Linux Basics For Hackers.pdf|Linux Basics For Hackers]]**
* [ ] **[Decoding DevOps](https://www.udemy.com/course/decodingdevops/)**
* [ ] **[DevOps Projects](https://www.udemy.com/course/devopsprojects/) [[300_devops|DevOps Learning Path]]**
* [ ] **[[devopsforthedesperate.pdf|DevOps for the Desperate]]**
* [ ] **[[basic-dockerfile|Basic Dockerfile:]]** Containerize your backend API for consistent deployment.
* [ ] **[[ec2-instance|EC2 Instance:]]** Provision a cloud VM as your deployment target.
* [ ] **[[nodejs-service-deployment|Node.js Service Deployment:]]** Create a CI/CD pipeline to automate deployment to the cloud VM.

### 2. Capstone Project 2: The Evolved Roadmap.sh Project Chain (Study Helper App)

* [ ] **[[markdown-note-taking-app|Markdown Note-taking App:]]** Build the frontend interface for the note-taking application.
* [ ] **[[markdown-note-taking-app|Markdown Note-taking App API:]]** Develop the backend for creating, editing, and storing notes.
* [ ] **[[flash-cards|Flash Cards:]]** Build a component to help users study their notes.
* [ ] **[[quiz-app|Quiz App:]]** Develop a quiz feature for self-testing.
* [ ] **[[pomodoro-timer|Pomodoro Timer:]]** Create a productivity timer within the app.
* [ ] **[[dockerized-service-deployment|Dockerized Service:]]** Containerize the entire application (frontend + backend).
* [ ] **[[iac-digitalocean|IaC on DigitalOcean:]]** Use Infrastructure as Code (Terraform) to provision your cloud infrastructure.
* [ ] **[[configuration-management|Configuration Management:]]** Automate the server setup with Ansible.
* [ ] **[[database-backup-utility|Database Backup Utility:]]** Create a script to automate database backups.
* [ ] **[[caching-server|Caching Proxy:]]** Implement a caching layer to improve API performance.
* [ ] **[[multi-container-service|Multi Container Service:]]** Deploy a set of interconnected microservices.

### 3. Continue with OSSU Advanced CS Topics

* [ ] **[[10_Resources/computer-science/README#Advanced systems|Advanced systems:]]** Complete the "Computation Structures" series.
* [ ] **[[10_Resources/computer-science/README#Advanced programming|Advanced programming:]]** Choose relevant courses based on interest.
* [ ] **[[10_Resources/computer-science/README#Advanced theory|Advanced theory:]]** Choose relevant courses based on interest.
* [ ] **[[10_Resources/computer-science/README#Advanced Information Security|Advanced information security:]]** Choose relevant courses based on interest.
* [ ] **[[10_Resources/computer-science/README#Advanced math|Advanced math:]]** Choose relevant courses based on interest.

### 4. Unified IT Environment Project: Phase 3 Modules

* **Module 3.1: Core DevOps Dashboard & CI/CD Pipeline**
    * [ ] Deploy a Testing, Ticketing, Deployment VM (Ubuntu Server) using Foreman.
    * [ ] Implement a comprehensive CI/CD pipeline using **Jenkins, GitLab CI, or GitHub Actions Self-Hosted Runner** on this VM.
    * [ ] Configure automated testing (unit, integration, end-to-end testing frameworks like Pytest, Jest, Selenium) and automated deployment processes within the pipeline.
    * [ ] Integrate with a ticketing system (e.g., Jira, Trello).
    * [ ] **Tool Focus:** Jenkins/GitLab CI/GitHub Actions, testing frameworks, ticketing system.
* **Module 3.2: Kubernetes Cluster Foundation**
    * [ ] Provision three VMs (1 master, 2 workers) for the Kubernetes cluster using `kubeadm` (managed by Ansible/Foreman).
    * [ ] Integrate **MetalLB for load balancing, Nginx-ingress for external access, and Metrics-server for resource monitoring** within Kubernetes.
    * [ ] **Tool Focus:** Kubernetes (`kubeadm`, `kubectl`), Ansible, MetalLB, Nginx-ingress, Metrics-server.
* **Module 3.3: Internal Git Server & Registry**
    * [ ] Provision a VM (using Foreman) for hosting the internal Git server (**GitLab Community Edition or Gitea**).
    * [ ] Configure access controls, repositories, and webhooks on the Git server.
    * [ ] Provision another VM (using Foreman) to act as an **internal Docker registry** (e.g., `registry:2` or a private Harbor instance).
    * [ ] Configure Kubernetes nodes to use the internal registry for pulling container images, optimizing image pull times and security.
    * [ ] **Tool Focus:** GitLab CE/Gitea, Docker Registry, Kubernetes (image pulling configuration).
* **Module 3.4: Logging and Monitoring Core (ELK Stack)**
    * [ ] Provision three VMs (using Foreman) to host an **Elasticsearch cluster**.
    * [ ] Provision a VM for **Logstash** to collect and process logs.
    * [ ] Provision a VM for **Kibana** for data visualization.
    * [ ] Configure **Metricbeat, Filebeat, and Journalbeat** on *every host* to push comprehensive system metrics, log files, and journal logs to the Elasticsearch cluster.
    * [ ] **Tool Focus:** Elasticsearch, Logstash, Kibana, various Beats, Ansible (for deployment).

**Deliverable:** A fully automated CI/CD pipeline for a Dockerized web application from the roadmap.sh project chain, demonstrating end-to-end CI/CD best practices and Infrastructure as Code (IaC) from a Git repository to a containerized deployment on a cloud VM. The core DevOps dashboard, Kubernetes cluster, internal Git/Registry, and ELK stack are all foundational components of your Unified IT Environment.

[[Phase4_Specialization]]