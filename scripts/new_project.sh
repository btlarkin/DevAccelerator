#!/usr/bin/env bash
# new_project.sh: Scaffold a new phase note and add to Kanban

if [ -z "$1" ]; then
  echo "Usage: $0 PhaseX_Title"
  exit 1
fi

NAME="$1"
FILE="02_Curriculum/${NAME// /_}.md"
KANBAN="../00_Roadmap_Kanban.md"

# Create note
cat << EOF > "$FILE"
# ${NAME//_/ } (New Phase)

**Materials**  

**Deliverable**  

EOF

# Add to Kanban backlog
sed -i "/## Backlog/a - [ ] ${NAME//_/ }" "$KANBAN"

echo "Created $FILE and updated Kanban backlog."
