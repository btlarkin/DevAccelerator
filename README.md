# 🧠 Dev Accelerator: Study & Freelance Ops Dashboard

A complete, reproducible workflow for going from **full-stack learner → early freelancer → specialized consultant** in ~9 months.
Based on a focused 36-week roadmap, real-world deliverables, and a mouseless, terminal-first environment powered by:

- **tmux 3: A Practical Guide**
- **Building Your Mouseless Development Environment**
- **Learn Enough Dev Tools to Be Dangerous**

---

## 📁 Vault Structure
DevAccelerator/
├── README.md
├── 00_Index.md
├── 01_Projected_Outcome.md
├── 02_Curriculum/
│   ├── Phase1_Foundational.md
│   ├── Phase2_FullStack-CRC.md
│   ├── Phase3_DevOps-Capstones.md
│   └── Phase4_Specialization.md
├── 03_Timeline.md
├── 04_Process.md
├── 05_Packages.md
├── 06_Business_Model.md
├── 07_Weekly_Reviews/
│   └──YYYY-MM-DD.md
├── 08_Client_Work/
│   ├── Leads.md
│   └── Proposals.md
├── 09_Templates/
│   ├── Note Frontmatter.md
│   └── Weekly Review.md
├── 10_Resources/
│   ├── tmux3-guide.pdf
│   ├── mouseless-env.pdf
│   └── learn-dev-tools.pdf
├── scripts/
│   ├── new_project.sh
│   ├── generate_report.py
│   └── weekly_log.sh
└── 00_Roadmap_Kanban.md

---

## 📚 Key Reference Books & Guides

1. **tmux 3: A Practical Guide**
   Comprehensive walkthrough of tmux v3’s features, session management, pane orchestration, scripting & automation. This guide is integral to implementing the mouseless, terminal-first workflow for efficient development and overemployment.

2. **Building Your Mouseless Development Environment**
   Step-by-step on choosing terminal emulator, shell, editor integrations, and crafting keyboard-driven workflows. This is a core pillar for maximizing your capacity to handle multiple roles and client projects.

3. **Learn Enough Dev Tools to Be Dangerous**
   Hands-on primer covering fzf, ripgrep, bat, GitHub CLI (`gh`), taskwarrior, Docker CLI, and more. These tools directly support the DevOps and automation phases of the curriculum and are essential for your tiered service offerings.

---

## ⚙️ Technical Environment Setup

Your terminal is your IDE. Everything below ties back to those three guides.

### Shell & Terminal
- **Shell:** zsh (oh-my-zsh + autosuggestions + syntax highlighting)
- **Terminal:** Kitty or Alacritty (load themes from `10_Resources/`)

### Multiplexer
- **tmux v3**, configured per **tmux 3** book:
  - `~/.tmux.conf` includes session naming, synchronized panes, popup support
  - Keybindings:
    - `prefix + c` → new window
    - `prefix + |` → vertical split
    - `prefix + -` → horizontal split
    - `prefix + h/j/k/l` → pane navigation
    - `prefix + ?` → list-bindings

### Editor
- **Neovim** with LSP, Treesitter, Telescope
  - Config per **Building Your Mouseless Dev Env**
  - `:Telescope find_files` / `:FZF` for fuzzy search

### Core Utilities
- fzf, ripgrep, fd, bat, jq, curl, httpie
- gh (GitHub CLI), lazygit
- taskwarrior or todo.txt
- Docker CLI, docker-compose

### Session Persistence
- tmux-resurrect + tmux-continuum for auto-save/restore
- Dotfiles on GitHub; bootstrap with `bootstrap.sh`

---

*(The rest of your docs follow in separate files.)*