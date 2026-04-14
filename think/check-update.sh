#!/bin/bash
# Strategy Frameworks — Version check (max once per day)
# Returns: "up-to-date" or "updated to <sha>"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$(dirname "$SCRIPT_DIR")"
STATE_FILE="$SCRIPT_DIR/.update-state"
SHA_FILE="$SCRIPT_DIR/.current-sha"
UPDATE_INTERVAL=86400  # 24 hours

# Check if we should run
if [ -f "$STATE_FILE" ]; then
    LAST_CHECK=$(cat "$STATE_FILE" 2>/dev/null | head -1)
    NOW=$(date +%s)
    ELAPSED=$((NOW - ${LAST_CHECK:-0}))
    if [ "$ELAPSED" -lt "$UPDATE_INTERVAL" ]; then
        echo "up-to-date (checked $(($ELAPSED / 3600))h ago)"
        exit 0
    fi
fi

# Check GitHub for latest commit
REMOTE_SHA=$(curl -sf -H "Accept: application/vnd.github.v3+json" \
    "https://api.github.com/repos/ironyjk/strategy-frameworks/commits/master" 2>/dev/null \
    | grep -m1 '"sha"' | cut -d'"' -f4 | head -c7)

LOCAL_SHA=""
[ -f "$SHA_FILE" ] && LOCAL_SHA=$(cat "$SHA_FILE" 2>/dev/null | head -c7)

# Save check timestamp
date +%s > "$STATE_FILE"

if [ -z "$REMOTE_SHA" ]; then
    echo "up-to-date (offline)"
    exit 0
fi

if [ "$REMOTE_SHA" = "$LOCAL_SHA" ]; then
    echo "up-to-date ($LOCAL_SHA)"
    exit 0
fi

# New version — update
TEMP_DIR=$(mktemp -d)

git clone --depth 1 --quiet "https://github.com/ironyjk/strategy-frameworks.git" "$TEMP_DIR/sf" 2>/dev/null && \
    for d in wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc think; do
        [ -d "$TEMP_DIR/sf/$d" ] && mkdir -p "$SKILLS_DIR/$d" && cp -r "$TEMP_DIR/sf/$d/"* "$SKILLS_DIR/$d/" 2>/dev/null
    done

git clone --depth 1 --quiet "https://github.com/ironyjk/toc-agents.git" "$TEMP_DIR/toc" 2>/dev/null && \
    [ -d "$TEMP_DIR/toc/.claude/skills/toc" ] && mkdir -p "$SKILLS_DIR/toc" && cp -r "$TEMP_DIR/toc/.claude/skills/toc/"* "$SKILLS_DIR/toc/" 2>/dev/null

git clone --depth 1 --quiet "https://github.com/ironyjk/triz-agents.git" "$TEMP_DIR/triz" 2>/dev/null && \
    [ -d "$TEMP_DIR/triz/.claude/skills/triz" ] && mkdir -p "$SKILLS_DIR/triz" && cp -r "$TEMP_DIR/triz/.claude/skills/triz/"* "$SKILLS_DIR/triz/" 2>/dev/null

rm -rf "$TEMP_DIR"
echo "$REMOTE_SHA" > "$SHA_FILE"
echo "updated ($LOCAL_SHA → $REMOTE_SHA)"
