# 📚 **Phase 0: Foundation & Your Control Center (Weeks 1-4)**

**Outcome:** Establish a solid understanding of computer science fundamentals and create your fully configured `Local Development VM`, which serves as your command center for all infrastructure and application development. This phase also introduces your first tangible web project: a landing page for your game.

obsidian://open?vault=DevAccelerator&file=02_Curriculum%2FPhase0_Primer

### 1. **Core Computer Science Fundamentals**

- [ ] [**Harvard CS50**](https://youtu.be/h6lqxDwUmJQ?si=uzLE-N6VoMC6eDgL "null"): Comprehensive introduction to computation and problem-solving.
    
- [ ] **Read** _**The Imposter's Handbook**_ **(Book 1)**: Read this in parallel to reinforce CS fundamentals.
    
- [ ]  [**How to learn JavaScript to Make Games**](https://www.youtube.com/watch?v=XZEcO3OWjdA "null"): This crash course provides foundational JavaScript concepts specifically tailored for game development. It will give you a stronger understanding of underlying game programming principles, better preparing you for later phases.
    

### 2. **Unified IT Environment Project: Local Development Environment Setup**

- [x] **Action:** Deploy your **Local Development VM** using VirtualBox with **Arch Linux** as your primary workstation. This VM will be your personal control center.
    
- [x] **Configuration:** Set up a terminal-first environment with **Neovim, tmux, tmuxp, Git**, and essential command-line tools (e.g., `fzf`, `ripgrep`). Ensure fluent usage.
    
- [x] **Automation Focus:** Utilize `devctl bootstrap os`, `devctl bootstrap chroot`, `devctl bootstrap apps`, and `devctl user setup` to automate this setup. This includes cloning your `DevAccelerator` repository (containing `infractl`) and ensuring `infractl` is available in your PATH.
    
- **Outcome:** A ready-to-use, powerful `Local Development VM` from which you'll manage your entire infrastructure. Your `devctl` and `infractl` scripts are operational.
    

### 3. **NEW! Game Landing Page (Initial Web Project)**

- [ ] **Action:** Build a simple, static **landing page for your "Arcane Runes" game**. This will be your very first public-facing web project.
    
    - Focus on basic HTML structure, CSS styling, and minimal JavaScript for interactive elements (e.g., a simple image carousel or a "Coming Soon" countdown).
        
    - This project serves as an immediate application of your foundational web skills and sets the stage for the game itself.
        
- **Tool Focus:** HTML, CSS, JavaScript, Git.
    

**Deliverable:** A fully configured `Local Development VM` ready for complex tasks. A basic, static landing page for "Arcane Runes" deployed (e.g., via GitHub Pages or a simple Nginx static server).