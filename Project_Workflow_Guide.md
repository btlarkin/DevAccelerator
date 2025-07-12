# 🚀 Your Unified IT Environment: Full Project Workflow Guide

This guide outlines the end-to-end workflow for leveraging your `devctl` and `infractl` scripts to manage your personal development environment and deploy reproducible IT infrastructures for various projects. It covers everything from initial setup to application deployment and considerations for client delivery.

## 🎯 Goal

To establish a highly automated, reproducible, and modular IT environment that allows you to:

- Rapidly set up your personal `Local Development VM`.
    
- Deploy project-specific instances of your comprehensive unified IT infrastructure (hybrid cloud VMs, DevOps tools, Kubernetes, ELK stack, FreeIPA, Ethereum).
    
- Develop and deploy applications seamlessly within this environment.
    
- Understand different strategies for delivering projects to clients.
    

## 📋 Prerequisites

Before you begin, ensure you have the following in place on your physical host machine (the machine running VirtualBox):

- **VirtualBox:** Installed and configured.
    
- **Sufficient Resources:** Adequate RAM, CPU, and disk space on your host to run multiple VMs simultaneously.
    
- **Internet Connection:** For downloading ISOs, packages, and cloning repositories.
    
- **Git Repository for `DevAccelerator`:** Your `DevAccelerator` repository (containing `devctl` and `infractl`) should be accessible (e.g., on GitHub or your internal Git server).
    
- **Git Repository for `vanilla_project_infra`:** Your `vanilla_project_infra` repository (containing Terraform, Ansible, Kubernetes manifests) should also be accessible.
    

## 🛠️ Core Automation Components

- **`devctl` (Development Control Script):** Your personal workstation bootstrapping and project scaffolding tool. It sets up your `Local Development VM` with your preferred OS (Arch Linux), dotfiles, and development tools. It also helps manage individual application projects.
    
- **`infractl` (Infrastructure Control Script):** Your infrastructure orchestration tool. Residing within `DevAccelerator`, it uses IaC (Terraform, Ansible) to deploy and manage instances of your `vanilla_project_infra` for specific projects.
    

## 🚶 Full Workflow Walkthrough

### Phase 0: Initial Host Setup & Local Development VM Bootstrapping

This phase focuses on getting your primary control center, the `Local Development VM`, fully operational.

1. **Prepare Your Host Machine:**
    
    - **Action:** Install **VirtualBox** on your physical computer.
        
    - **Note:** This is a one-time setup on your host.
        
2. **Boot Arch Linux ISO on VM & Initial OS Install:**
    
    - **Action:** Create a new VirtualBox VM for your "Local Development VM". Attach the Arch Linux ISO to it and boot the VM. Get to a basic command-line environment within the VM (e.g., the Arch LiveCD environment).
        
    - **Script:** `devctl bootstrap os`
        
        ```
        # From within the Arch Linux LiveCD environment on your new VM:
        # First, download devctl.sh (replace with your actual DevAccelerator URL)
        curl -fsSL https://raw.githubusercontent.com/btlarkin/DevAccelerator/main/scripts/devctl -o /root/devctl.sh
        chmod +x /root/devctl.sh
        
        # Now, run the OS bootstrap command
        /root/devctl.sh bootstrap os
        ```
        
        - **What it does:** This script will guide you through partitioning the VM's virtual disk, installing the base Arch Linux system, and preparing for the chroot configuration. You will interactively select the disk, set a hostname, and confirm destructive actions.
            
        - **Outcome:** A minimal Arch Linux system is installed on your VM's virtual disk.
            
