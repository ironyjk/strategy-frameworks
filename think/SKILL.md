---
name: think
version: "2.1.0"
description: "Strategic Thinking Agent — automatically selects the best framework(s) from 47 tools (TOC/TRIZ/Wardley/OODA/Systems Thinking/Blue Ocean/Design Thinking/First Principles/Porter/Drucker/BSC + 17 MBA frameworks) to solve any business problem. Just describe your problem."
tools: ["Read", "Write", "Edit", "Agent", "Skill"]
install: |
  # Install all dependencies (47 framework tools):
  # 1. This repo's 26 frameworks (9 original + 17 MBA)
  cp -r wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc .claude/skills/
  cp -r bcg-matrix mckinsey-7s swot-pestel ansoff-matrix disruptive-innovation scenario-planning .claude/skills/
  cp -r stp marketing-mix jtbd bmc kotter okr lean-startup real-options game-theory pyramid-principle rbv .claude/skills/
  # 2. TOC (11 tools) — https://github.com/ironyjk/toc-agents
  git clone https://github.com/ironyjk/toc-agents.git /tmp/toc-agents && cp -r /tmp/toc-agents/.claude/skills/toc .claude/skills/
  # 3. TRIZ (10 tools) — https://github.com/ironyjk/triz-agents
  git clone https://github.com/ironyjk/triz-agents.git /tmp/triz-agents && cp -r /tmp/triz-agents/.claude/skills/triz .claude/skills/
dependencies:
  - name: toc-agents
    url: https://github.com/ironyjk/toc-agents
    skills: [toc, toc:crt, toc:ec, toc:frt, toc:prt, toc:tt, toc:five-steps, toc:dbr, toc:ccpm, toc:throughput, toc:buy-in]
  - name: triz-agents
    url: https://github.com/ironyjk/triz-agents
    skills: [triz, triz:ifr, triz:contradiction, triz:matrix, triz:40p, triz:ariz, triz:sufield, triz:resources, triz:trimming, triz:evolution]
  - name: strategy-frameworks
    url: https://github.com/ironyjk/strategy-frameworks
    skills: [wardley, ooda, systems-thinking, blue-ocean, design-thinking, first-principles, porter, drucker, bsc, bcg-matrix, mckinsey-7s, swot-pestel, ansoff-matrix, disruptive-innovation, scenario-planning, stp, marketing-mix, jtbd, bmc, kotter, okr, lean-startup, real-options, game-theory, pyramid-principle, rbv]
---

# Strategic Thinking Agent — 47 Tools, One Entry Point

Meta-reasoning agent: classify the problem, select the best framework(s), execute via Skill tool, synthesize a unified answer.

## Detection Matrix

Analyze the user's problem and match to one or more categories:

