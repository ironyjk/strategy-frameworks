#!/bin/bash
# /think — One-command installer for all 46 strategy tools
# Installs: Strategy Frameworks (26+think) + TOC (11) + TRIZ (9)
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash
#   curl ... | bash -s -- --with-hook          # + auto-update hook
#   curl ... | bash -s -- --global --with-hook  # global install (~/.claude/skills)
#   bash install.sh [target_dir]
#   bash install.sh --with-hook --global

set -e

# Parse args
WITH_HOOK=false
GLOBAL=false
TARGET=""
for arg in "$@"; do
    case "$arg" in
        --with-hook) WITH_HOOK=true ;;
        --global) GLOBAL=true ;;
        -*) ;; # ignore unknown flags
        *) TARGET="$arg" ;;
    esac
done

# Determine target and settings paths
if [ "$GLOBAL" = true ]; then
    TARGET="${TARGET:-$HOME/.claude/skills}"
    SETTINGS_FILE="$HOME/.claude/settings.json"
elif [ -n "$TARGET" ]; then
    SETTINGS_FILE=".claude/settings.local.json"
else
    TARGET=".claude/skills"
    SETTINGS_FILE=".claude/settings.local.json"
fi

TEMP_DIR=$(mktemp -d)

echo ""
echo "  🧠 /think installer — 46 strategy tools"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ "$GLOBAL" = true ]; then
    echo "  Mode: global (~/.claude/skills)"
else
    echo "  Mode: project-local"
fi
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
            [ -d "$TEMP_DIR/$repo/$skill" ] && src="$TEMP_DIR/$repo/$skill"
            [ -d "$TEMP_DIR/$repo/.claude/skills/$skill" ] && src="$TEMP_DIR/$repo/.claude/skills/$skill"

            if [ -n "$src" ]; then
                mkdir -p "$TARGET/$skill"
                cp -r "$src/"* "$TARGET/$skill/" 2>/dev/null || true
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
install_repo "strategy-frameworks" "Strategy Frameworks" 27 wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc bcg-matrix mckinsey-7s swot-pestel ansoff-matrix disruptive-innovation scenario-planning stp marketing-mix jtbd bmc kotter okr lean-startup real-options game-theory pyramid-principle rbv think
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

# Resolve absolute path for hook command (fixes CWD dependency)
SCRIPT_ABS_PATH="$(cd "$TARGET/think" 2>/dev/null && pwd)/check-update.sh"

# Register SessionStart hook if --with-hook
if [ "$WITH_HOOK" = true ]; then
    HOOK_CMD="bash $SCRIPT_ABS_PATH &"

    if [ -f "$SETTINGS_FILE" ]; then
        if grep -q "check-update.sh" "$SETTINGS_FILE" 2>/dev/null; then
            echo -e "  ${GREEN}✓${NC} Auto-update hook already registered"
        else
            if command -v python3 &>/dev/null; then
                python3 -c "
import json, sys
settings_file = '$SETTINGS_FILE'
hook_cmd = '$HOOK_CMD'
with open(settings_file, 'r') as f:
    cfg = json.load(f)
hooks = cfg.setdefault('hooks', {})
ss = hooks.setdefault('SessionStart', [])
ss.append({'hooks': [{'type': 'command', 'command': hook_cmd}]})
with open(settings_file, 'w') as f:
    json.dump(cfg, f, indent=2)
" && echo -e "  ${GREEN}✓${NC} Auto-update hook registered (absolute path)"
            else
                echo -e "  ${YELLOW}⚠${NC} python3 not found. Add SessionStart hook manually:"
                echo "      command: $HOOK_CMD"
            fi
        fi
    else
        # Create settings file
        local settings_dir=$(dirname "$SETTINGS_FILE")
        mkdir -p "$settings_dir"
        if command -v python3 &>/dev/null; then
            python3 -c "
import json
cfg = {'hooks': {'SessionStart': [{'hooks': [{'type': 'command', 'command': '$HOOK_CMD'}]}]}}
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(cfg, f, indent=2)
" && echo -e "  ${GREEN}✓${NC} Created $SETTINGS_FILE with auto-update hook"
        else
            echo -e "  ${YELLOW}⚠${NC} Could not create settings. Add hook manually."
        fi
    fi
fi

echo ""
echo "  Usage:"
echo "    /think [describe your problem]"
echo "    /toc:crt [symptoms]"
echo "    /triz:contradiction [technical problem]"
echo "    /porter:forces [industry]"
echo ""
echo "  Auto-update:"
if [ "$WITH_HOOK" = true ]; then
    echo "    ✓ SessionStart hook → $SCRIPT_ABS_PATH"
else
    echo "    Re-run with --with-hook to register auto-update"
    echo "    curl ... | bash -s -- --with-hook"
    [ "$GLOBAL" != true ] && echo "    curl ... | bash -s -- --global --with-hook"
fi
echo ""
echo "  github.com/ironyjk"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