3. **Configure Chroot Environment & User Setup:**
    
    - **Action:** After `devctl bootstrap os` completes, the VM will likely reboot. Log into your newly installed Arch Linux VM (as root initially, or as the user `devctl` creates if it automatically reboots into the installed system).
        
    - **Script:** `devctl bootstrap chroot`
        
        ```
        # After rebooting into your newly installed Arch Linux VM:
        # Ensure devctl is in your PATH or run it directly if needed
        devctl bootstrap chroot
        ```
        
        - **What it does:** Configures the bootloader (GRUB), sets timezone and locale, prompts for the root password, and creates your main non-root user with `sudo` privileges.
            
        - **Key Interaction:** During this process, you will be prompted to confirm if you want to run `devctl bootstrap apps` and `devctl user setup`. **It is crucial to answer "Yes" to both prompts.**
            
        - **Outcome:** Your user account is set up, and the system is ready for core application and environment configuration.
            
4. **Install Base Applications & User Environment:**
    
    - **Action:** These steps are automatically triggered by `devctl bootstrap chroot` if you answered "Yes" to the prompts.
        
    - **Scripts:** `devctl bootstrap apps` and `devctl user setup`
        
        ```
        # (These are called automatically by devctl bootstrap chroot)
        # devctl bootstrap apps
        # devctl user setup
        ```
        
        - **What `devctl bootstrap apps` does:** Presents a dialog where you can select package groups (e.g., `desktop-env`, `dev-tools`). **Crucially, ensure you have an `infra-tools` group defined in your `apps.csv` (within `DevAccelerator`) that includes Terraform, Ansible, VirtualBox CLI tools, cloud CLIs (AWS/Azure), `kubectl`, `helm`, `docker`, `geth`, `solc`, `nodejs`, `npm`, etc.** This command installs those.
            
        - **What `devctl user setup` does:** Installs `yay` (the AUR helper), clones your `dotfiles` repository, and **clones your `DevAccelerator` repository** (which contains `infractl`) into `$HOME/opt/DevAccelerator`. It also ensures `infractl` is added to your system's PATH (e.g., by symlinking to `/usr/local/bin`).
            
        - **Outcome:** Your `Local Development VM` is now fully configured as your personal control center, with all development tools and your `infractl` script ready for use.
            

### Phase 1: Initialize Infrastructure Repository

This phase prepares your `Local Development VM` to manage your unified IT infrastructure.

1. **Initialize `vanilla_project_infra`:**
    
    - **Action:** Clone your core Infrastructure as Code repository and prepare Terraform.
        
    - **Script:** `infractl init-infra`
        
        ```
        # From your Local Development VM:
        infractl init-infra
        ```
        
        - **What it does:** This command clones your `vanilla_project_infra` Git repository (e.g., to `~/projects/vanilla_project_infra`) and then runs `terraform init` within its `terraform/` directory to download necessary providers and modules.
            
        - **Outcome:** You now have the complete blueprint for your unified IT environment locally, ready to be deployed.
            

### Phase 2: Create and Deploy Project-Specific Infrastructure

Now, you'll provision a dedicated instance of your vanilla infrastructure, tailored for a new application project.

1. **Scaffold a New Application Project:**
    
    - **Action:** Create the initial directory and Git repository for your new application.
        
    - **Script:** `devctl project new <Project Title>`
        
        ```
        # From your Local Development VM:
        devctl project new "My Awesome Web App"
        # This will create ~/projects/my-awesome-web-app and a corresponding Obsidian note.
        ```
        
        - **What it does:** Copies a template application project into a new directory, initializes a Git repository for it, and creates a project note in your Obsidian vault.
            
        - **Outcome:** You have a new, empty application project ready for development.
            
