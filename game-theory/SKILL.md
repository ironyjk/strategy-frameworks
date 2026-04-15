---
name: game-theory
version: "1.0.0"
description: "Game Theory for Business Strategy — analyze competitive interactions, predict rival behavior, and design winning strategies. Prisoner's Dilemma, Nash Equilibrium, commitment devices, and co-opetition."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# 🎯 Game Theory for Business Strategy (게임이론 전략 분석)

Analyze competitive interactions, predict rival behavior, and design winning strategies using game theory frameworks.

---

## 1. Core Concepts (핵심 개념)

Every strategic interaction can be decomposed into five elements:

| Element | Description | Example |
|---------|-------------|---------|
| **Players (플레이어)** | Decision-makers in the game | Firms, regulators, customers |
| **Strategies (전략)** | Available actions for each player | Price high/low, enter/stay out |
| **Payoffs (보수)** | Outcomes for each strategy combination | Profit, market share, reputation |
| **Information (정보)** | What each player knows when deciding | Costs, demand, rival's move |
| **Equilibrium (균형)** | Stable outcome where no one wants to deviate | Nash Equilibrium |

### Information Types
- **Perfect information (완전정보)**: All previous moves are observable (chess)
- **Imperfect information (불완전정보)**: Some moves are hidden (poker)
- **Complete information (완비정보)**: All payoffs are common knowledge
- **Incomplete information (불완비정보)**: Some payoffs are private (costs, willingness to pay)

---

## 2. Classic Games (고전 게임)

### 2.1 🔒 Prisoner's Dilemma (죄수의 딜레마)

The most famous game in theory. Individual rationality leads to collective irrationality.

```
                    Player B
                 Cooperate    Defect
              ┌───────────┬───────────┐
  Cooperate   │  (3, 3)   │  (0, 5)   │
Player A      ├───────────┼───────────┤
  Defect      │  (5, 0)   │  (1, 1)*  │
              └───────────┴───────────┘
                              * = Nash Equilibrium
```

**Dominant strategy**: Both defect, even though mutual cooperation yields higher payoffs.

**Business applications**:
- **Price wars (가격전쟁)**: Two firms cutting prices until margins collapse
- **Advertising arms races (광고 경쟁)**: Both spend heavily, neither gains share
- **R&D investment**: Overinvest to avoid falling behind
- **Environmental compliance**: Pollute if rival pollutes (race to the bottom)

**Escape routes**: Repeated interaction, reputation, contracts, regulation, industry associations.

---

### 2.2 🐔 Chicken Game (치킨 게임)

Two players drive toward each other. Swerving is safe but humiliating; going straight wins — unless both go straight.

```
                    Player B
                  Swerve     Straight
              ┌───────────┬───────────┐
  Swerve      │  (3, 3)   │  (1, 5)*  │
Player A      ├───────────┼───────────┤
  Straight    │  (5, 1)*  │  (0, 0)   │
              └───────────┴───────────┘
                * = Nash Equilibria (two pure-strategy NE)
```

**Key insight**: Two Nash Equilibria exist. The player who credibly commits first wins.

**Business applications**:
- **Market entry (시장 진입)**: Two firms eyeing the same niche — room for one
- **Standards wars (표준 전쟁)**: VHS vs Betamax, Blu-ray vs HD DVD
- **Capacity expansion**: Building a plant signals commitment
- **Hostile takeovers**: Bidding wars where walking away is costly

**Winning move**: Make an irreversible commitment (burn your bridges).

---

### 2.3 🦌 Stag Hunt (사슴 사냥)

Cooperation yields the best outcome, but requires trust. Defection is safe.

```
                    Player B
                   Stag       Hare
              ┌───────────┬───────────┐
  Stag        │  (5, 5)*  │  (0, 3)   │
Player A      ├───────────┼───────────┤
  Hare        │  (3, 0)   │  (3, 3)*  │
              └───────────┴───────────┘
                * = Nash Equilibria (two pure-strategy NE)
```

**Key insight**: Two equilibria — one payoff-dominant (Stag, Stag), one risk-dominant (Hare, Hare). Trust determines which prevails.

