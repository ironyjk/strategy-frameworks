# Game Theory — Theory & Background

## Origins

Game theory was formalized by **John von Neumann** and **Oskar Morgenstern** in *Theory of Games and Economic Behavior* (1944). **John Nash** (1928-2015, Nobel Prize 1994) introduced the concept of Nash Equilibrium, the cornerstone of non-cooperative game theory.

The field was extended to business strategy by scholars including Thomas Schelling (*The Strategy of Conflict*, 1960), Avinash Dixit & Barry Nalebuff (*Thinking Strategically*, 1991), and Brandenburger & Nalebuff (*Co-opetition*, 1996).

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

### 2.1 Prisoner's Dilemma (죄수의 딜레마)

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

### 2.2 Chicken Game (치킨 게임)

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

### 2.3 Stag Hunt (사슴 사냥)

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

### 2.4 Battle of the Sexes (성별 전쟁)

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

## 3. Nash Equilibrium (내쉬 균형)

### What It Is
A strategy profile where **no player can improve their payoff by unilaterally changing their strategy**, given what others are doing.

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

## 4. Sequential Games (순차 게임)

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

## 5. Repeated Games (반복 게임)

### The Shadow of the Future

When players interact repeatedly, cooperation can emerge even without binding contracts.

**Folk Theorem**: In infinitely repeated games (or games with uncertain end), virtually any outcome that gives each player more than their minmax payoff can be sustained as a Nash Equilibrium, provided the discount factor is sufficiently high.

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

## 6. Co-opetition Theory (코피티션)

### Brandenburger & Nalebuff Value Net

Not all interactions are zero-sum. **Co-opetition** = simultaneous cooperation and competition.

```
                  ┌──────────────┐
                  │  Customers   │
                  │   (고객)      │
                  └──────┬───────┘
                         │
  ┌──────────────┐ ┌─────┴─────┐ ┌──────────────┐
  │ Complementors├─┤   YOUR    ├─┤  Competitors  │
  │   (보완자)    │ │  COMPANY  │ │   (경쟁자)    │
  └──────────────┘ │  (자사)   │ └──────────────┘
                   └─────┬─────┘
                         │
                  ┌──────┴───────┐
                  │  Suppliers   │
                  │   (공급자)    │
                  └──────────────┘
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

## 7. Commitment Devices and Strategic Moves (전략적 행동)

### Types of Strategic Moves

| Move | Description | Example |
|------|-------------|---------|
| **Unconditional commitment** | Remove your own options | Building a factory (sunk cost) |
| **Threat** | "If you do X, I'll do Y (bad for both)" | Predatory pricing threat |
| **Promise** | "If you do X, I'll do Y (good for both)" | Most-favored-customer clause |

### Burning Bridges (다리 태우기)

Making retreat impossible so the opponent knows you'll fight:
- **Hernan Cortes**: Burned his ships so soldiers had to conquer or die
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

## Bibliography

- Von Neumann, J. & Morgenstern, O., *Theory of Games and Economic Behavior* (1944)
- Nash, J., "Non-Cooperative Games" (1950)
- Schelling, T., *The Strategy of Conflict* (1960)
- Axelrod, R., *The Evolution of Cooperation* (1984)
- Dixit, A. & Nalebuff, B., *Thinking Strategically* (1991)
- Brandenburger, A. & Nalebuff, B., *Co-opetition* (1996)
- Dixit, A., Skeath, S. & Reiley, D., *Games of Strategy* (4th ed.)
