#!/usr/bin/env bash
set -euo pipefail

# Fetch the unified installer
curl -fsSL https://github.com/btlarkin/DevAccelerator/raw/refs/heads/main/scripts/devctl \
  -o devctl

chmod +x devctl

# Now run the OS bootstrap
exec ./devctl bootstrap os