**Business applications**:
- **Industry standards (산업 표준)**: Adopting a common platform benefits all, but only if everyone commits
- **Joint ventures**: Both must invest fully for the venture to succeed
- **Supply chain coordination**: Lean inventory works only if all partners are reliable
- **Technology adoption**: Network effects require critical mass

**Solution**: Build trust through communication, small initial commitments, and penalties for defection.

---

### 2.4 💑 Battle of the Sexes (성별 전쟁)

Both players prefer coordination, but disagree on which outcome to coordinate on.

```
                    Player B
                  Opera      Football
              ┌───────────┬───────────┐
  Opera       │  (3, 2)*  │  (0, 0)   │
Player A      ├───────────┼───────────┤
  Football    │  (0, 0)   │  (2, 3)*  │
              └───────────┴───────────┘
                * = Nash Equilibria (two pure-strategy NE)
```

**Key insight**: Coordination is better than miscoordination, but who gets their preferred outcome?

**Business applications**:
- **Technology standards (기술 표준)**: Apple vs Google ecosystem — both want a standard, each prefers their own
- **Industry consortia**: Joint R&D where partners have different preferred approaches
- **Merger negotiations**: Both benefit from merging but disagree on terms
- **Platform competition**: Developers and users coordinating on which platform to adopt

**Resolution**: Focal points, sequential moves, side payments, or alternating advantage.

---

## 3. 📐 Nash Equilibrium (내쉬 균형)

### What It Is
A strategy profile where **no player can improve their payoff by unilaterally changing their strategy**, given what others are doing.

Named after John Nash (1928-2015, Nobel Prize 1994).

### How to Find It

**Step 1**: For each player, identify best responses to every possible strategy of the other player(s).

**Step 2**: A Nash Equilibrium is where all players are simultaneously playing best responses.

```
Method: Underline Best Responses

                    Player B
                   Left       Right
              ┌───────────┬───────────┐
  Up          │  (2̲, 1̲)   │  (0, 0)   │
Player A      ├───────────┼───────────┤
  Down        │  (0, 0)   │  (1̲, 2̲)   │
              └───────────┴───────────┘

Cells where BOTH payoffs are underlined = Nash Equilibria
→ (Up, Left) and (Down, Right) are both NE
```

### Why It Matters

