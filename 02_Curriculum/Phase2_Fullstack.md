# 📚 Phase 2: Full-Stack Integration & The Cloud Resume Challenge (Weeks 9-16)

**Outcome:** Become a full-stack developer with hands-on cloud experience, ready for Tier 2 freelance projects and eligible for a junior developer role.

### 1. Database Fundamentals

* [ ] **[Complete SQL & Databases Bootcamp: Zero to Mastery](https://www.udemy.com/course/complete-sql-databases-bootcamp-zero-to-mastery/)**
* [ ] **[[mysqlcrashcourse.pdf|My SQL Crash Course]]**

### 2. Backend Development (Node.js & Python)

* [ ] **[Complete Node.js Developer in 202X](https://www.udemy.com/course/complete-nodejs-developer-zero-to-mastery/)**
* [ ] **[Complete Python Developer in 202X](https://www.udemy.com/course/complete-python-developer-zero-to-mastery/) [[200_backend|Backend Learning Path]]**
* [ ] **[[blogging-platform-api|Blogging Platform API:]]** Build the backend to handle posts, comments, and users.
* [ ] **[[todo-list-api|Todo List API:]]** Build a basic backend API with authentication for managing tasks.
* [ ] **[[expense-tracker-api|Expenses Tracker API:]]** Create a secure API to manage financial data.
* [ ] **[[weather-api-wrapper-service|Weather API:]]** Build a backend to fetch and cache data from a third-party weather service.
* [ ] **[[github-user-activity|GitHub User Activity:]]** Create a backend to retrieve and display user activity from the GitHub API.

### 3. Capstone Project 1: The Cloud Resume Challenge (CRC)

* [ ] **[The Cloud Resume Challenge](https://cloudresumechallenge.dev/docs/the-challenge/aws/)**
* [ ] **[[The Cloud Resume Challenge Guidebook - AWS Edition.pdf|The Cloud Resume Challenge Guidebook - AWS Edition]]**
* [ ] **Action:** Build a serverless resume website using S3, Lambda, API Gateway, and DynamoDB to demonstrate practical cloud skills and serverless architecture.

### 4. Full-Stack Project Clusters

* [ ] **[[personal-blog|Personal Blog:]]** Develop the frontend interface for the blog that consumes your API.
* [ ] **[[task-tracker|Task Tracker:]]** Build the frontend UI for managing a to-do list.
* [ ] **[[fitness-workout-tracker|Workout Tracker:]]** Develop a frontend to log and track workout data.
* [ ] **[[expense-tracker|Expense Tracker:]]** Create the user interface for tracking expenses.
* [ ] **[[weather-app|Weather Web App:]]** Build the frontend to display weather data from your API.

### 5. Continue with OSSU Core CS Topics

* [ ] **[[10_Resources/computer-science/README#Core math|Core math:]]** Complete "Mathematics for Computer Science".
* [ ] **[[10_Resources/computer-science/README#Core systems|Core systems:]]** Complete the "Nand to Tetris" sequence, "Operating Systems: Three Easy Pieces," and "Computer Networking: a Top-Down Approach".
* [ ] **[[10_Resources/computer-science/README|Core theory:]]** Complete the "Algorithms" specialization courses.
* [ ] **[[10_Resources/computer-science/README#Core programming|Core programming:]]** Complete the remaining courses from the "Core programming" section.
* [ ] **[[10_Resources/computer-science/README#CS Tools|CS Tools:]]** Complete "The Missing Semester of Your CS Education".
* [ ] **[[10_Resources/computer-science/README#Core security|Core security:]]** Complete the courses on security fundamentals and secure coding.
* [ ] **[[10_Resources/computer-science/README#Core applications|Core applications:]]** Complete the courses on databases, machine learning, computer graphics, and software engineering.
* [ ] **[[10_Resources/computer-science/README#Core ethics|Core ethics:]]** Complete the ethics courses.

### 6. Unified IT Environment Project: Phase 2 Modules

* **Module 2.1: Hybrid Cloud VM Deployment & Basic Networking**
    * [ ] Deploy an **AWS-like VM** (Ubuntu Server) and an **Azure-like VM** (Windows Server or Ubuntu Server) using VirtualBox.
    * [ ] Configure basic networking: Ensure all VMs can communicate with each other using Bridged networking.
    * [ ] Apply initial security measures like firewalls (UFW on Linux, Windows Firewall) to control basic traffic.
    * [ ] **Tool Focus:** VirtualBox, Ubuntu Server, Windows Server (optional), basic networking (IP addressing, firewall rules).
* **Module 2.2: Centralized Provisioning & Initial Configuration Management (Foreman+Katello)**
    * [ ] Deploy a VM and install Foreman+Katello for infrastructure provisioning and lifecycle management.
    * [ ] Configure Foreman components and register FreeIPA hosts to the Foreman server.
    * [ ] Set up a DHCP server (e.g., `isc-dhcp-server` or within Foreman) to handle PXE instructions for unattended provisioning.
    * [ ] Use Foreman to provision an unattended VM (e.g., a new Ubuntu Server instance) and install **Ansible** on it (this will be your Ansible control node).
    * [ ] **Tool Focus:** VirtualBox, Foreman+Katello, DHCP, PXE boot, Ansible (initial setup).
* **Module 2.3: Storage & Email Services**
    * [ ] Provision a VM (using Foreman) and configure it as an **ISCSI target**, then install an **NFS server** for centralized storage.
    * [ ] Provision another VM (using Foreman) and install an **email server** (e.g., Zimbra, iRedMail, Mailinabox).
    * [ ] Reconfigure all existing VMs to use the newly provisioned email server for sending notifications and alerts.
    * [ ] **Tool Focus:** Ansible (for configuration management), ISCSI, NFS, chosen email server software.

**Deliverable:** A live Cloud Resume Challenge site, fully showcasing serverless architecture, and foundational backend APIs for a full-stack web application (React + Node.js/ Django) wired to a SQL database. Your hybrid VM setup is complete, Foreman+Katello is configured for provisioning, and core storage/email services are operational.

[[Phase3_DevOps]]