#!/usr/bin/env bash
# Install science-research-writing skill for Claude Code / Amp / Copilot CLI.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Pick the first skill root that exists, or default to ~/.claude/skills
SKILLS_HOME="${SKILLS_HOME:-}"
if [[ -z "$SKILLS_HOME" ]]; then
  for candidate in "$HOME/.claude/skills" "$HOME/.agents/skills" "$HOME/.config/agents/skills"; do
    if [[ -d "$candidate" ]]; then
      SKILLS_HOME="$candidate"
      break
    fi
  done
  SKILLS_HOME="${SKILLS_HOME:-$HOME/.claude/skills}"
fi

mkdir -p "$SKILLS_HOME"
rm -rf "$SKILLS_HOME/science-research-writing"
cp -r "$REPO_DIR" "$SKILLS_HOME/science-research-writing"
# Remove repo-only files that must not live inside the skill
rm -f "$SKILLS_HOME/science-research-writing/install.sh" \
      "$SKILLS_HOME/science-research-writing/.gitignore" \
      "$SKILLS_HOME/science-research-writing/README.md" \
      "$SKILLS_HOME/science-research-writing/LICENSE"

echo "✅ Installed to $SKILLS_HOME/science-research-writing"
echo "   Restart your agent session, then try:"
echo "     - \"science-research-writing\""
echo "     - \"what chapters do you have?\""