2. **Deploy Project Infrastructure:**
    
    - **Action:** Deploy the full unified IT environment specifically for your new application project.
        
    - **Script:** `infractl deploy <project_name>`
        
        ```
        # From your Local Development VM:
        infractl deploy my-awesome-web-app
        ```
        
        - **What it does:** This is the core deployment step.
            
            - It uses the Terraform configurations from your `vanilla_project_infra` to provision all the necessary VirtualBox VMs on your host machine (e.g., AWS-like VM, Azure-like VM, Kubernetes cluster nodes, ELK stack VMs, FreeIPA servers, Ethereum nodes).
                
            - It then executes Ansible playbooks (also from `vanilla_project_infra`) to configure the operating systems and install/configure all the specified services (e.g., Jenkins, Prometheus, Grafana, Kubernetes components, Elasticsearch, Logstash, Kibana, FreeIPA, Ethereum clients, smart contracts).
                
            - **Customization:** The `deploy` command can be extended to accept project-specific variables (e.g., via a `terraform.tfvars` file in a project-specific directory like `~/projects/my-awesome-web-app-infra/`) to tweak the vanilla setup (e.g., more web servers, different VM sizes, specific Kubernetes namespaces for the app).
                
        - **Outcome:** A complete, running, and customized instance of your unified IT environment is now active, ready to host and manage your application.
            

### Phase 3: Application Development & CI/CD

This phase focuses on building your application and leveraging the deployed infrastructure for automated testing and deployment.

1. **Develop Your Application:**
    
    - **Action:** Write the code for "My Awesome Web App" within its project directory (`~/projects/my-awesome-web-app`).
        
    - **Tools:** Your IDE (VSCode/Neovim), Git, Docker, Python virtual environments, etc. – all managed and available on your `Local Development VM` thanks to `devctl`.
        
    - **Note:** No specific `devctl`/`infractl` command is run here; you're just coding.
        
2. **Automated Project Setup (Optional, for local app dependencies):**
    
    - **Action:** If your application project has specific local dependencies (e.g., Node.js packages).
        
    - **Script:** `devctl project setup`
        
        ```
        cd ~/projects/my-awesome-web-app
        devctl project setup
        ```
        
        - **What it does:** Runs commands like `npm install` if a `package.json` is detected, and ensures global tools like `browser-sync` are available. You can extend this to handle other project-specific local setup.
            
3. **Launch Development Environment (Optional, for structured terminal sessions):**
    
    - **Action:** Start a persistent and organized `tmux` session for your project.
        
    - **Script:** `devctl project launch`
        
        ```
        cd ~/projects/my-awesome-web-app
        devctl project launch
        ```
        
        - **What it does:** Looks for a `.tmuxp.yaml` configuration in your project directory and launches or attaches to a `tmux` session, providing a structured terminal workspace for your development.
            
