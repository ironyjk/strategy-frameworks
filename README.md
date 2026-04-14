# Strategy Frameworks for Claude Code

9 classic strategy and management frameworks, packaged as Claude Code skills.
Zero dependencies. Just install and use.

## Frameworks

| Skill | Creator | Use When |
|-------|---------|----------|
| `/wardley` | Simon Wardley | Strategic positioning, build-vs-buy, evolution analysis |
| `/ooda` | John Boyd | Fast-changing situations, competitive response, crisis |
| `/systems-thinking` | Peter Senge | Recurring problems, unintended consequences, feedback loops |
| `/blue-ocean` | Kim & Mauborgne | Finding new markets, escaping price wars |
| `/design-thinking` | Stanford d.school | Building products/services, customer experience |
| `/first-principles` | Aristotle → Musk | Challenging assumptions, rebuilding from fundamentals |
| `/porter` | Michael Porter | Industry analysis, competitive advantage, positioning |
| `/drucker` | Peter Drucker | Goal-setting, organizational assessment, executive effectiveness |
| `/bsc` | Kaplan & Norton | Strategic planning, KPIs, balanced performance management |

## Installation

### One-Line Install (all 30 tools)

```bash
cd /path/to/your/project
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash
```

Or manually:

```bash
cd /path/to/your/project

# 1. Strategy Frameworks (9 tools + think agent)
git clone https://github.com/ironyjk/strategy-frameworks.git /tmp/sf
cp -r /tmp/sf/{wardley,ooda,systems-thinking,blue-ocean,design-thinking,first-principles,porter,drucker,bsc,think} .claude/skills/

# 2. TOC Agents (11 tools)
git clone https://github.com/ironyjk/toc-agents.git /tmp/toc
cp -r /tmp/toc/.claude/skills/toc .claude/skills/

# 3. TRIZ Agents (9 tools)
git clone https://github.com/ironyjk/triz-agents.git /tmp/triz
cp -r /tmp/triz/.claude/skills/triz .claude/skills/
```

Then use `/think [your problem]` — it automatically selects the best tool(s).

### Auto-Update (Recommended)

Register a `SessionStart` hook in your Claude Code settings to auto-check for updates on every session start:

**Option A: Auto-register during install**
```bash
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash -s -- --with-hook
```

**Option B: Manual hook registration**

Add to `.claude/settings.local.json` (or `~/.claude/settings.json`):

```json
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/skills/think/check-update.sh &"
          }
        ]
      }
    ]
  }
}
```

The `&` detaches the process so it runs in the background without blocking session start. The script:
- Checks GitHub API for latest commit SHA (~0.5s)
- Compares with local version
- Updates all 30 tools if newer version exists
- Skips if already checked within 24 hours
- Fails silently on network errors

### Manual Update

```bash
# Update all 30 tools to latest version
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/update.sh | bash

# Windows
update.bat
```

### Partial Install

```bash
# Just the frameworks you need
cp -r wardley porter /path/to/your/project/.claude/skills/
```

Note: `/think` requires all 30 tools to be installed for full auto-routing.

### Other Platforms

These frameworks work with any LLM, not just Claude Code. The SKILL.md and references/ files are standard markdown.

**Cursor**
```bash
# Copy framework content into .cursorrules or .cursor/rules/
cat wardley/SKILL.md >> .cursorrules
# Or use as project-level rules
cp -r wardley/ .cursor/rules/
```

**ChatGPT (Custom GPTs)**
1. Create a new GPT at chat.openai.com/gpts
2. Upload SKILL.md + references/*.md as Knowledge files
3. Set instructions: "You are a strategy consultant. Use the uploaded frameworks to analyze problems."
4. For /think behavior: upload think/SKILL.md as the main instruction

**Gemini**
- Paste SKILL.md content into System Instructions
- Or use Google AI Studio → System Prompt

**Open Source LLMs (Llama, Hermes, etc.)**
```python
# Load as system prompt
with open("wardley/SKILL.md") as f:
    system_prompt = f.read()
# Pass to your LLM inference
```

**Windsurf / Cline / Aider**
- Copy SKILL.md content to the tool's system prompt or rules file
- Most coding agents support markdown instructions natively

**As Human Reference**
- The `references/` documents are standalone guides — no AI needed
- Print them, use in workshops, or share with your team

## Usage

```
/wardley          — Full Wardley Map session
/porter:forces    — Five Forces industry analysis
/drucker:5q       — Drucker's Five Essential Questions
/ooda             — OODA Loop rapid decision analysis
/blue-ocean:errc  — Eliminate/Reduce/Raise/Create grid
/bsc:map          — Strategy Map across 4 perspectives
```

## Complementary Frameworks

These pair well with:
- **[TOC Agents](https://github.com/ironyjk/toc-agents)** — Theory of Constraints (Goldratt) — 11 tools for constraint analysis
- **[TRIZ Agents](https://github.com/ironyjk/triz-agents)** — TRIZ (Altshuller) — 9 tools for inventive problem solving

## The Full Toolkit

```
Diagnose  → TOC (find the constraint)
Solve     → TRIZ (resolve contradictions)
Position  → Wardley / Porter (strategic landscape)
Innovate  → Blue Ocean / Design Thinking / First Principles
Execute   → OODA (fast decisions) / Drucker MBO (objectives)
Measure   → BSC (balanced KPIs)
Understand → Systems Thinking (feedback loops)
```

## License

MIT

## Author

@ironyjk × Claude Code
