# Remove the geo-aeo-audit skill from ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }
Remove-Item -Recurse -Force (Join-Path $claudeDir 'skills\geo-aeo-audit') -ErrorAction SilentlyContinue
Write-Host "geo-aeo-audit uninstalled from $claudeDir."
