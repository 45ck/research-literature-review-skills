#!/usr/bin/env bash
set -euo pipefail
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
for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
done
