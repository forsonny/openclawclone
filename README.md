# OpenClaw Clone — Full Server Snapshot

> Captured: 2026-03-28 11:13 UTC

A complete snapshot of a KiloClaw instance running on Fly.io.

## Server Details

| Property | Value |
|---|---|
| **Hostname** | `d8d3e90a177e48` |
| **OS** | Debian GNU/Linux 12 (bookworm) |
| **Kernel** | Linux 6.12.47-fly #1 SMP PREEMPT_DYNAMIC x86_64 |
| **CPU** | 2 vCPUs |
| **RAM** | 2.9 GiB (no swap) |
| **Disk** | 7.8 GiB (68 MiB used, 1%) |
| **Node.js** | v22.22.1 |
| **OpenClaw** | 2026.3.13 (commit 61d171a) |
| **Kilo CLI** | `/usr/local/bin/kilo` |
| **Uptime at capture** | 4 minutes (fresh instance) |

## Directory Structure

```
/
├── root/
│   ├── .openclaw/                    # OpenClaw home
│   │   ├── workspace/                # Agent workspace (YOUR files)
│   │   │   ├── AGENTS.md             # Workspace rules & conventions
│   │   │   ├── SOUL.md               # Agent personality & behavior
│   │   │   ├── TOOLS.md              # Environment & tool notes
│   │   │   ├── IDENTITY.md           # Name, creature, vibe (blank)
│   │   │   ├── USER.md               # About the human (blank)
│   │   │   ├── HEARTBEAT.md          # Periodic check config
│   │   │   └── BOOTSTRAP.md          # First-run setup script
│   │   └── ...
│   └── .config/
│       └── kilo/
│           └── opencode.json         # Kilo CLI config
├── usr/local/bin/
│   ├── openclaw                      # OpenClaw CLI
│   └── kilo                          # Kilo CLI
├── usr/local/lib/node_modules/openclaw/
│   └── skills/                       # All installed skills
│       ├── 1password/
│       ├── blogwatcher/
│       ├── clawhub/
│       ├── gh-issues/
│       ├── gifgrep/
│       ├── github/
│       ├── gog/
│       ├── healthcheck/
│       ├── mcporter/
│       ├── node-connect/
│       ├── session-logs/
│       ├── skill-creator/
│       ├── summarize/
│       ├── tmux/
│       ├── video-frames/
│       ├── voice-call/
│       ├── weather/
│       └── xurl/
└── etc/ (Debian system packages)
```

## What's Included

- `workspace/` — All agent workspace files (SOUL.md, AGENTS.md, etc.)
- `config/` — OpenClaw and Kilo configuration templates
- `server-info/` — System specs, installed packages, versions
- `scripts/` — Bootstrap script to recreate this setup
- `skills/` — Skill directory listing and descriptions

## What's NOT Included

- API keys, tokens, secrets (intentionally excluded)
- node_modules (too large, reinstallable)
- System packages (installable via apt)
- Snapshots/volume data (Fly.io managed)

## Recreating This Setup

```bash
# On a fresh Debian 12 machine:
./scripts/bootstrap.sh
```

## License

This is a personal server snapshot. Treat it accordingly.
