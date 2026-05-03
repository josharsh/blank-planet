#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/blank-planet"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Blank Planet skill..."

# Create directory
mkdir -p "$SKILL_DIR"

# Copy skill file
cp "$SOURCE_DIR/skills/blank-planet/SKILL.md" "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed successfully!"
echo ""
echo "Usage:"
echo "  /blank-planet             — full flow: discover product, find analog, derive design"
echo "  /blank-planet analog      — find your product's structural analog"
echo "  /blank-planet audit       — audit existing design for coherence issues"
echo "  /blank-planet why         — explain WHY a design decision works (with science)"
echo ""
echo "Pairs with:"
echo "  /font-matchmaker          — select typefaces matching your direction"
echo "  /design-system            — generate tokens and component recommendations"
echo ""
echo "Skill is installed at: $SKILL_DIR/SKILL.md"
