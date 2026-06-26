# Install the geo-aeo-audit skill into ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'

$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }

New-Item -ItemType Directory -Force -Path (Join-Path $claudeDir 'skills\geo-aeo-audit') | Out-Null
Copy-Item (Join-Path $repo 'skills\geo-aeo-audit\SKILL.md') (Join-Path $claudeDir 'skills\geo-aeo-audit\SKILL.md') -Force

Write-Host ""
Write-Host "geo-aeo-audit installed into $claudeDir"
Write-Host "Restart Claude Code, then ask for a 'GEO audit' (or /geo-aeo-audit <url>)."
