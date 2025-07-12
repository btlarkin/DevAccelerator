# 📚 **Phase 1: Core Infrastructure & Foundational Full-Stack for Gaming (Weeks 5-12)**

**Outcome:** Deploy foundational Unified IT Environment components (VMs, authentication, provisioning) and build core front-end and back-end web development skills, enabling basic freelancing and preparing for game development.

### 1. **Core Full-Stack Web Development**

- [ ] [**The Complete JavaScript Course**](https://www.udemy.com/course/the-complete-javascript-course/ "null"): Master JavaScript fundamentals.
    
- [ ] **[[learnenoughhtmlcssandlayouttobedangerous.pdf|Learn Enough HTML, CSS, & Layout to be Dangerous]]**: Essential web styling and structure.
    
- [ ] [**The Complete Developer (TypeScript, React, Next.Js, MongoDB, Docker)**](https://www.google.com/search?q=https://www.udemy.com/course/the-complete-developer-master-the-full-stack-with-typescript-react-nextjs-mongodb-and-docker/ "null"): Build a modern full-stack application foundation.
    
- [ ] **Project: Enhance Game Landing Page / Personal Portfolio**: Evolve your game landing page into a more robust site, potentially adding sections for "About the Studio," "Dev Blog," or integrating it with your personal portfolio.
    
- [ ] [**Complete SQL & Databases Bootcamp: Zero to Mastery**](https://www.udemy.com/course/complete-sql-databases-bootcamp-zero-to-mastery/ "null"): Understand database fundamentals, crucial for game data, user accounts, and future e-commerce.
    
- [ ] [**Complete Node.js Developer in 202X**](https://www.udemy.com/course/complete-nodejs-developer-zero-to-mastery/ "null") (Recommended for web dev alignment) **OR** [**Complete Python Developer in 202X**](https://www.udemy.com/course/complete-python-developer-zero-to-mastery/ "null"): Choose one to master backend development.
    
- [ ] **Project: Player Profile API & Web Dashboard (Basic)**:
    
    - [ ] **Action:** Develop a backend API (using Node.js/Python) to store and retrieve basic player character data (e.g., core stats, simple inventory placeholders, player ID).
        
    - [ ] **Action:** Build a simple web-based dashboard (using React) that displays this player data, accessible via your game's website. This will be the foundation for the player's personal overview.
        

### 2. **Unified IT Environment Project: Phase 1 Infrastructure Modules**

- [ ] **Automation Focus:** Use `infractl init-infra` to set up your `vanilla_project_infra` locally, pulling the latest blueprint.
    
- [ ] **Module 1.1: Hybrid Cloud VM Deployment & Basic Networking:**
    
    - [ ] **Action:** Deploy an **AWS-like VM** (Ubuntu Server) and an **Azure-like VM** (Windows Server or Ubuntu Server) using VirtualBox. These will host different parts of your game's backend.
        
    - [ ] **Configuration:** Configure basic Bridged networking to ensure all VMs can communicate with each other.
        
    - [ ] **Security:** Apply initial security measures like firewalls (UFW on Linux, Windows Firewall) to control basic traffic.
        
    - **Tool Focus:** VirtualBox, Ubuntu Server, Windows Server (optional), basic networking (IP addressing, firewall rules).
        
- [ ] **Module 1.2: Centralized Authentication (FreeIPA) & Provisioning (Foreman+Katello):**
    
    - [ ] **Action:** Deploy two VMs for **FreeIPA authentication services** (Ubuntu Server). This will be used to manage user accounts for your game platform and internal studio operations, including authenticating users for the **Player Profile API**.
        
    - [ ] **Action:** Deploy a VM and install **Foreman+Katello** for infrastructure provisioning and lifecycle management.
        
    - [ ] **Configuration:** Configure Foreman components and register your FreeIPA hosts to the Foreman server.
        
    - [ ] **Automation:** Set up a DHCP server (e.g., `isc-dhcp-server` or within Foreman) to handle PXE instructions for unattended provisioning.
        
    - [ ] **Action:** Use Foreman to provision an unattended VM (e.g., a new Ubuntu Server instance) and install **Ansible** on it (this will be your Ansible control node).
        
    - **Tool Focus:** FreeIPA, Foreman+Katello, DHCP, PXE boot, Ansible.
        

### 3. **Intro to Freelancing & Project Management**

- [ ] [**Complete Guide to Freelancing: Zero to Mastery**](https://www.udemy.com/course/complete-guide-to-freelancing-zero-to-mastery/ "null"): Provides the business fundamentals you need to start earning immediately.
    
- [ ] **[[scrum-the-art-of-doing-twice-the-work-in-half-the-time_compress.pdf|Scrum: The Art of Doing Twice the Work in Half the Time]]**: Learn Agile project management to deliver client work efficiently.
    
- [ ] **Action:** Immediately start searching for Tier 1 freelance projects (e.g., static sites, landing pages, minor enhancements) to build cash flow and testimonials, supporting your indie dev studio.
    

**Deliverable:** Core hybrid VMs and authentication/provisioning services of your Unified IT Environment are deployed via IaC. You have a robust game landing page/personal portfolio, and foundational full-stack skills (JavaScript, HTML, CSS, React, Node.js/Python, SQL), including a **basic Player Profile API and web dashboard**, ready to tackle basic freelance projects and prepare for core game development.