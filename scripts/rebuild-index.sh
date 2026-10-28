#!/usr/bin/env bash
# Rebuild warm/INDEX.md from page titles.
set -euo pipefail
cd "$(dirname "$0")/.."
{ echo "# Warm Index"; echo; echo "_Rebuilt $(date +%F)_"
  for d in people projects decisions meetings sources notes sessions; do
    echo; echo "## $d"
    for f in warm/$d/*.md; do [ -e "$f" ] || continue
      t=$(grep -m1 '^# ' "$f" | sed 's/^# //'); echo "- [${t:-$(basename "$f")}]($f)"; done
  done; } > warm/INDEX.md
echo "warm/INDEX.md rebuilt"