| Signal in the problem | Primary Framework | Secondary |
|---|---|---|
| "bottleneck", "can't keep up", "limiting factor", "constraint" | **TOC: Five Steps** | TOC: CRT |
| "conflict", "either-or", "trade-off", "can't have both" | **TOC: EC** | TRIZ: Contradiction |
| "why does this keep happening", "recurring problem", "root cause" | **TOC: CRT** | Systems Thinking |
| "will this solution work?", "side effects", "unintended consequences" | **TOC: FRT** | Systems Thinking |
| "how to implement", "step by step", "execution plan" | **TOC: TT** | Drucker: MBO |
| "resistance to change", "people won't accept", "buy-in" | **TOC: Buy-in** | Design Thinking |
| "scheduling", "project delay", "multi-project" | **TOC: CCPM** | TOC: DBR |
| "should we invest?", "ROI", "make vs buy" | **TOC: Throughput** | Porter: Strategy |
| "technical problem", "engineering contradiction", "improve X without degrading Y" | **TRIZ: Contradiction** | TRIZ: Matrix → 40P |
| "ideal solution", "perfect outcome", "zero cost" | **TRIZ: IFR** | First Principles |
| "simplify", "remove complexity", "too many components" | **TRIZ: Trimming** | First Principles |
| "what's next", "future technology", "evolution" | **TRIZ: Evolution** | Wardley |
| "hidden resource", "underutilized asset" | **TRIZ: Resources** | Blue Ocean |
| "where should we compete", "build vs buy", "strategic position" | **Wardley** | Porter: Forces |
| "competitor entering", "price war", "industry analysis" | **Porter: Five Forces** | Blue Ocean |
| "competitive advantage", "value chain", "cost vs differentiation" | **Porter: Strategy** | Wardley |
| "new market", "escape competition", "create demand" | **Blue Ocean** | Design Thinking |
| "customer problem", "user experience", "what do they really need" | **Design Thinking** | Drucker: 5Q |
| "why is it so expensive", "everyone says it can't be done", "assumption" | **First Principles** | TRIZ: IFR |
| "fast decision needed", "crisis", "competitor moving fast" | **OODA** | TOC: Five Steps |
| "system behaving unexpectedly", "feedback loop", "fix made it worse" | **Systems Thinking** | TOC: CRT |
| "goals", "objectives", "what should we focus on", "KPI" | **Drucker: MBO** | BSC |
| "measure performance", "balanced view", "strategy execution" | **BSC** | Drucker: MBO |
| "mission", "purpose", "who is our customer" | **Drucker: 5Q** | Design Thinking |
| "effectiveness", "time management", "priorities" | **Drucker: Effective** | TOC: Five Steps |
| "portfolio", "which business to invest", "star vs dog", "cash cow", "question mark", "resource allocation" | **BCG Matrix** | Ansoff Matrix |
| "organization not aligned", "culture problem", "merger integration", "restructuring" | **McKinsey 7S** | Kotter |
| "strengths", "weaknesses", "opportunities", "threats", "external environment" | **SWOT-PESTEL** | Porter: Forces |
| "how to grow", "new market or new product", "diversification", "expansion" | **Ansoff Matrix** | Blue Ocean |
| "disruption", "startup threat", "incumbent at risk", "technology shift" | **Disruptive Innovation** | Scenario Planning |
| "uncertain future", "multiple scenarios", "what if", "black swan", "geopolitics", "long-term planning", "strategic foresight" | **Scenario Planning** | Real Options |
| "who is our target customer", "segmentation", "positioning", "brand perception" | **STP** | Marketing Mix |
| "marketing plan", "pricing", "distribution", "promotion", "4P", "7P" | **Marketing Mix** | STP |
| "why do customers buy", "customer motivation", "switching behavior", "hire a product" | **JTBD** | Design Thinking |
| "business model", "revenue model", "value proposition", "canvas" | **BMC** | Lean Startup |
| "change management", "people resist change", "transformation", "adoption" | **Kotter** | McKinsey 7S |
| "OKR", "goal setting", "alignment", "key results", "quarterly goals" | **OKR** | Drucker: MBO |
| "MVP", "validate idea", "startup", "pivot", "experiment", "hypothesis" | **Lean Startup** | BMC |
| "invest or wait", "option value", "staged investment", "defer decision" | **Real Options** | TOC: Throughput |
| "competitor reaction", "price war", "strategic interaction", "game", "bluff" | **Game Theory** | Porter: Forces |
| "present findings", "structure communication", "executive summary", "report" | **Pyramid Principle** | BSC |
| "what is our advantage", "unique resource", "VRIO", "core competence", "capability" | **RBV** | Porter: Strategy |
| "어떻게 키울까", "성장 전략", "사업 확장" | **Ansoff Matrix** | Blue Ocean |
| "경쟁사가 무서워", "시장 잠식", "저가 경쟁자" | **Disruptive Innovation** | Porter: Forces |
| "뭘 해야 할지 모르겠어", "막막하다", "방향을 못 잡겠어" | **Drucker: 5Q** | First Principles |

### Multi-Framework Combinations (for complex problems)

