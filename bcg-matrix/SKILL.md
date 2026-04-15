---
name: bcg-matrix
version: "1.0.0"
description: "BCG Growth-Share Matrix — portfolio management framework for allocating resources across business units. Classify units as Stars, Cash Cows, Dogs, or Question Marks based on market growth and relative market share."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# BCG Growth-Share Matrix — Manage Your Portfolio of Businesses

You are a strategy consultant using the BCG Growth-Share Matrix (Boston Consulting Group, 1970).

## The 2x2 Matrix

Classify business units (or products) along two dimensions:
- **Y-axis**: Market Growth Rate (시장 성장률) — is the market expanding?
- **X-axis**: Relative Market Share (상대적 시장점유율) — your share vs. the largest competitor

```
         Market Growth Rate (시장 성장률)
              HIGH
               │
    ┌──────────┼──────────┐
    │  ★ Stars │  ? Question│
    │  (스타)   │    Marks   │
    │          │ (물음표)    │
    │ HIGH     │  LOW       │
    │ share    │  share     │
    │ HIGH     │  HIGH      │
    │ growth   │  growth    │
    ├──────────┼───────────┤
    │ 🐄 Cash  │  🐕 Dogs   │
    │   Cows   │  (개)      │
    │(자금젖소) │            │
    │ HIGH     │  LOW       │
    │ share    │  share     │
    │ LOW      │  LOW       │
    │ growth   │  growth    │
    └──────────┼───────────┘
               │
              LOW
    HIGH ◀────────────▶ LOW
       Relative Market Share
         (상대적 시장점유율)
```

**Note**: The X-axis is inverted — HIGH share is on the LEFT, LOW share on the RIGHT. This is the original BCG convention.

## Quadrant 1: Stars (스타) — High Growth, High Share

Stars are market leaders in fast-growing markets. They generate significant revenue but also require heavy investment to maintain their leading position as the market expands.

**Characteristics**:
- Highest revenue growth potential
- Cash-hungry — growth requires continuous investment (capex, marketing, R&D)
- Near cash-neutral: high inflows offset by high reinvestment needs
- Competitive battles are fiercest here

**Strategy**: **Invest heavily (적극 투자)**
- Protect and grow market share at all costs
- Fund from Cash Cow proceeds
- Build scale advantages before growth slows
- Stars that maintain share become tomorrow's Cash Cows
- If you underinvest, Stars degrade into Question Marks

**Key question**: "Are we investing enough to maintain share as this market grows?"

## Quadrant 2: Cash Cows (자금젖소) — Low Growth, High Share

Cash Cows are dominant players in mature, slow-growing markets. The combination of high share and low required investment makes them powerful cash generators.

**Characteristics**:
- Largest and most reliable cash generators
- Low investment needs — market is mature, position is established
- Strong margins from scale and experience curve advantages
- Competitors are unlikely to challenge in a stagnant market

**Strategy**: **Harvest cash (수확)**
- Maximize cash extraction with minimal reinvestment
- Invest only enough to maintain current market position
- Channel surplus cash to fund Stars and promising Question Marks
- Do NOT over-invest — the market isn't growing
- Defend against disruption, but accept the market's maturity

**Key question**: "Are we extracting maximum cash while keeping the position stable?"

## Quadrant 3: Question Marks (물음표) — High Growth, Low Share

Question Marks (also called Problem Children or Wild Cats) operate in attractive, high-growth markets but hold a weak competitive position. They are the most strategically difficult quadrant.

**Characteristics**:
- Cash-intensive — need heavy investment just to keep up with market growth
- Low share means poor cost position and weak bargaining power
- Uncertain future — could become Stars or could become Dogs
- Highest strategic risk in the portfolio

**Strategy**: **Invest selectively or divest (선별 투자 또는 철수)**
- Evaluate honestly: can we realistically achieve market leadership?
- If yes → invest aggressively to build share (the "double down" move)
- If no → divest quickly before the market matures and they become Dogs
- Never spread resources thinly across all Question Marks — pick winners
- The worst outcome is chronic under-investment (perpetual cash drain with no payoff)

**Key question**: "Can we realistically become #1 or #2 in this market? If not, exit now."

## Quadrant 4: Dogs (개) — Low Growth, Low Share

Dogs hold weak positions in unattractive, low-growth markets. They typically generate little profit and may even be cash traps.

**Characteristics**:
- Low profitability or losses
- Consume management attention disproportionate to their value
- Often kept for emotional or historical reasons, not strategic ones
- May have hidden value (real estate, brand, technology) worth extracting

**Strategy**: **Divest or liquidate (철수 또는 청산)**
- Divest, sell, or wind down unless:
  - They provide strategic synergy with other units (shared distribution, brand halo)
  - They can be repositioned into a niche (a "focus Dog" strategy)
  - They generate small but positive cash flow with zero investment
- If retaining, minimize investment — run for cash or harvest remaining value
- Do NOT pour resources into turnaround attempts without strong evidence

**Key question**: "Why are we still in this business? What would we lose by exiting?"

## Portfolio Balance Analysis (포트폴리오 균형 분석)

A healthy portfolio needs the right mix across all four quadrants:

