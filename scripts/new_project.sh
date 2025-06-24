#!/usr/bin/env bash
# new_project.sh – scaffold & register a new project end-to-end

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: new_project.sh \"<Project Title>\""
  exit 1
fi

#############################################
# Config – adjust these paths if you moved things
#############################################
VAULT_ROOT="$HOME/workspace/DevAccelerator"
TEMPLATE_DIR="$VAULT_ROOT/11_Project_Templates/VanillaWebProject"
PROJECTS_DIR="$HOME/projects"
KANBAN_FILE="$VAULT_ROOT/00_Roadmap_Kanban.md"
OBSIDIAN_NOTE_DIR="$VAULT_ROOT/03_Projects"
#############################################

TITLE="$1"
# slug: lowercase, dashes for spaces, strip non-alphanum/dash
SLUG=$(echo "$TITLE" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g' \
  | sed -E 's/^-|-$//g')

PROJECT_PATH="$PROJECTS_DIR/$SLUG"
NOTE_PATH="$OBSIDIAN_NOTE_DIR/$SLUG.md"

echo "🛠  Creating project '$TITLE' → $PROJECT_PATH"

# 1) Copy vanilla template
rm -rf "$PROJECT_PATH"
cp -r "$TEMPLATE_DIR" "$PROJECT_PATH"

# 2) Git init & first commit
cd "$PROJECT_PATH"
rm -rf .git
git init
git add .
git commit -m "chore: scaffold project '$TITLE'"

# 3) Create Obsidian note
mkdir -p "$OBSIDIAN_NOTE_DIR"
cat > "$NOTE_PATH" <<EOF
---
title: "$TITLE"
date: $(date +"%Y-%m-%d")
tags: [project]
---

# $TITLE

> Scaffolded on $(date +"%Y-%m-%d").

## Overview

## Tasks

- [ ] Kickoff meeting
- [ ] …
EOF

echo "🗒  Note created: $NOTE_PATH"

# 4) Update Kanban
echo "- [ ] $TITLE" >> "$KANBAN_FILE"
echo "✅ Kanban updated: $KANBAN_FILE"

# 5) Success message
echo "✅ Scaffold complete!"

obsidian "$NOTE_PATH" &>/dev/null &

