#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/blank-planet"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Blank Planet skill (v2)..."

# Create directory
mkdir -p "$SKILL_DIR"

# Copy skill file
cp "$SOURCE_DIR/skills/blank-planet/SKILL.md" "$SKILL_DIR/SKILL.md"

# Copy references/ directory (replaces any prior version)
rm -rf "$SKILL_DIR/references"
cp -R "$SOURCE_DIR/skills/blank-planet/references" "$SKILL_DIR/references"

echo ""
echo "Installed successfully!"
echo ""
echo "Usage:"
echo "  /blank-planet             — full flow: genre → analog → macrostructure → ship"
echo "  /blank-planet analog      — find your product's structural analog"
echo "  /blank-planet audit       — audit existing design (anti-patterns + slop-test)"
echo "  /blank-planet check       — run self-critique + slop-test on existing output"
echo "  /blank-planet why         — explain WHY a design decision works (with science)"
echo ""
echo "Pairs with:"
echo "  /font-matchmaker          — select typefaces matching your direction"
echo "  /design-system            — generate tokens and component recommendations"
echo ""
echo "Skill is installed at: $SKILL_DIR/"
echo "  SKILL.md         (the method)"
echo "  references/      (palettes, typography, macrostructures, anti-patterns, slop-test, etc.)"
