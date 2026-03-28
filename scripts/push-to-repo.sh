#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# Push openclawclone to GitHub
# Run this from the server terminal
# ============================================================

REPO_URL="https://github.com/forsonny/openclawclone.git"
REPO_DIR="/root/.openclaw/workspace/openclawclone"

cd "$REPO_DIR"

# Make bootstrap executable
chmod +x scripts/bootstrap.sh 2>/dev/null || true
chmod +x scripts/push-to-repo.sh 2>/dev/null || true

# Init git if needed
if [ ! -d .git ]; then
    git init
fi

# Set up remote
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"

# Stage everything
git add -A

# Commit
git commit -m "🦞 Full KiloClaw server snapshot — 2026-03-28

Server: d8d3e90a177e48 (Fly.io)
OS: Debian 12 Bookworm
OpenClaw: 2026.3.13
Node.js: v22.22.1
2 vCPUs, 3GB RAM, 8GB disk

Includes:
- Workspace files (AGENTS.md, SOUL.md, TOOLS.md, etc.)
- OpenClaw config templates
- Server specs & system info
- Skills listing (17 skills)
- Bootstrap script for recreating setup
" 2>/dev/null || git commit --allow-empty -m "🦞 Full KiloClaw server snapshot — 2026-03-28"

# Push (may need auth)
echo "🚀 Pushing to $REPO_URL..."
git branch -M main
git push -u origin main --force

echo "✅ Done! Repo pushed to $REPO_URL"