- **Prediction**: NE predicts where strategic interactions settle
- **Stability**: No player has incentive to deviate unilaterally
- **Limitation**: Does not mean the outcome is optimal (Prisoner's Dilemma)
- **Multiple NE**: When multiple exist, focal points or dynamics determine which emerges

### Mixed Strategy Nash Equilibrium (혼합 전략 균형)
When no pure-strategy NE exists (or in addition to pure NE), players randomize. Each player chooses a probability distribution over strategies that makes the other player indifferent.

---

## 4. 🌳 Sequential Games (순차 게임)

### Game Trees and Backward Induction (역진 귀납법)

When players move in sequence, represent the game as a tree and solve backwards.

```
         Player A
        /         \
     Enter       Stay Out
      /               \
   Player B          (0, 5)
   /      \
Fight    Accommodate
 /            \
(-1, -1)     (2, 3)
```

**Backward induction**:
1. At Player B's node: Accommodate (3 > -1) → B will accommodate
2. At Player A's node: Enter (2 > 0) → A enters knowing B accommodates
3. **Subgame Perfect Equilibrium**: (Enter, Accommodate)

### First-Mover Advantage (선발자 이점)
- Setting industry standards (QWERTY keyboard)
- Capturing scarce resources (spectrum licenses)
- Building brand recognition and switching costs
- Preemptive capacity investment

### Second-Mover Advantage (후발자 이점)
- Learning from pioneer's mistakes
- Free-riding on market education costs
- Technology leapfrogging
- Avoiding sunk costs in uncertain markets
- Example: Google was not the first search engine

---

## 5. 🔄 Repeated Games (반복 게임)

### The Shadow of the Future

When players interact repeatedly, cooperation can emerge even without binding contracts.

**Folk Theorem**: In infinitely repeated games (or games with uncertain end), virtually any outcome that gives each player more than their worst-case payoff can be sustained as a Nash Equilibrium.

### Key Strategies

| Strategy | Rule | Pros | Cons |
|----------|------|------|------|
| **Tit-for-Tat (팃포탯)** | Cooperate first, then copy opponent's last move | Simple, forgiving, retaliatory | Gets locked in mutual defection |
| **Grim Trigger** | Cooperate until defection, then always defect | Maximum deterrence | No forgiveness, one mistake is fatal |
| **Win-Stay, Lose-Shift** | Repeat action if payoff was good, switch if bad | Self-correcting | Exploitable in some settings |
| **Generous Tit-for-Tat** | TFT but occasionally forgive defection | Breaks defection cycles | Slightly exploitable |

### Reputation (평판)

In repeated games, reputation is a strategic asset:
- **Building reputation**: Consistently follow through on threats/promises
- **Reputation for toughness**: Deters entry (e.g., predatory pricing in early periods)
- **Reputation for fairness**: Enables cooperation (e.g., fair supplier relationships)

### Credible Threats (신뢰할 수 있는 위협)

A threat is credible only if carrying it out is in the threatener's interest when the time comes.

**Incredible threat**: "If you enter our market, we'll price below cost forever" (not credible — they'd lose money)
**Credible threat**: "If you enter, we'll use our excess capacity" (costs are already sunk)

---

## 6. 🤝 Co-opetition (코피티션)

### Brandenburger & Nalebuff Value Net

Not all interactions are zero-sum. **Co-opetition** = simultaneous cooperation and competition.

```
                 ┌──────────────┐
                 │  Customers   │
                 │   (고객)      │
                 └──────┬───────┘
                        │
    ┌──────────────┐    │    ┌──────────────┐
    │ Complementors │────┼────│  Competitors  │
    │   (보완자)     │    │    │    (경쟁자)    │
    └──────────────┘    │    └──────────────┘
                        │
                 ┌──────┴───────┐
                 │  Suppliers   │
                 │   (공급자)    │
                 └──────────────┘
                        │
                   YOUR COMPANY
                    (자사)
```

### The PARTS Framework

| Element | Question | Strategic Action |
|---------|----------|-----------------|
| **Players** | Who are all the players in the game? | Add players who increase the pie |
| **Added Values** | What does each player bring? | Increase your added value, limit others' |
| **Rules** | What are the rules? | Shape rules in your favor |
| **Tactics** | What perceptions exist? | Manage information and signals |
| **Scope** | What are the boundaries? | Link or delink games strategically |

### Complementor vs Competitor

- **Complementor (보완자)**: A player whose product/service makes yours MORE valuable
  - Example: App developers are complementors to smartphone makers
- **Competitor (경쟁자)**: A player whose product/service makes yours LESS valuable
  - Example: Android vs iOS

**The same player can be BOTH**: Samsung supplies Apple with screens (complementor) while competing in smartphones (competitor).

---

## 7. 🔥 Commitment Devices and Strategic Moves (전략적 행동)

### Types of Strategic Moves

| Move | Description | Example |
|------|-------------|---------|
| **Unconditional commitment** | Remove your own options | Building a factory (sunk cost) |
| **Threat** | "If you do X, I'll do Y (bad for both)" | Predatory pricing threat |
| **Promise** | "If you do X, I'll do Y (good for both)" | Most-favored-customer clause |

### Burning Bridges (다리 태우기)

Making retreat impossible so the opponent knows you'll fight:
- **Hernán Cortés**: Burned his ships so soldiers had to conquer or die
- **Business equivalent**: Signing long-term exclusive contracts, investing in dedicated assets, publicly announcing commitments

### Specific Commitment Devices

| Device | Mechanism | Business Example |
|--------|-----------|-----------------|
| **Most-Favored-Customer Clause** | Promise lowest price to all | Deters price competition |
| **Meeting Competition Clause** | Promise to match any lower price | Removes incentive to undercut |
| **Capacity investment** | Build excess capacity | Deters entry (credible threat) |
| **Long-term contracts** | Lock in customers/suppliers | Raises switching costs |
| **Public commitments** | Stake reputation on an outcome | CEO announcing market entry |
| **Organizational structure** | Delegate to aggressive managers | Makes tough responses automatic |

---

## 8. 💼 Business Applications (비즈니스 적용)

### 8.1 Pricing Strategy (가격 전략)

| Situation | Game | Recommended Strategy |
|-----------|------|---------------------|
| Oligopoly price competition | Repeated Prisoner's Dilemma | Tit-for-Tat: match competitor's prices |
| Price war threatening | Chicken Game | Signal commitment to fight (capacity) |
| Commodity market | Bertrand competition | Differentiate to escape price competition |
| New entrant pricing | Sequential game | Limit pricing or accommodation |

### 8.2 Market Entry (시장 진입)

**Entrant's Decision Tree**:
1. Is the incumbent's threat of retaliation credible?
2. Can I commit resources that signal I won't exit?
3. Is there room for both players (or is it a Chicken Game)?
4. Can I enter a niche to avoid direct confrontation?

### 8.3 Negotiation (협상)

| Tactic | Game Theory Basis |
|--------|-------------------|
| BATNA (최선의 대안) | Outside option determines reservation price |
| Anchoring | Focal point in multiple equilibria |
| Deadlines | Changing the game from infinite to finite |
| Package deals | Expanding the scope to create value |
| Walk-away credibility | Commitment device |

### 8.4 Auctions (경매)

| Type | Strategy | Winner's Curse Risk |
|------|----------|---------------------|
| **English (ascending)** | Bid up to valuation | Low |
| **Dutch (descending)** | Bid when price reaches value | Medium |
| **Sealed first-price** | Shade bid below valuation | High |
| **Sealed second-price (Vickrey)** | Bid true valuation | None (dominant strategy) |

### 8.5 Platform Competition (플랫폼 경쟁)

Key game-theoretic dynamics:
- **Network effects**: More users attract more complementors (positive feedback)
- **Tipping**: Market tends toward one dominant platform (winner-take-all)
- **Multi-homing**: Users on multiple platforms reduce tipping pressure
- **Envelopment**: Leveraging one platform to enter an adjacent market
- **Subsidize one side**: Price below cost for one side to attract the other (e.g., free for users, charge merchants)

---

## 9. 📋 Output Format

When analyzing a strategic interaction, structure the output as follows:

### 🎮 Game Identification
- Type of game (simultaneous/sequential, one-shot/repeated)
- Players and their objectives
- Available strategies for each player

### 📊 Payoff Analysis
- Payoff matrix or game tree (ASCII)
- Dominant/dominated strategies
- Nash Equilibrium identification

### 🧠 Strategic Insights
- Is the equilibrium efficient? If not, why?
- What information advantages/asymmetries exist?
- How does repetition change the game?

### 🎯 Recommended Strategy
- Optimal strategy given the game structure
- Commitment devices or strategic moves available
- Risks and contingency plans

### 🔗 Co-opetition Opportunities
- Who are the complementors?
- How can the pie be expanded before dividing it?
- Where does cooperation create more value than competition?

---

## 10. Sub-Commands

### `/game-theory` — Full Strategic Interaction Analysis
Comprehensive game-theoretic analysis of a competitive situation:
1. Identify the game type and all players
2. Map strategies and payoffs
3. Find equilibria
4. Analyze dynamics (repeated? sequential? information?)
5. Recommend strategic moves with commitment devices
6. Identify co-opetition opportunities

### `/game-theory:model` — Model a Specific Competitive Interaction
Build a formal game model for a specific competitive interaction:
1. Define players, strategies, and payoffs
2. Draw payoff matrix or game tree
3. Solve for all Nash Equilibria (pure and mixed)
4. Identify dominant strategies
5. Test sensitivity to payoff changes

### `/game-theory:coopetition` — Co-opetition Value Net Analysis
Analyze competitive landscape using the Brandenburger & Nalebuff framework:
1. Map the complete Value Net (customers, suppliers, competitors, complementors)
2. Calculate each player's added value
3. Apply PARTS framework
4. Identify opportunities to change the game
5. Design win-win strategies that expand the pie
