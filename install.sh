#!/usr/bin/env bash
# Install the geo-aeo-audit skill into ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"

mkdir -p "$claude_dir/skills/geo-aeo-audit"
cp "$repo/skills/geo-aeo-audit/SKILL.md" "$claude_dir/skills/geo-aeo-audit/SKILL.md"

echo ""
echo "geo-aeo-audit installed into $claude_dir"
echo "Restart Claude Code, then ask for a 'GEO audit' (or /geo-aeo-audit <url>)."