4. **Version Control & CI/CD Pipeline:**
    
    - **Action:** Push your application code to your Git server (e.g., GitLab Community Edition or Gitea) which is part of your deployed infrastructure. The CI/CD pipeline (Jenkins/GitLab CI/GitHub Actions) then automates the build and deployment.
        
    - **Tools:** Git, Jenkins/GitLab CI/GitHub Actions (running on your "Testing, Ticketing, Deployment VM," which was set up by `infractl`).
        
    - **Workflow:**
        
        - You commit and push changes from `~/projects/my-awesome-web-app` to your Git server.
            
        - Your CI/CD pipeline (defined in your application's repository, e.g., `.gitlab-ci.yml`) is triggered.
            
        - The pipeline builds a Docker image of your application, runs automated tests (unit, integration, end-to-end).
            
        - The pipeline pushes the built Docker image to your Internal Docker Registry (also part of your `infractl`-deployed infrastructure).
            
        - Finally, the pipeline deploys the new version of your application (e.g., as Kubernetes deployments) to the Kubernetes cluster (which was provisioned and configured by `infractl`).
            

### Phase 4: Monitoring, Management & Client Delivery

This final phase covers ongoing operations, maintenance, and how you might deliver your work to a client.

1. **Monitor Your Infrastructure and Application:**
    
    - **Action:** Continuously observe the health, performance, and logs of your infrastructure and deployed application.
        
    - **Tools:** Grafana, Prometheus, Kibana (all components of your `infractl`-deployed environment).
        
    - **Script:** `infractl status <project_name>`
        
        ```
        # From your Local Development VM:
        infractl status my-awesome-web-app
        ```
        
        - **What it does:** Provides a quick summary of the status of VMs, Kubernetes pods, and Terraform resources associated with your project.
            
2. **Perform Backups:**
    
    - **Action:** Regularly back up critical data and configurations for your project.
        
    - **Script:** `infractl backup <project_name>`
        
        ```
        # From your Local Development VM:
        infractl backup my-awesome-web-app
        ```
        
        - **What it does:** Triggers predefined backup routines for databases, application data volumes, and critical configuration files within your project's infrastructure.
            
3. **Optimize or Suspend Infrastructure:**
    
    - **Action:** Manage resource consumption by suspending VMs when not in active use, and resuming them when needed.
        
    - **Scripts:** `infractl stow <project_name>` and `infractl unfurl <project_name>`
        
        ```
        # To save resources:
        infractl stow my-awesome-web-app
        
        # To resume work:
        infractl unfurl my-awesome-web-app
        ```
        
        - **What they do:** `stow` puts all VirtualBox VMs related to the specified project into a saved state, freeing up RAM and CPU on your host. `unfurl` restarts them from that saved state.
            

#### Client Delivery Options

When it comes to delivering your project to a client, you have several strategic options, each leveraging different aspects of your unified IT environment:

1. **Option A: Deliver the Application Code**
    
    - **Concept:** You develop the application, but the client is responsible for deploying and managing it on their own infrastructure.
        
    - **What you deliver:** The entire contents of your application's Git repository (e.g., `my-awesome-web-app`). This includes the application source code, Dockerfiles, and application-specific Kubernetes manifests (if applicable).
        
    - **Your role:** You act as a software developer. Your unified IT environment was your development and testing ground.
        
    - **Relevant `infractl`/`devctl` usage:** Primarily for your internal development and testing of the application within your lab. No direct `infractl` delivery command.
        
2. **Option B: Deliver the Infrastructure Blueprint (IaC)**
    
    - **Concept:** You provide the client with the Infrastructure as Code that defines your "vanilla" environment, allowing them to reproduce and manage it themselves.
        
    - **What you deliver:**
        
        - The `vanilla_project_infra` Git repository.
            
        - Any project-specific configuration files (e.g., `terraform.tfvars` files, Ansible variable files) that were used to customize the `vanilla_project_infra` for their specific application.
            
        - Comprehensive documentation (from your Documentation Server VM, which is part of your `vanilla_project_infra` setup).
            
    - **Your role:** You act as an Infrastructure Engineer/DevOps Consultant, providing a reproducible and manageable infrastructure solution.
        
    - **Relevant `infractl` usage:**
        
        - `infractl repack <project_name>` (Optional): If you want to provide pre-built `.ova` images of the fully configured VMs for easier initial setup by the client, though providing the IaC for them to build it is generally preferred for flexibility.
            
        - Ensure your documentation (hosted on the Documentation Server VM) is complete and client-ready.
            
3. **Option C: Provide a Managed Service**
    
    - **Concept:** You develop the application and also host/manage the entire infrastructure for the client. The client interacts directly with the deployed application.
        
    - **What you deliver:** Access to the running application. The client does not receive the underlying infrastructure code.
        
    - **Your role:** You act as a Managed Service Provider (MSP) or a Full-Stack DevOps Engineer. You are responsible for the ongoing operation, monitoring, and maintenance of both the application and its underlying infrastructure.
        
    - **Relevant `infractl` usage:** All `infractl` commands are crucial for your daily operations (`status`, `backup`, `stow`/`unfurl`, `deploy` for updates, `destroy` for decommissioning), ensuring the service remains stable and efficient. `devctl` continues to manage your personal development workstation.
        

This guide provides a comprehensive framework for managing your unified IT environment, from the ground up to client delivery. By adhering to these principles and leveraging your `devctl` and `infractl` scripts, you can achieve high levels of automation, reproducibility, and efficiency in your projects.