### Ideal Portfolio Mix
```
┌────────────────────────────────────────────────────┐
│  Balanced Portfolio                                 │
│                                                     │
│  Cash Cows: 2-3 units  → Fund the future           │
│  Stars:     1-2 units  → Tomorrow's Cash Cows       │
│  Question Marks: 1-2   → Selected bets on growth    │
│  Dogs:      0-1 units  → Actively divesting          │
│                                                     │
│  Cash Flow: Cows → Stars + Question Marks           │
└────────────────────────────────────────────────────┘
```

### Danger Signs (위험 신호)
- **Too many Dogs**: Portfolio is aging and declining — no growth engine
- **Too many Question Marks**: Spreading investment too thin, burning cash
- **No Cash Cows**: No reliable funding source for growth initiatives
- **No Stars**: No pipeline for future Cash Cows — the portfolio has a gap
- **All Cash Cows**: Short-term rich, long-term dead — not investing in growth

### Cash Flow Dynamics (현금흐름 역학)

The BCG Matrix is fundamentally about **cash flow allocation**:

```
  Cash Cows ──[$$$]──▶ Stars (maintain/grow share)
      │
      └────[$$$]──▶ Question Marks (selected bets)
      
  Dogs ──[divest]──▶ Release capital back to portfolio

  Stars (over time) ──[mature]──▶ Cash Cows (the virtuous cycle)
  Question Marks ──[success]──▶ Stars ──▶ Cash Cows
  Question Marks ──[failure]──▶ Dogs ──▶ Divest
```

**The Success Sequence**: Question Mark → Star → Cash Cow
**The Disaster Sequence**: Star → Question Mark → Dog (from underinvestment)

## Strategy Prescriptions Summary

| Quadrant | Investment | Cash Flow | Strategic Priority |
|----------|-----------|-----------|-------------------|
| Stars (스타) | High — grow/maintain | Net neutral | Protect share, fund growth |
| Cash Cows (자금젖소) | Low — maintain only | Strong positive | Harvest, fund others |
| Question Marks (물음표) | Very high OR zero | Strong negative | Decide: invest or exit |
| Dogs (개) | Zero/minimal | Neutral to negative | Divest or harvest |

## Limitations and Modern Updates (한계점 및 현대적 보완)

### Classic Limitations
1. **Only two dimensions**: Ignores synergies, brand value, strategic fit, competitive dynamics
2. **Market definition ambiguity**: How you define "market" changes the entire analysis
3. **Relative share ≠ profitability**: Some low-share niche players are highly profitable
4. **Growth ≠ attractiveness**: High-growth markets can be unprofitable (hypercompetitive)
5. **Static snapshot**: Does not capture trajectory or momentum
6. **Dogs may have value**: Strategic synergies, platform effects, option value

### BCG's Own Updates

**BCG Classics Revisited (2014)**: BCG acknowledged the matrix works best when:
- Experience curves are steep (share = cost advantage)
- Markets are well-defined and growth is measurable
- Capital is the binding constraint

**Adaptive Strategy**: In volatile, unpredictable markets, BCG now recommends:
- Speed of learning over market share
- Experimentation over planning
- Adaptability over scale

**The Henderson Institute** extensions:
- Add a third dimension: **competitive advantage sustainability**
- Consider **ecosystem position**, not just market share
- Use with scenario planning for dynamic industries

### Complementary Frameworks
- **GE-McKinsey Matrix**: 3x3 grid with multi-factor axes (more nuanced, more complex)
- **Ansoff Matrix**: Growth direction decisions (market penetration, development, diversification)
- **Porter's Five Forces**: Industry attractiveness analysis (pairs well with growth rate assessment)

## Output Format

```
━━ BCG Matrix Analysis: [company/portfolio] ━━

📊 Portfolio Map

  HIGH GROWTH
    ★ Stars: [list with revenue/share data]
    ? Question Marks: [list with revenue/share data]
  LOW GROWTH
    🐄 Cash Cows: [list with revenue/share data]
    🐕 Dogs: [list with revenue/share data]

💰 Cash Flow Dynamics
  Cash generators: [Cash Cows providing $X]
  Cash consumers: [Stars and Question Marks requiring $X]
  Net portfolio cash flow: [surplus/deficit]

⚖️ Portfolio Balance
  Current mix: [X Stars, Y Cows, Z QMs, W Dogs]
  Health assessment: [balanced / aging / overextended / etc.]
  Key gap: [what's missing — e.g., "no Stars pipeline"]

🎯 Strategic Recommendations
  1. [Unit A]: [action — invest/harvest/divest] — [reasoning]
  2. [Unit B]: [action] — [reasoning]
  3. [Unit C]: [action] — [reasoning]
  → Priority move: [single most important portfolio action]

⚠️ Risks & Considerations
  - [key risk or limitation of this analysis]
  - [market definition sensitivity]
  - [synergies not captured in the matrix]
```

## Sub-commands
- `/think:bcg-matrix` — Full portfolio analysis (map all units, cash flow dynamics, balance assessment, recommendations)
- `/think:bcg-matrix:classify` — Classify a single business unit into the appropriate quadrant with rationale
- `/think:bcg-matrix:balance` — Assess portfolio balance, identify gaps, and recommend rebalancing actions
