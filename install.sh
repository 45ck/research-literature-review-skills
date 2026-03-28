#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
}
SKILLS=(
  critical-analysis-writer
  evidence-strength-scorer
  future-work-generator
  gap-finder
  literature-theme-extractor
  methodology-comparer
  paper-screening-checker
  related-work-synthesizer
  research-question-refiner
  search-string-designer
)
for skill in "${SKILLS[@]}"; do install_skill "$skill"; done
