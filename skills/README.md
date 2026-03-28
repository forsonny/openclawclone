# Installed Skills

These are the skills available on this KiloClaw instance, installed at `/usr/local/lib/node_modules/openclaw/skills/`.

## Complete Skill List (22 skills)

| Skill | Description |
|---|---|
| **1password** | Set up and use 1Password CLI (op). Reading/injecting/running secrets. |
| **blogwatcher** | Monitor blogs and RSS/Atom feeds for updates. |
| **clawhub** | Search, install, update, and publish agent skills from clawhub.com. |
| **gh-issues** | Fetch GitHub issues, spawn sub-agents to implement fixes and open PRs. |
| **gifgrep** | Search GIF providers, download results, extract stills/sheets. |
| **github** | GitHub operations via `gh` CLI — issues, PRs, CI runs, code review. |
| **gog** | Google Workspace CLI for Gmail, Calendar, Drive, Contacts, Sheets, Docs. |
| **healthcheck** | Host security hardening, firewall/SSH hardening, risk posture. |
| **mcporter** | Configure, auth, and call MCP servers/tools directly. |
| **node-connect** | Diagnose OpenClaw node connection and pairing failures. |
| **session-logs** | Search and analyze session logs using jq. |
| **skill-creator** | Create, edit, improve, or audit AgentSkills. |
| **summarize** | Summarize or extract text/transcripts from URLs, podcasts, files. |
| **things-mac** | Interact with Things 3 (macOS task manager). |
| **tmux** | Remote-control tmux sessions for interactive CLIs. |
| **trello** | Trello board/list/card operations. |
| **video-frames** | Extract frames or short clips from videos using ffmpeg. |
| **voice-call** | Voice call capabilities. |
| **wacli** | WhatsApp CLI integration. |
| **weather** | Get current weather and forecasts via wttr.in or Open-Meteo. |
| **xurl** | Authenticated requests to the X (Twitter) API v2. |

## Installing Skills

```bash
clawhub install <skill-name>
# or
clawhub install <github-repo-url>
```

Each skill has a `SKILL.md` with instructions.
