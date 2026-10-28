#!/usr/bin/env bash
# Integrity checks for the Second Brain. Prints problems; exits 0.
cd "$(dirname "$0")/.."
echo "== hot/ size (target <= 20 KB)"; du -ck hot/*.md | tail -1
echo "== pages missing frontmatter"; for f in warm/*/*.md; do [ -e "$f" ] && ! head -1 "$f" | grep -q '^---$' && echo "$f"; done
echo "== non-slug file names"; find warm cold -name '*.md' | grep -E '[A-Z ]' | grep -v INDEX.md
echo "== relative dates"; rg -n -i '\b(tomorrow|yesterday|next week|last week)\b' hot warm --glob '!log.md' || true
echo "== possible secrets"; rg -n -i '(password|passwd|api[_-]?key|secret|token|iban|\b[0-9]{13,19}\b)' hot warm cold || true
echo "== binaries / large files"; find . -path ./.git -prune -o -type f \( -iname '*.pdf' -o -iname '*.jpg' -o -iname '*.png' -o -iname '*.mp*' -o -size +500k \) -print
echo "== broken links"; rg -o --no-filename '\]\((warm|cold|hot)/[^)]+\)' -r '$1' . >/dev/null 2>&1
rg -o -N '\]\(((hot|warm|cold)/[^)]+)\)' -r '$1' hot warm cold 2>/dev/null | while IFS=: read -r src p; do [ -e "$p" ] || echo "$src -> $p"; done
echo "== INBOX items"; ls INBOX | grep -v '^\.gitkeep$' || true
