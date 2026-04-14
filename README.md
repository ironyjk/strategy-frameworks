# Strategy Frameworks for Claude Code

29 strategy and management frameworks, 4 entry points.
Describe your problem — AI picks the best tool(s) and runs them.

## `/think` — One Command, 29 Tools

```
/think Our competitor is stealing key accounts with aggressive pricing. How should we respond?
```

The AI automatically:
1. Detects keywords in your problem
2. Selects the best 1-3 frameworks
3. Executes them in sequence
4. Synthesizes into a unified insight + 3 concrete actions

## Commands

| Command | What It Does |
|---------|-------------|
| `/think` | Full auto-routing: classify → select → execute → synthesize |
| `/think:select` | Recommend frameworks only (don't execute) |
| `/think:compare` | Apply 2-3 frameworks to the same problem and compare |
| `/toc` | Theory of Constraints — direct access to 10 sub-tools |
| `/triz` | TRIZ Systematic Innovation — direct access to 9 sub-tools |

### TOC Sub-Commands

| Command | Tool |
|---------|------|
| `/toc:crt` | Current Reality Tree — root cause analysis |
| `/toc:ec` | Evaporating Cloud — resolve conflicts |
| `/toc:frt` | Future Reality Tree — validate solutions |
| `/toc:tt` | Transition Tree — execution plans |
| `/toc:prt` | Prerequisite Tree — obstacle mapping |
| `/toc:five-steps` | Five Focusing Steps — find the bottleneck |
| `/toc:dbr` | Drum-Buffer-Rope — scheduling |
| `/toc:ccpm` | Critical Chain — project management |
| `/toc:throughput` | Throughput Accounting — investment decisions |
| `/toc:buy-in` | Layers of Resistance — change management |

### TRIZ Sub-Commands

| Command | Tool |
|---------|------|
| `/triz:contradiction` | Identify technical/physical contradictions |
| `/triz:matrix` | Contradiction Matrix → Inventive Principles |
| `/triz:40p` | 40 Inventive Principles |
| `/triz:ifr` | Ideal Final Result |
| `/triz:ariz` | ARIZ — full inventive problem solving |
| `/triz:sufield` | Substance-Field analysis |
| `/triz:resources` | Hidden resource discovery |
| `/triz:trimming` | Simplify by removing components |
| `/triz:evolution` | Predict next-generation designs |

## All 29 Frameworks

### Diagnose — What's the problem?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **TOC** (10 tools) | Goldratt | Bottlenecks, root causes, conflicts, execution plans |
| **Systems Thinking** | Peter Senge | Feedback loops, system archetypes, recurring problems |

### Solve — How to fix it?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **TRIZ** (9 tools) | Altshuller | Technical contradictions, inventive principles |
| **First Principles** | Aristotle → Musk | Challenge assumptions, rebuild from fundamentals |

### Position — Where to compete?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **Wardley Mapping** | Simon Wardley | Value chain mapping, strategic positioning |
| **Porter** | Michael Porter | Industry analysis, competitive advantage |
| **Blue Ocean** | Kim & Mauborgne | Create uncontested market space |

### Innovate — What to build?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **Design Thinking** | Stanford d.school | Customer-centered innovation, prototyping |

### Execute — How to do it?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **OODA Loop** | John Boyd | Fast decisions, competitive response, crisis |
| **Drucker** | Peter Drucker | MBO, executive effectiveness, innovation |

### Measure — Is it working?

| Framework | Creator | Use When |
|-----------|---------|----------|
| **BSC** | Kaplan & Norton | Balanced Scorecard, KPIs, strategy execution |

## Architecture

```
/think (meta-router — user-invocable)
├── 9 Strategy Frameworks (internal, auto-selected by /think)
│   ├── wardley, ooda, systems-thinking
│   ├── blue-ocean, design-thinking, first-principles
│   └── porter, drucker, bsc
├── /toc (user-invocable + 10 sub-commands)
│   └── crt, ec, frt, tt, prt, five-steps, dbr, ccpm, throughput, buy-in
└── /triz (user-invocable + 9 sub-commands)
    └── contradiction, matrix, 40p, ifr, ariz, sufield, resources, trimming, evolution
```

The 9 strategy frameworks have `user-invocable: false` — they don't appear in the slash menu but are called internally by `/think` via the Skill tool. TOC and TRIZ remain directly accessible because power users often need specific tools.

## Installation

### One-Line Install (all 29 tools)

```bash
cd /path/to/your/project
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash
```

Or manually:

```bash
cd /path/to/your/project

# 1. Strategy Frameworks (9 + think agent)
git clone https://github.com/ironyjk/strategy-frameworks.git /tmp/sf
cp -r /tmp/sf/{wardley,ooda,systems-thinking,blue-ocean,design-thinking,first-principles,porter,drucker,bsc,think} .claude/skills/

# 2. TOC Agents (10 sub-tools)
git clone https://github.com/ironyjk/toc-agents.git /tmp/toc
cp -r /tmp/toc/.claude/skills/toc .claude/skills/

# 3. TRIZ Agents (9 sub-tools)
git clone https://github.com/ironyjk/triz-agents.git /tmp/triz
cp -r /tmp/triz/.claude/skills/triz .claude/skills/
```

### Auto-Update (Recommended)

Register a `SessionStart` hook to auto-check for updates:

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

The `&` runs in the background without blocking session start. Checks once per 24 hours, fails silently on network errors.

### Partial Install

```bash
# Just the frameworks you need
cp -r wardley porter .claude/skills/
```

> `/think` requires all 29 tools for full auto-routing.

### Other Platforms

These frameworks work with any LLM. The SKILL.md and references/ files are standard markdown.

**Cursor** — `cat wardley/SKILL.md >> .cursorrules`

**ChatGPT (Custom GPTs)** — Upload SKILL.md + references as Knowledge files

**Gemini** — Paste SKILL.md into System Instructions

**Open Source LLMs** — Load as system prompt

**As Human Reference** — The `references/` docs are standalone guides, no AI needed.

## Recommended Pipelines by Problem Type

| Situation | Recommended Pipeline |
|-----------|---------------------|
| Business is struggling | TOC:CRT → TOC:EC → TOC:FRT → TOC:TT |
| Looking for new business | Porter:Forces → Blue Ocean:ERRC → Wardley → BSC |
| Innovate a product | Design Thinking → TRIZ:Contradiction → First Principles |
| Competitor threat response | OODA → Porter:Forces → TOC:Five Steps |
| Strategic planning | Drucker:5Q → Wardley:Map → BSC → Drucker:MBO |
| Operations improvement | TOC:Five Steps → Systems Thinking → TOC:DBR |
| Something's wrong but can't pinpoint | Systems Thinking → TOC:CRT → TOC:EC |

## Related Projects

- **[TOC Agents](https://github.com/ironyjk/toc-agents)** — Goldratt's Theory of Constraints, 10 tools
- **[TRIZ Agents](https://github.com/ironyjk/triz-agents)** — Altshuller's TRIZ, 9 tools
- **[HowToTalk](https://github.com/ironyjk/howtotalk)** — 13 communication frameworks with auto-routing

## License

MIT

## Author

@ironyjk × Claude Code
