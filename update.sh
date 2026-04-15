#!/bin/bash
# Strategy Frameworks + TOC + TRIZ — Auto Update
# Usage: bash update.sh [target_dir]
# Default target: .claude/skills/ in current directory

set -e

TARGET="${1:-.claude/skills}"
TEMP_DIR=$(mktemp -d)
UPDATED=0

echo "🧠 Updating strategy frameworks..."
echo "   Target: $TARGET"
echo ""

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

update_repo() {
    local repo=$1
    local name=$2
    local skills=$3

    echo -n "   📦 $name... "

    if git clone --depth 1 --quiet "https://github.com/ironyjk/$repo.git" "$TEMP_DIR/$repo" 2>/dev/null; then
        for skill in $skills; do
            local src=""
            if [ -d "$TEMP_DIR/$repo/$skill" ]; then
                src="$TEMP_DIR/$repo/$skill"
            elif [ -d "$TEMP_DIR/$repo/.claude/skills/$skill" ]; then
                src="$TEMP_DIR/$repo/.claude/skills/$skill"
            fi

            if [ -n "$src" ] && [ -d "$src" ]; then
                mkdir -p "$TARGET/$skill"
                cp -r "$src/"* "$TARGET/$skill/" 2>/dev/null
            fi
        done

        # Get version from any SKILL.md
        local ver=$(grep -m1 'version:' "$TEMP_DIR/$repo/"*/SKILL.md 2>/dev/null | head -1 | sed 's/.*version: *"\(.*\)"/\1/')
        [ -z "$ver" ] && ver=$(grep -m1 'version:' "$TEMP_DIR/$repo/.claude/skills/"*/SKILL.md 2>/dev/null | head -1 | sed 's/.*version: *"\(.*\)"/\1/')

        echo -e "${GREEN}✓${NC} ${ver:-unknown}"
        UPDATED=$((UPDATED + 1))
    else
        echo -e "${YELLOW}⚠ failed to clone${NC}"
    fi
}

# 1. Strategy Frameworks (26 + think)
update_repo "strategy-frameworks" "Strategy Frameworks" "wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc bcg-matrix mckinsey-7s swot-pestel ansoff-matrix disruptive-innovation scenario-planning stp marketing-mix jtbd bmc kotter okr lean-startup real-options game-theory pyramid-principle rbv think"

# 2. TOC Agents (11)
update_repo "toc-agents" "TOC Agents" "toc"

# 3. TRIZ Agents (9)
update_repo "triz-agents" "TRIZ Agents" "triz"

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "   ${GREEN}✓ $UPDATED/3 repos updated${NC}"
echo "   46 tools ready in $TARGET/"
echo "   Run: /think [your problem]"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━"
