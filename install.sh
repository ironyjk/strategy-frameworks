#!/bin/bash
# /think — One-command installer for all 30 strategy tools
# Installs: Strategy Frameworks (9+think) + TOC (11) + TRIZ (9)
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash
#   # or
#   bash install.sh [target_dir]

set -e

TARGET="${1:-.claude/skills}"
TEMP_DIR=$(mktemp -d)

echo ""
echo "  🧠 /think installer — 30 strategy tools"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Ensure target exists
mkdir -p "$TARGET"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m'

TOTAL=0
FAILED=0

install_repo() {
    local repo=$1
    local name=$2
    local count=$3
    shift 3
    local skills=("$@")

    printf "  📦 %-25s " "$name ($count tools)"

    if git clone --depth 1 --quiet "https://github.com/ironyjk/$repo.git" "$TEMP_DIR/$repo" 2>/dev/null; then
        for skill in "${skills[@]}"; do
            local src=""
            # Check both top-level and .claude/skills/ paths
            [ -d "$TEMP_DIR/$repo/$skill" ] && src="$TEMP_DIR/$repo/$skill"
            [ -d "$TEMP_DIR/$repo/.claude/skills/$skill" ] && src="$TEMP_DIR/$repo/.claude/skills/$skill"

            if [ -n "$src" ]; then
                mkdir -p "$TARGET/$skill"
                cp -r "$src/"* "$TARGET/$skill/" 2>/dev/null || true
                # Copy references if they exist
                [ -d "$src/references" ] && mkdir -p "$TARGET/$skill/references" && cp -r "$src/references/"* "$TARGET/$skill/references/" 2>/dev/null || true
            fi
        done
        echo -e "${GREEN}✓${NC}"
        TOTAL=$((TOTAL + count))
    else
        echo -e "${RED}✗ failed${NC}"
        FAILED=$((FAILED + 1))
    fi
}

# Install all three repos
install_repo "strategy-frameworks" "Strategy Frameworks" 10 wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc think
install_repo "toc-agents" "TOC Agents" 11 toc
install_repo "triz-agents" "TRIZ Agents" 9 triz

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ $FAILED -eq 0 ]; then
    echo -e "  ${GREEN}${BOLD}✓ Installed $TOTAL tools to $TARGET/${NC}"
else
    echo -e "  ${YELLOW}⚠ Installed with $FAILED failures${NC}"
fi

echo ""
echo "  Usage:"
echo "    /think [describe your problem]"
echo "    /toc:crt [symptoms]"
echo "    /triz:contradiction [technical problem]"
echo "    /porter:forces [industry]"
echo "    /wardley [business context]"
echo ""
echo "  Update later:"
echo "    bash $TARGET/../update.sh"
echo "    # or re-run this installer"
echo ""
echo "  github.com/ironyjk"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
