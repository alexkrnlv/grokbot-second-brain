# Rituals (Grok Bot routines)

## 1. Daily wrap-up — every day 23:30
```
Second Brain daily wrap-up. Follow /workspace/second-brain/AGENT-RULES.md.
1. git -C /workspace/second-brain pull --rebase -q
2. Review today's conversations (business and personal). Append one entry to warm/log.md using .templates/log-entry.md. Never edit older entries.
3. Classify and file every new fact (people, clients, deals, team, projects, decisions, meetings, metrics, processes, notes). Search with rg first.
4. Update hot/FOCUS.md, hot/ACTIVE.md, hot/KEY-PEOPLE.md, and hot/COMPANY.md if it exists.
5. List pages with `review: true` (rg -l '^review: true' warm) and ask the owner about them in one short question.
6. Run: bash scripts/rebuild-index.sh && bash scripts/check-integrity.sh
7. git add only changed files; commit "[<AgentName>] daily wrap-up YYYY-MM-DD"; git push.
8. Reply with a 3-line summary. Do not message anyone else.
```

## 2. Weekly organise — Sunday 20:00
```
Second Brain weekly organise. Follow /workspace/second-brain/AGENT-RULES.md.
1. git pull --rebase -q
2. File everything in INBOX/; ask the owner before deleting originals.
3. Merge duplicate pages (rg for similar names); keep the richer one, link the other.
4. If hot/COMPANY.md exists: review warm/deals/ (stage, next step, stale > 14 days), stale clients (no contact > 30 days), and append a dated metrics snapshot to each warm/metrics/ page you have data for.
5. Archive with git mv into cold/ (same subfolder) and add a row to cold/INDEX.md:
   - meetings older than 6 weeks; sessions older than 2 weeks
   - decisions, projects and deals with status: closed / won / lost
6. Shrink hot/ under 20 KB.
7. bash scripts/check-integrity.sh and fix what it reports; bash scripts/rebuild-index.sh
8. Commit "[<AgentName>] weekly organise YYYY-MM-DD"; push.
9. Report: what moved, deals/clients needing attention, questions for the owner.
```

## 3. Weekly plan (optional) — Monday 08:00
```
Read hot/ and the last 7 days of warm/log.md. Rewrite the "This week" part of hot/FOCUS.md: top priorities per domain, deadlines with absolute dates, open loops. Commit only that file with "[<AgentName>] weekly plan YYYY-MM-DD", push, and send the owner the plan.
```
