# 📚 **Phase 2: Game Development, Containerization & Initial Deployment (Weeks 13-20)**

**Outcome:** Build your core web-based game, containerize it, and deploy it to your evolving infrastructure, establishing a strong foundation in DevOps principles including CI/CD and container orchestration. The game will integrate with your backend player profile system.

### 1. **Core Game Development & Deployment**

- [ ] [**Easy JavaScript Game Development with Kaboom.js (Mario, Zelda, and Space Invaders) - Full Course**](https://www.youtube.com/watch?v=4OaHB0JbJDI "null"):
    
    - [ ] **Action:** Build the core 2D action-adventure game ("Arcane Runes") using Kaboom.js. Focus on implementing the core mechanics (platforming, combat, puzzle solving) and ensuring **PC and mobile browser compatibility**.
        
    - [ ] **Action:** Explore and implement **Progressive Web App (PWA)** features for an app-like experience (offline capabilities, home screen install).
        
    - [ ] **Integration:** Integrate the game with your **Player Profile API** (developed in Phase 1) to fetch initial player stats or save basic progress directly from within the game client (when online).
        
- [ ] **Containerization:** Learn to containerize your game (frontend) and its initial backend API services, including the **Player Profile API**, using **Docker**. This is crucial for consistent deployment.
    

### 2. **Unified IT Environment Project: Phase 2 Infrastructure Modules**

- [ ] **Automation Focus:** Use `infractl deploy <game_project_name>` to deploy your game's infrastructure, continuously updating your `vanilla_project_infra` blueprint.
    
- [ ] **Module 2.1: Core DevOps Dashboard & CI/CD Pipeline:**
    
    - [ ] **Action:** Deploy a **Testing, Ticketing, Deployment VM** (Ubuntu Server) using Foreman.
        
    - [ ] **Automation:** Implement a comprehensive **CI/CD pipeline (Jenkins, GitLab CI, or GitHub Actions Self-Hosted Runner)** on this VM.
        
    - [ ] **Configuration:** Configure automated testing (e.g., Pytest for backend, Jest for frontend/game logic) and automated deployment processes within the pipeline for your game and **Player Profile API**.
        
    - **Tool Focus:** Jenkins/GitLab CI/GitHub Actions, testing frameworks.
        
- [ ] **Module 2.2: Kubernetes Cluster Foundation:**
    
    - [ ] **Action:** Provision three VMs (1 master, 2 workers) for a **Kubernetes cluster** using `kubeadm` (managed by Ansible/Foreman).
        
    - [ ] **Integration:** Integrate **MetalLB for load balancing** and **Nginx-ingress for external access** to your game's services and the **Player Profile API**.
        
    - **Tool Focus:** Kubernetes (`kubeadm`, `kubectl`), MetalLB, Nginx-ingress.
        
- [ ] **Module 2.3: Internal Git Server & Docker Registry:**
    
    - [ ] **Action:** Provision a VM for an **internal Git server (GitLab Community Edition or Gitea)**. Your game's source code and **Player Profile API** code will be hosted here.
        
    - [ ] **Action:** Provision another VM to act as an **internal Docker registry** (e.g., `registry:2`). Your game's and API's Docker images will be stored here.
        
    - [ ] **Configuration:** Configure Kubernetes nodes to use the internal registry for pulling container images, optimizing image pull times and security.
        
    - **Tool Focus:** GitLab CE/Gitea, Docker Registry.
        
- [ ] **Module 2.4: Logging and Monitoring Core (ELK Stack):**
    
    - [ ] **Action:** Provision VMs for an **Elasticsearch cluster, Logstash, and Kibana**.
        
    - [ ] **Configuration:** Configure **Beats** (Metricbeat, Filebeat, Journalbeat) on all your game's VMs and Kubernetes nodes to push logs and metrics to the ELK stack. This is crucial for debugging your game, the **Player Profile API**, and understanding overall performance.
        
    - **Tool Focus:** Elasticsearch, Logstash, Kibana, various Beats.
        

**Deliverable:** A playable web-based game ("Arcane Runes") with PWA capabilities, integrated with a basic **Player Profile API**, all containerized and deployed via an automated CI/CD pipeline to your Kubernetes cluster within your Unified IT Environment. Your core DevOps dashboard, Git server, Docker registry, and ELK stack are operational, providing initial insights into your game's and API's performance.