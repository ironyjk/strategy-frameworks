---
name: game-theory
version: "1.1.0"
description: "Game Theory for Business Strategy — analyze competitive interactions, predict rival behavior, and design winning strategies. Prisoner's Dilemma, Nash Equilibrium, commitment devices, and co-opetition."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Game Theory for Business Strategy (게임이론 전략 분석)

Analyze competitive interactions, predict rival behavior, and design winning strategies using game theory frameworks.

> Background and theory: Read references/foundation.md

---

## Execution Protocol

### Step 1: Game Identification
1. Identify all **players** and their objectives
2. Classify the game:
   - Simultaneous vs Sequential
   - One-shot vs Repeated
   - Complete vs Incomplete information
3. List available **strategies** for each player

### Step 2: Payoff Analysis
1. Construct payoff matrix (simultaneous) or game tree (sequential)
2. Identify dominant/dominated strategies
3. Find **Nash Equilibria** (pure and mixed)
4. For sequential games: apply **backward induction** for Subgame Perfect Equilibrium

### Step 3: Game Classification
Map to the closest classic game pattern:
- **Prisoner's Dilemma** → mutual defection despite better cooperative outcome
- **Chicken** → two equilibria, commitment wins
- **Stag Hunt** → trust-dependent coordination
- **Battle of the Sexes** → coordination with preference conflict

### Step 4: Dynamic Analysis
- How does **repetition** change incentives?
- What **information asymmetries** exist?
- Is the equilibrium **efficient**? If not, why?

### Step 5: Strategic Recommendations
- Identify available **commitment devices** (capacity, contracts, public announcements)
- Assess **credibility** of threats and promises
- Find **co-opetition opportunities** (complementors, pie expansion)

---

## Business Application Quick Reference

### Pricing Strategy
| Situation | Game | Strategy |
|-----------|------|----------|
| Oligopoly price competition | Repeated PD | Tit-for-Tat: match competitor |
| Price war threatening | Chicken | Signal commitment (capacity) |
| Commodity market | Bertrand | Differentiate to escape |
| New entrant | Sequential | Limit pricing or accommodation |

### Market Entry Decision
1. Is incumbent's threat of retaliation credible?
2. Can I commit resources signaling I won't exit?
3. Room for both players, or Chicken Game?
4. Can I enter a niche to avoid direct confrontation?

### Negotiation Tactics
| Tactic | Game Theory Basis |
|--------|-------------------|
| BATNA | Outside option = reservation price |
| Anchoring | Focal point in multiple equilibria |
| Deadlines | Changing infinite → finite game |
| Package deals | Expanding scope to create value |
| Walk-away credibility | Commitment device |

### Auctions
| Type | Strategy | Winner's Curse Risk |
|------|----------|---------------------|
| English (ascending) | Bid up to valuation | Low |
| Dutch (descending) | Bid when price reaches value | Medium |
| Sealed first-price | Shade bid below valuation | High |
| Vickrey (second-price) | Bid true valuation | None (dominant) |

### Platform Competition
- **Network effects**: more users attract more complementors
- **Tipping**: winner-take-all tendency
- **Multi-homing**: reduces tipping pressure
- **Envelopment**: leveraging one platform into adjacent markets
- **Subsidize one side**: price below cost to attract the other

---

## Output Format

```markdown
### Game Identification
- Type: [simultaneous/sequential, one-shot/repeated]
- Players and objectives:
- Strategies:

### Payoff Analysis
[Matrix or tree in ASCII]
- Dominant/dominated strategies:
- Nash Equilibrium:

### Strategic Insights
- Efficiency:
- Information asymmetries:
- Repetition effects:

### Recommended Strategy
- Optimal strategy:
- Commitment devices:
- Risks and contingencies:

### Co-opetition Opportunities
- Complementors:
- Pie expansion:
- Cooperation vs competition zones:
```

---

## Anti-Patterns

1. **Treating all games as zero-sum** — most business interactions have cooperative elements
2. **Ignoring credibility** — threats/promises only matter if credible
3. **Static analysis of repeated games** — cooperation dynamics change everything
4. **Missing complementors** — focusing only on competitors, ignoring value net
5. **Over-formalizing** — payoff numbers are approximate; focus on structural insights

---

## Sub-Commands

### `/think:game-theory` — Full Strategic Interaction Analysis
Comprehensive game-theoretic analysis:
1. Identify the game type and all players
2. Map strategies and payoffs
3. Find equilibria
4. Analyze dynamics (repeated? sequential? information?)
5. Recommend strategic moves with commitment devices
6. Identify co-opetition opportunities

### `/game-theory:model` — Model a Specific Competitive Interaction
Build a formal game model:
1. Define players, strategies, and payoffs
2. Draw payoff matrix or game tree
3. Solve for all Nash Equilibria (pure and mixed)
4. Identify dominant strategies
5. Test sensitivity to payoff changes

### `/game-theory:coopetition` — Co-opetition Value Net Analysis
Analyze using Brandenburger & Nalebuff framework:
1. Map complete Value Net (customers, suppliers, competitors, complementors)
2. Calculate each player's added value
3. Apply PARTS framework
4. Identify opportunities to change the game
5. Design win-win strategies that expand the pie

---

## When to Use

- Competitive pricing decisions (oligopoly, entry)
- Market entry / exit decisions
- Negotiation preparation
- Alliance and partnership design
- Platform strategy

## Companion Frameworks

- **Porter** — industry structure analysis (complements game-theoretic player analysis)
- **Blue Ocean** — when the game itself should be changed rather than played better
- **Real Options** — valuing strategic flexibility under uncertainty
