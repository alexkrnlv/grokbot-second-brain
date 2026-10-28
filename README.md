# Second Brain Template for Grok Bot

A file-based, git-backed persistent memory for your Grok Bot agents.

## Why agents forget
Long chats get auto-summarised, and details are lost. Built-in memory is small. Fix: every important fact goes into a markdown file on the bot's box, and agents re-read a small "hot" set at the start of each conversation and after every summary.

## Layout
- `hot/` read at the start of every conversation (keep under 20 KB): OWNER, FOCUS, KEY-PEOPLE, ACTIVE, and COMPANY (business only).
- `warm/` one page per person / client / deal / team member / project / decision / meeting / metric / process / source / note / session, plus `INDEX.md` and append-only `log.md`.
- `cold/` archive (moved with `git mv`, never deleted), listed in `cold/INDEX.md`.
- `INBOX/` drop anything here; the agent files it.
- `.templates/` page templates. `scripts/` small bash helpers.
- `AGENT-RULES.md` the protocol every agent follows. `RITUALS.md` the routine prompts.

## 5-minute setup
1. **Never put your data in a public repo.** Click "Use this template" on GitHub and create a **private** repo (or clone and keep local git only).
2. Open your main Grok Bot agent and paste `ONBOARDING-PROMPT.md`.
3. Answer its questions. It fills `hot/`, saves a memory pointer, and creates the daily and weekly routines.

## Business, personal or both
One brain, one human owner. It works for running a company, for personal life, or both. There are no separate trees: every page carries `domain: business | personal | both`, and the agent classifies each new fact before filing it. Business folders (`clients/`, `deals/`, `team/`, `metrics/`, `processes/`) and `hot/COMPANY.md` exist only when needed. Confidential business material (contracts, prices, bank details, employee data, customer PII) never goes into git; only a one-line summary and where the original lives.

## Multiple agents
All agents of one user share the same box filesystem, so they all use `/workspace/second-brain`. Each commits with its own author name and `[AgentName]` prefix, only its own paths, and only appends to `log.md`.
