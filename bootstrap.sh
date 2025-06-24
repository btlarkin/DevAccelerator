#!/usr/bin/env bash
# bootstrap.sh — DevAccelerator environment setup

set -euo pipefail

echo "🚀 Bootstrapping DevAccelerator workspace..."

# ─── Sanity Check ───
VAULT_ROOT="$(pwd)"
if [[ ! -f "$VAULT_ROOT/README.md" ]]; then
  echo "❌ Run this script from the DevAccelerator root directory."
  exit 1
fi

# ─── Global Project Scripts ───
echo "🔧 Linking project scripts globally..."
chmod +x scripts/new_project.sh scripts/launch_project.sh
sudo ln -sf "$VAULT_ROOT/scripts/new_project.sh" /usr/local/bin/new_project
sudo ln -sf "$VAULT_ROOT/scripts/launch_project.sh" /usr/local/bin/launch_project

# ─── Python Dev Packages ───
echo "🐍 Installing Python CLI tools..."
pip install --user black flake8 isort &>/dev/null || true

# ─── Node Global Packages ───
if command -v yarn &>/dev/null; then
  echo "🧶 Installing global Node tools..."
  yarn global add eslint prettier &>/dev/null || true
fi

# ─── Inject Obsidian Config ───
VAULT="$HOME/workspace/DevAccelerator"
OBS_SRC="$VAULT/10_Resources/obsidian_config"
OBS_DST="$VAULT/.obsidian"

echo "🧠 Applying prewired Obsidian config…"
rsync -av --delete "$OBS_SRC/" "$OBS_DST/" &>/dev/null

echo "✅ Obsidian config injected."

# ─── Workspace Directories ───
echo "📁 Ensuring local workspace structure..."
mkdir -p ~/projects ~/workspace ~/notes

echo "✅ DevAccelerator bootstrap complete!"
echo "💡 Try: devnew \"Client Uptime Monitor\""

