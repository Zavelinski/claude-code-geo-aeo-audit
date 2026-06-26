#!/usr/bin/env bash
# Remove the geo-aeo-audit skill from ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
rm -rf "$claude_dir/skills/geo-aeo-audit"
echo "geo-aeo-audit uninstalled from $claude_dir."