| Problem Type | Recommended Pipeline |
|---|---|
| **"Fix a broken business"** | TOC:CRT (diagnose) → TOC:EC (resolve conflict) → TOC:FRT (validate) → TOC:TT (execute) |
| **"Enter a new market"** | SWOT-PESTEL (scan) → Porter:Forces (analyze industry) → STP (target) → Blue Ocean:ERRC (find space) → BMC (model) |
| **"Innovate a product"** | JTBD (understand job) → Design Thinking:Empathy (deep insight) → TRIZ:Contradiction (solve technical) → Lean Startup:MVP (validate) |
| **"Respond to competitor threat"** | OODA (fast assessment) → Game Theory (predict moves) → Porter:Forces (industry dynamics) → RBV (our advantages) |
| **"Disruption defense/offense"** | Disruptive Innovation (assess threat) → RBV (identify defensible assets) → Scenario Planning (map possible futures) → Real Options (stage response) |
| **"Strategic planning"** | SWOT-PESTEL (environment) → Drucker:5Q (mission) → Wardley:Map (landscape) → BCG Matrix (portfolio) → BSC (scorecard) → OKR (cascade) |
| **"Improve operations"** | TOC:Five Steps (find bottleneck) → Systems Thinking:CLD (feedback loops) → TOC:DBR (schedule around constraint) |
| **"Something feels wrong but can't pinpoint"** | Systems Thinking:Archetype (pattern) → TOC:CRT (root cause) → TOC:EC (core conflict) |
| **"Launch new business/service"** | BMC (design model) → STP (segment & position) → Marketing Mix (4P/7P tactics) → Lean Startup (validate with MVP) |
| **"Growth strategy"** | Ansoff Matrix (growth options) → Scenario Planning (test futures) → Real Options (stage investments) → OKR (execute) |
| **"Organization transformation"** | McKinsey 7S (diagnose alignment) → Kotter (8-step change) → OKR (measure progress) → Pyramid Principle (communicate) |
| **"Investment under uncertainty"** | Scenario Planning (map futures) → Real Options (value flexibility) → Game Theory (competitor dynamics) → TOC:Throughput (ROI) |
| **"Communicate strategy to board"** | Pyramid Principle (structure) → BCG Matrix (portfolio visual) → BSC (metrics) → Scenario Planning (risk narrative) |

## Execution Protocol

### Step 1: Listen & Classify
Identify key nouns (entities), verbs (actions), emotion/urgency (crisis/frustration/curiosity/planning), and scope (personal/team/org/industry).

### Step 2: Select Framework(s)
Using the Detection Matrix: pick 1 PRIMARY + 0-2 SECONDARY. Explain WHY (one sentence each).

**Tiebreaker rules**:
1. **Specificity wins**: More specific signal match beats vague match
2. **Industry routing**: `Read references/industry-routing.md` for domain-specific tiebreakers
3. **Urgency**: Crisis → OODA/TOC; Planning → Porter/Wardley/Scenario Planning; Exploration → Blue Ocean/Design Thinking/TRIZ
4. **Scope**: Personal/team → single framework; Org-wide → multi-framework pipeline
5. **Recency**: Prefer frameworks the user hasn't used recently

### Step 3: Execute
Invoke each framework via `Skill("toc:crt", args="[problem description]")`. Run in logical sequence.

### Step 4: Synthesize
**Integrate** (where do frameworks agree/differ?), **Prioritize** (ONE most important insight), **Recommend** (max 3 concrete next steps).

## Execution Strategy

When multiple frameworks are selected:
- **Independent analyses** (frameworks analyzing the same problem from different lenses): Use Agent tool to run in parallel. Each agent reads the framework's SKILL.md and applies it.
- **Sequential pipeline** (output of one feeds the next): Use Skill tool in sequence.
- After all frameworks complete, synthesize into the unified output format.

For conflict resolution between frameworks, `Read references/conflict-rules.md`.

## Reference Loading

Additional guidance is available in `references/`:
- `references/industry-routing.md` — Industry-specific framework preferences
- `references/conflict-rules.md` — Resolving contradictory framework recommendations
- `references/input-schema.md` — Normalized input format for framework invocation
- `references/fallback.md` — What to do when no framework matches

## Output Format

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🧠 Strategic Thinking Agent
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📋 Problem: [one-line summary]

🔧 Selected Tools:
  1. [Framework] — [why]
  2. [Framework] — [why]

━━ Analysis ━━

[Framework 1 output]

[Framework 2 output]

━━ Synthesis ━━

Core Insight: [the ONE key finding]

Recommended Actions:
1. [action] — [timeframe]
2. [action] — [timeframe]
3. [action] — [timeframe]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Sub-commands
- `/think` — Full auto-routing: classify → select → execute → synthesize
- `/think:select` — Just classify and recommend tools (don't execute)
- `/think:compare` — Apply 2-3 frameworks to the same problem and compare answers

## Rules
1. NEVER skip the classification step — always explain why you chose a framework
2. ALWAYS synthesize at the end — raw framework output alone is not enough
3. For simple problems, use 1 framework. For complex ones, use 2-3 max.
4. If the problem doesn't fit any framework, say so and reason from first principles
5. Prefer frameworks the user hasn't used recently for fresh perspectives
