# Agent Rules (always on)

Repo: `/workspace/second-brain`

1. **Start of every conversation and after any context summary:** `git -C /workspace/second-brain pull --rebase -q`, then read all of `hot/`.
2. **Write immediately.** Any important fact, decision, preference or commitment goes into a file now, not only into built-in memory. Built-in memory holds only: "Read /workspace/second-brain/hot/ first; follow AGENT-RULES.md."
3. **Search before creating:** `rg -il "<name or keyword>" /workspace/second-brain` — update an existing page rather than duplicating.
4. **Use templates** from `.templates/`. File names are lowercase-hyphen slugs, e.g. `warm/people/jane-doe.md`, `warm/meetings/2026-01-15-project-example-kickoff.md`.
5. **Absolute dates only** (YYYY-MM-DD), never "tomorrow" or "last week".
6. **log.md is append-only.** Add entries at the end; never edit or delete past entries.
7. **Git hygiene:** commit only the paths you changed (`git add <paths>`, never `git add -A` or `git add .`), author = your agent name, message prefix `[AgentName]`. Push at the end of each workflow. On conflict: `git pull --rebase`, keep both sides, never force-push.
8. **Never store** passwords, tokens, card or bank numbers, ID/passport numbers, raw emails, raw transcripts, PDFs or media. Store a short summary and a link instead.
9. **Never send** messages, emails or posts on the owner's behalf without the owner's explicit approval in chat.
10. **INBOX:** file each item into the right tier; delete the original only after the owner says yes.
11. **Keep hot/ small** (under 20 KB). Details belong in warm/.
