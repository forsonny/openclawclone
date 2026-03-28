# Server Specifications

Captured: 2026-03-28 11:13 UTC

## Hardware

- **Platform:** Fly.io Machine
- **CPUs:** 2 vCPUs (x86_64)
- **RAM:** 2.9 GiB (no swap)
- **Disk:** 7.8 GiB (68 MiB used at capture)

## Software

| Component | Version |
|---|---|
| **OS** | Debian GNU/Linux 12 (bookworm) |
| **Kernel** | 6.12.47-fly #1 SMP PREEMPT_DYNAMIC |
| **Node.js** | v22.22.1 |
| **OpenClaw** | 2026.3.13 (commit 61d171a) |
| **Kilo CLI** | Pre-installed at `/usr/local/bin/kilo` |
| **Go** | Available |
| **apt** | Available (Debian package manager) |

## Runtime

- **Agent model:** `kilocode/kilo-auto/free` (default)
- **Channel:** streamchat
- **Capabilities:** none
- **Thinking:** low (hidden)
- **Host:** d8d3e90a177e48
- **Repo/CWD:** /root/.openclaw/workspace
- **OpenClaw binary:** /usr/local/bin/openclaw

## Volume

- `/root` is volume-mounted and backed by Fly.io snapshots
- `/root/.kilo` should NOT be modified

## /root/ Directory Layout

| Path | Contents |
|---|---|
| `.config/` | Kilo CLI config (`opencode.json`) |
| `.npm-global/` | Global npm packages |
| `.openclaw/` | OpenClaw home — gateway, workspace, sessions |
| `.pip-global/` | Global Python pip packages |
| `.uv/` | uv Python package manager cache |
| `clawd/` | Clawd daemon (OpenClaw supervisor) |
| `lost+found/` | Ext4 filesystem recovery |

## Additional Tooling

- **Python:** pip and uv available
- **Go:** Available (golang)
- **npm:** Global install path at `/root/.npm-global`

## /root/.openclaw/ Directory Layout

| Path | Contents |
|---|---|
| `cron/` | Scheduled cron jobs |
| `devices/` | Paired devices |
| `exec-approvals.json` | Command approval state |
| `identity/` | Agent identity files |
| `logs/` | Session logs |
| `memory/` | Agent memory store |
| `openclaw.json` | Main OpenClaw configuration |
| `workspace/` | Agent workspace (SOUL.md, AGENTS.md, etc.) |

## Security

- Gateway bound to loopback only
- Per-user HMAC gateway tokens
- Single-tenant isolation
- `gateway.controlUi.allowInsecureAuth=true` is safe (see TOOLS.md)
