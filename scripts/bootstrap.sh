#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# OpenClaw Clone — Bootstrap Script
# Recreates a KiloClaw-like setup on a fresh Debian 12 machine
# ============================================================

echo "🦞 OpenClaw Clone Bootstrap"
echo "==========================="
echo ""

# Check OS
if ! grep -q "bookworm" /etc/os-release 2>/dev/null; then
    echo "⚠️  Warning: This script targets Debian 12 (bookworm)"
    read -p "Continue anyway? [y/N] " confirm
    [[ "$confirm" =~ ^[Yy]$ ]] || exit 1
fi

# --- 1. System packages ---
echo "📦 Installing system packages..."
apt-get update -qq
apt-get install -y -qq curl git jq wget unzip

# --- 2. Node.js ---
if ! command -v node &>/dev/null; then
    echo "📗 Installing Node.js v22..."
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
    apt-get install -y -qq nodejs
fi
echo "   Node.js $(node --version)"

# --- 3. OpenClaw ---
if ! command -v openclaw &>/dev/null; then
    echo "🦞 Installing OpenClaw..."
    npm install -g openclaw@2026.3.13
fi
echo "   OpenClaw $(openclaw --version 2>/dev/null || echo 'installed')"

# --- 4. Kilo CLI ---
if ! command -v kilo &>/dev/null; then
    echo "⚡ Installing Kilo CLI..."
    npm install -g @kilocode/kilo 2>/dev/null || echo "   (Kilo CLI may need manual install)"
fi

# --- 5. Workspace ---
WORKSPACE="$HOME/.openclaw/workspace"
mkdir -p "$WORKSPACE/memory"

echo "📁 Setting up workspace at $WORKSPACE..."

# Copy workspace files from this repo
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
if [ -d "$SCRIPT_DIR/workspace" ]; then
    cp -n "$SCRIPT_DIR/workspace/"*.md "$WORKSPACE/" 2>/dev/null || true
    echo "   Workspace files copied"
fi

# --- 6. Kilo config ---
KILO_CONFIG="$HOME/.config/kilo"
mkdir -p "$KILO_CONFIG"
if [ -f "$SCRIPT_DIR/config/opencode.json" ]; then
    cp -n "$SCRIPT_DIR/config/opencode.json" "$KILO_CONFIG/" 2>/dev/null || true
    echo "   Kilo config installed"
fi

# --- 7. Git setup for this repo ---
echo ""
echo "🔧 Initializing git repo..."
cd "$SCRIPT_DIR"
if [ ! -d .git ]; then
    git init
    git add -A
    git commit -m "Initial snapshot — KiloClaw server clone (2026-03-28)"
fi

echo ""
echo "✅ Bootstrap complete!"
echo ""
echo "Next steps:"
echo "  1. Configure your API keys: openclaw config"
echo "  2. Set up channels: openclaw channel add"
echo "  3. Start the gateway: openclaw gateway start"
echo "  4. Run your first agent session!"
echo ""
echo "📚 Docs: https://docs.openclaw.ai"
echo "💬 Community: https://discord.com/invite/clawd"
