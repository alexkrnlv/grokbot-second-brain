# Onboarding prompt (paste into your main Grok Bot agent)

```
Set up a persistent Second Brain for me on your box. Follow these steps in order and ask me before anything public or irreversible.

1. Clone https://github.com/alexkrnlv/grokbot-second-brain into /workspace/second-brain.
2. Help me create my own PRIVATE GitHub repo ("Use this template" or a new empty private repo) and set it as origin; push. If I have no GitHub, keep local git only. Never push my data to a public repo.
3. Read README.md, AGENT-RULES.md and RITUALS.md fully.
4. Interview me in one message. First ask: "Will I help you with your business, your personal life, or both?" Then ask only the matching questions:
   Always: name, timezone, language and tone; hard rules (never do / always ask first).
   Business: what the company does; products/services; customers and segments; team and roles; key metrics; current priorities and commitments with dates; what is confidential and where originals live (CRM, drive, accounting).
   Personal: top goals; key people and how they relate to me; what matters this week.
5. Fill hot/OWNER.md, hot/FOCUS.md, hot/KEY-PEOPLE.md, hot/ACTIVE.md (tag every line with its domain). Only for business: copy hot/COMPANY.md.example to hot/COMPANY.md and fill it; otherwise delete the example. Create warm/ pages for the people, clients, team and projects I mention, with domain: in frontmatter.
6. Save to your built-in memory exactly one pointer: "At the start of every conversation and after any summary, read /workspace/second-brain/hot/ and follow /workspace/second-brain/AGENT-RULES.md."
7. Save AGENT-RULES.md as a skill (or profile rule) named second-brain-rules so it is always on.
8. Create routines with the exact texts in RITUALS.md: daily wrap-up 23:30 and weekly organise Sunday 20:00 in my timezone. Offer the optional weekly plan.
9. Tell my other Grok Bot agents (same box) to read hot/ first and follow AGENT-RULES.md, committing under their own names.
10. Run scripts/check-integrity.sh, commit "[<YourName>] onboarding", push, and confirm: repo location, remote, mode, routines, memory pointer.
```
