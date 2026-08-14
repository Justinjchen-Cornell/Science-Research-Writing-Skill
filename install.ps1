# install.ps1 — install science-research-writing skill for Claude Code (Windows)
# Usage:  powershell -ExecutionPolicy Bypass -File install.ps1

$ErrorActionPreference = "Stop"
$RepoDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Pick the first existing skill root, else default to ~/.claude/skills
$Candidates = @(
    "$HOME\.claude\skills",
    "$HOME\.agents\skills",
    "$HOME\.config\agents\skills"
)
$SkillsHome = $Candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $SkillsHome) { $SkillsHome = "$HOME\.claude\skills" }

$Dest = Join-Path $SkillsHome "science-research-writing"
if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
New-Item -ItemType Directory -Path $SkillsHome -Force | Out-Null

# Copy skill files (exclude repo-only files)
Get-ChildItem -Path $RepoDir -Exclude "install.sh","install.ps1",".git",".github","assets","README.md","LICENSE",".gitignore" |
    Copy-Item -Destination $Dest -Recurse -Force

Write-Host ""
Write-Host "OK - installed to $Dest" -ForegroundColor Green
Write-Host "Restart Claude Code, then try:"
Write-Host '  - "science-research-writing"'
Write-Host '  - "what chapters do you have?"'
