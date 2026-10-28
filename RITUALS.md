# Rituals (Grok Bot routines)

## 1. Daily wrap-up — every day 23:30
```
Second Brain daily wrap-up. Follow /workspace/second-brain/AGENT-RULES.md.
1. git -C /workspace/second-brain pull --rebase -q
2. Review today's conversations. Append one entry to warm/log.md using .templates/log-entry.md (date, what happened, decisions, open loops). Never edit older entries.
3. Create or update pages in warm/ for new people, projects, decisions and meetings (search with rg first).
4. Update hot/THIS-WEEK.md and hot/ACTIVE-PROJECTS.md.
5. Run: bash scripts/rebuild-index.sh
6. git add only the files you changed; commit "[<AgentName>] daily wrap-up YYYY-MM-DD"; git push.
7. Reply with a 3-line summary. Do not message anyone else.
```

## 2. Weekly organise — Sunday 20:00
```
Second Brain weekly organise. Follow /workspace/second-brain/AGENT-RULES.md.
1. git pull --rebase -q
2. File everything in INBOX/; list items you want to delete and ask the owner.
3. Merge duplicate pages (rg for similar names); keep the richer one, link the other.
4. Archive with git mv into cold/ (same subfolder) and add a row to cold/INDEX.md:
   - meetings older than 6 weeks
   - sessions older than 2 weeks
   - decisions and projects marked status: closed
5. Shrink hot/ under 20 KB: move detail to warm/, keep one-line pointers.
6. Run: bash scripts/check-integrity.sh and fix what it reports.
7. bash scripts/rebuild-index.sh; commit "[<AgentName>] weekly organise YYYY-MM-DD"; push.
8. Report what moved and what needs the owner's decision.
```

## 3. Weekly plan (optional) — Monday 08:00
```
Read hot/ and warm/log.md for the last 7 days. Rewrite hot/THIS-WEEK.md: top 3 priorities, deadlines with absolute dates, open loops, waiting-on. Commit only that file with "[<AgentName>] weekly plan YYYY-MM-DD" and push. Send the owner the plan.
```
