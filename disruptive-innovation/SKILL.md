---
name: disruptive-innovation
version: "1.0.0"
description: "Disruptive Innovation (Clayton Christensen) — predict and respond to market disruption. Understand why great companies fail, how low-end and new-market disruption works, and how incumbents can defend or disrupt themselves."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Disruptive Innovation Framework (파괴적 혁신)

> "The reason why it is so difficult for existing firms to capitalize on disruptive innovations is that their processes and their business model that make them good at the existing business actually make them bad at competing for the disruption." — Clayton Christensen

## Sub-commands

| Command | Purpose |
|---------|---------|
| `/disruptive-innovation` | Full disruption analysis — theory, trajectories, RPV, JTBD, response strategy |
| `/disruptive-innovation:test` | Disruption Litmus Test — evaluate whether a threat is truly disruptive |
| `/disruptive-innovation:respond` | Incumbent Response Strategy — what to do when disruption is confirmed |

---

## 1. 🧠 Core Theory: The Innovator's Dilemma (혁신기업의 딜레마)

### Why Good Management Leads to Failure

The central paradox: **companies fail not because they are poorly managed, but because they are well managed.** Good managers do exactly what they are trained to do:

1. **Listen to their best customers** (최우수 고객 경청) — but best customers demand sustaining improvements, not disruptive ones
2. **Invest in highest-margin opportunities** (고수익 투자) — but disruptive products start in low-margin, small markets
3. **Target large, growing markets** (대규모 시장 추구) — but disruptive markets start small and uncertain
4. **Analyze data rigorously** (데이터 기반 분석) — but disruptive markets have no data yet

### The Mechanism of Failure

```
┌─────────────────────────────────────────────────────────┐
│              WHY GREAT COMPANIES FAIL                    │
│                                                         │
│  Step 1: Disruptive product appears (worse performance) │
│          → Best customers reject it                     │
│          → Rational decision: ignore it                 │
│                                                         │
│  Step 2: Disruptor improves in low-end / new market     │
│          → Still below mainstream needs                  │
│          → Rational decision: focus on premium           │
│                                                         │
│  Step 3: Disruptive product becomes "good enough"       │
│          → Mainstream customers switch (cheaper/simpler) │
│          → Incumbent's position collapses rapidly        │
│                                                         │
│  Step 4: Incumbent tries to respond                     │
│          → Too late — cost structure, culture, values    │
│            prevent effective competition                 │
└─────────────────────────────────────────────────────────┘
```

**Key insight**: At every step, the incumbent made the "right" decision according to conventional management wisdom. The failure is **systemic**, not managerial.

---

## 2. 📊 Two Types of Disruption (파괴적 혁신의 두 유형)

### Type A: Low-End Disruption (저가 시장 파괴)

**Target**: Overserved customers (과잉 서비스 고객) — customers who are paying for more performance than they need.

```
  Performance
  (성능)
       │
   High│          ╱ Incumbent's trajectory
       │        ╱   (sustaining innovation)
       │      ╱
       │    ╱ ─ ─ ─ ─ ─ ─ ─  What HIGH-end customers need
       │  ╱
       │╱─ ─ ─ ─ ─ ─ ─ ─ ─  What MAINSTREAM customers need
       │
       │─ ─ ─ ─ ─ ─ ─ ─ ─ ─  What LOW-end customers need
       │         ╱
       │       ╱  Disruptor enters HERE
       │     ╱    (simpler, cheaper, "worse")
       │   ╱
       │ ╱
       └──────────────────────────────── Time (시간)
```

**Mechanism**:
- Incumbent overshoots what low-end customers need
- Disruptor offers "good enough" at much lower price/complexity
- Low-end customers switch (they were overpaying anyway)
- Disruptor improves, eventually pulls mainstream customers

**Examples**:
| Disruptor | Incumbent | Overserved Segment |
|-----------|-----------|-------------------|
| Southwest Airlines | Full-service airlines | Short-haul business travelers |
| Mini-mills (Nucor) | Integrated steel mills | Rebar / low-grade steel buyers |
| Discount retailers | Department stores | Price-sensitive shoppers |
| Android phones | Premium smartphones | Price-sensitive phone buyers |

### Type B: New-Market Disruption (신시장 파괴)

**Target**: Non-consumers (비소비자) — people who couldn't use existing solutions due to cost, skill, or access barriers.

```
  Performance
  (성능)
       │
       │           Incumbent's market
       │          ┌─────────────┐
       │          │  Existing   │
       │          │  customers  │
       │          │  (기존 고객) │
       │          └─────────────┘
       │
       │                        New-market disruptor
       │                       ┌─────────────────────┐
       │                       │   Non-consumers      │
       │                       │   (비소비자)          │
       │                       │   "I couldn't use    │
       │                       │    the old solution" │
       │                       └─────────────────────┘
       │
       └──────────────────────────────── Accessibility / Simplicity
                                        (접근성 / 단순성)
```

**Mechanism**:
- Existing solutions require too much money, skill, or access
- Disruptor creates a simpler/more accessible alternative
- Non-consumers adopt it (any solution beats no solution)
- Disruptor improves, eventually competes for mainstream

**Examples**:
| Disruptor | Non-consumers Created | Barrier Removed |
|-----------|----------------------|-----------------|
| Personal computers | People who couldn't afford mainframes | Cost, size, expertise |
| Transistor radios | Teenagers (couldn't own a tube radio) | Portability, price |
| eBay | People who couldn't run auctions | Access, infrastructure |
| YouTube | People who couldn't broadcast video | Equipment, distribution |

---

## 3. 📈 Performance Trajectory Diagram (성능 궤적 다이어그램)

This is the **single most important diagram** in disruption theory:

```
  Performance
  (성능)
       │
       │                                    ╱ Sustaining trajectory
       │                                  ╱   (기존 기업의 지속적 혁신)
       │                                ╱
       │                              ╱
       │                            ╱
       │  ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄╱┄┄┄┄┄  Demand ceiling
       │                        ╱         (고객이 필요로 하는 최대 성능)
       │                      ╱
       │                    ╱
       │                  ╱               THE GAP
       │                ╱          ← (과잉 성능 영역) →
       │              ╱
       │            ╱
       │          ╱       ┄┄┄┄┄┄┄┄┄┄┄┄┄  Demand floor
       │        ╱         ↗               ("충분한" 성능 수준)
       │      ╱        ╱
       │    ╱       ╱  Disruptive trajectory
       │  ╱      ╱     (파괴적 혁신 궤적)
       │╱     ╱
       │   ╱          ← DISRUPTION ZONE →
       │╱               (여기서 파괴가 일어남)
       └──────────────────────────────────────── Time (시간)
            T1        T2        T3        T4

  T1: Disruptor enters (low performance, low price)
  T2: Disruptor improves, still below mainstream needs
  T3: Disruptor crosses "good enough" line → DISRUPTION BEGINS
  T4: Incumbent's premium erodes, market shifts
```

**Critical insight**: The sustaining trajectory always overshoots customer needs. This creates the opening for disruption. The **demand floor** (minimum acceptable performance) is where disruption happens — when the disruptive product crosses this line, customers switch because it is cheaper/simpler and "good enough."

---

## 4. ✅ Disruption Litmus Test (파괴적 혁신 판별 검증)

**All three conditions must be TRUE** for a genuine disruption threat:

### Condition 1: Does the entrant target overserved customers or non-consumers? (과잉서비스 고객 또는 비소비자를 대상으로 하는가?)

```
  ┌────────────────────────────────────────────────┐
  │  YES if:                                        │
  │  • Low-end: Customers who don't need/want all   │
  │    the features they're paying for              │
  │  • New-market: People who currently go without   │
  │    because existing solutions are too expensive, │
  │    complex, or inaccessible                     │
  │                                                 │
  │  NO if:                                         │
  │  • Entrant targets the BEST customers of the    │
  │    incumbent with a BETTER product              │
  │    (that's sustaining innovation)               │
  └────────────────────────────────────────────────┘
```

### Condition 2: Does the innovation have a trajectory that will eventually meet mainstream needs? (궤적이 결국 주류 시장의 요구를 충족시킬 수 있는가?)

```
  ┌────────────────────────────────────────────────┐
  │  YES if:                                        │
  │  • Technology is improving over time             │
  │  • Performance gap with mainstream is closing    │
  │  • Business model allows reinvestment in R&D     │
  │                                                 │
  │  NO if:                                         │
  │  • Fundamental physics/limits prevent improvement│
  │  • Product is permanently inferior with no path  │
  │    to "good enough"                             │
  └────────────────────────────────────────────────┘
```

### Condition 3: Is the incumbent's business model unable to respond? (기존 기업의 비즈니스 모델이 대응할 수 없는 구조인가?)

```
  ┌────────────────────────────────────────────────┐
  │  YES if:                                        │
  │  • Responding would cannibalize existing profits │
  │  • Incumbent's cost structure can't match price  │
  │  • Customers/channel would resist the change     │
  │  • Incumbent's values rank it as unattractive    │
  │                                                 │
  │  NO if:                                         │
  │  • Incumbent can adopt the innovation without    │
  │    disrupting its own business model             │
  └────────────────────────────────────────────────┘
```

### Scoring

| Result | Interpretation |
|--------|---------------|
| 3/3 TRUE | **Genuine disruption** — urgent strategic response needed |
| 2/3 TRUE | **Potential disruption** — monitor closely, prepare contingency |
| 1/3 TRUE | **Likely sustaining** — respond through normal competitive means |
| 0/3 TRUE | **Not disruptive** — standard competition |

---

## 5. 🎯 Jobs to Be Done (JTBD) Integration (해결 과제 이론)

### Why Customers "Hire" Products

Customers don't buy products — they **hire** them to get a **job** done. Disruption succeeds when it does the customer's job better on the dimensions that matter most.

```
┌──────────────────────────────────────────────────────────┐
│                    JTBD Framework                         │
│                                                          │
│  "When I _______ , I want to _______ , so I can _______"│
│       (situation)      (motivation)     (outcome)        │
│                                                          │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐           │
│  │Functional│    │ Emotional│    │  Social   │           │
│  │   Job    │    │   Job    │    │   Job     │           │
│  │(기능적)  │    │(감성적)  │    │(사회적)   │           │
│  └──────────┘    └──────────┘    └──────────┘           │
│       │               │               │                  │
│       v               v               v                  │
│  "Does it work?"  "How do I feel?"  "How do others       │
│                                      see me?"            │
└──────────────────────────────────────────────────────────┘
```

### JTBD + Disruption Connection

| Dimension | Incumbent Focus | Disruptor Focus |
|-----------|----------------|-----------------|
| Performance (성능) | More features, higher specs | "Good enough" on core job |
| Convenience (편의성) | Complex, expert-oriented | Simple, accessible |
| Price (가격) | Premium pricing | Dramatically lower |
| Access (접근성) | Established channels | New channels, self-service |

**Key question**: What job is the customer actually hiring this product for? If the disruptor does *that specific job* well enough at a lower price, performance superiority on other dimensions won't save the incumbent.

### Milkshake Example (Christensen's Famous Case)

A fast-food chain wanted to sell more milkshakes. Traditional segmentation (demographics) failed. JTBD analysis revealed:
- **Morning job**: "Make my boring commute more interesting and keep me full until lunch" — competing with bagels and bananas, not other shakes
- **Afternoon job**: "Be a good parent and give my kid a treat" — competing with toys and trips to the park

Same product, two completely different jobs, two different competitive sets.

---

## 6. 🛡️ Incumbent's Response Options (기존 기업의 대응 전략)

### Option A: Create an Autonomous Unit (자율 조직 신설)

```
┌─────────────────────────────────────────┐
│         Parent Company (모기업)          │
│  ┌────────────────────────────────────┐ │
│  │  Existing Business (기존 사업부)    │ │
│  │  • Same customers, processes, P&L  │ │
│  └────────────────────────────────────┘ │
│                                         │
│  ┌────────────────────────────────────┐ │
│  │  Autonomous Unit (자율 조직) ★     │ │
│  │  • Different customers             │ │
│  │  • Different cost structure         │ │
│  │  • Different success metrics        │ │
│  │  • Own P&L, own leadership          │ │
│  │  • Physical separation preferred    │ │
│  └────────────────────────────────────┘ │
└─────────────────────────────────────────┘
```

**When to use**: When disruption requires fundamentally different processes and values
**Example**: IBM creating the PC division in Boca Raton, separate from mainframe HQ
**Success rate**: Highest when truly autonomous (own budget, leadership, location)

### Option B: Acquire the Disruptor (파괴자 인수)

**When to use**: When the disruptor has already built the right processes and values
**Key rule**: **Keep the acquired company separate.** Do NOT integrate it into the parent.
**Example**: Amazon acquiring Zappos and preserving its culture
**Risk**: Integration pressure ("synergies") destroys what made the acquisition valuable

### Option C: Transform the Core (핵심 사업 전환)

**When to use**: Only when disruption is the clear future and the core business is declining
**Reality check**: This is the hardest path and rarely succeeds
**Example**: Netflix shifting from DVD-by-mail to streaming (rare success)
**Requirement**: CEO-level commitment, willingness to cannibalize existing revenue

### Decision Tree

```
Is the disruption confirmed (Litmus Test 3/3)?
│
├── NO → Monitor. Compete through sustaining innovation.
│
└── YES → Can your current organization respond?
    │
    ├── YES (rare) → Transform the Core (Option C)
    │                  Only if leadership fully committed
    │
    └── NO → Is there a disruptor to acquire?
        │
        ├── YES → Acquire but keep separate (Option B)
        │
        └── NO → Create Autonomous Unit (Option A)
                  Different location, different P&L,
                  different success metrics
```

---

## 7. 🏗️ RPV Framework (자원-프로세스-가치 분석)

### Why Incumbents Can't Just "Try Harder"

The RPV framework explains **why** incumbents fail even when they see disruption coming. It is not a lack of resources — it is the **processes** and **values** that are hardwired to reject disruption.

```
┌─────────────────────────────────────────────────────────┐
│                   RPV Framework                          │
│                                                         │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐    │
│  │  Resources   │  │  Processes   │  │   Values     │    │
│  │  (자원)      │  │  (프로세스)  │  │  (가치기준)  │    │
│  │             │  │             │  │             │    │
│  │ • People    │  │ • How work  │  │ • What the  │    │
│  │ • Tech      │  │   gets done │  │   company   │    │
│  │ • Cash      │  │ • Decision  │  │   prioritizes│    │
│  │ • Brand     │  │   patterns  │  │ • Margin     │    │
│  │ • Equipment │  │ • Hiring    │  │   thresholds│    │
│  │             │  │ • Budgeting │  │ • Market size│    │
│  │             │  │ • Planning  │  │   thresholds│    │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘    │
│         │               │               │             │
│    Transferable    Hard to change   Hardest to change  │
│    (이전 가능)     (변경 어려움)     (변경 극히 어려움) │
│                                                         │
│  You can BUY      You can't just    You can't just     │
│  resources.       "install" new     decide to value    │
│                   processes.        low margins.       │
└─────────────────────────────────────────────────────────┘
```

### Why Each Element Matters

| Element | Incumbent Advantage | Incumbent Trap |
|---------|-------------------|----------------|
| **Resources** (자원) | Have plenty — money, talent, tech | Resources alone cannot solve the problem |
| **Processes** (프로세스) | Optimized for current business | Reject disruptive projects at every stage — planning, budgeting, approval, execution |
| **Values** (가치기준) | Clear priorities drive focus | "This market is too small," "margins are too low," "our customers don't want this" |

### The RPV Diagnosis

Ask these questions for any disruption response:

1. **Resources**: "Do we have the people, technology, and capital?" → Usually YES
2. **Processes**: "Are our existing processes capable of executing this?" → Usually NO
   - Planning cycles too slow for uncertain markets
   - Stage-gate processes kill immature ideas
   - Cost structure demands high margins
3. **Values**: "Would our organization naturally prioritize this?" → Almost always NO
   - Too small to matter to a large company
   - Margins too low vs. existing business
   - Best customers actively oppose it

**Conclusion**: If Processes and Values say NO, **no amount of Resources will fix the problem.** You need a separate organization with different processes and values (→ Autonomous Unit).

---

## 8. 📋 Output Format

When applying this framework, structure the output as follows:

### `/disruptive-innovation` (Full Analysis)

```
🔬 파괴적 혁신 분석: [Subject]

📖 상황 요약
[Brief description of the market/technology/competitor being analyzed]

📊 혁신 유형 판별
• Type: [Low-end / New-market / Both / Not disruptive]
• Target: [Overserved customers / Non-consumers / description]
• Current trajectory: [Where the disruptor is on the performance curve]

✅ 파괴적 혁신 판별 검증 (Litmus Test)
1. 과잉서비스/비소비자 대상? [YES/NO — reasoning]
2. 주류 시장 도달 궤적? [YES/NO — reasoning]
3. 기존 모델 대응 불가? [YES/NO — reasoning]
→ Result: [X/3] — [Interpretation]

🎯 Jobs to Be Done 분석
• Core job: [What job customers hire this product for]
• Functional: [...]
• Emotional: [...]
• Social: [...]
• Disruptor's advantage on job dimensions: [...]

🏗️ RPV 진단
• Resources: [Assessment]
• Processes: [Assessment]
• Values: [Assessment]
→ Diagnosis: [Can the incumbent respond with existing organization?]

🛡️ 권장 대응 전략
[Option A/B/C with specific recommendations]

⚠️ 타임라인 & 긴급도
[How quickly is the disruption progressing? When does it cross "good enough"?]
```

### `/disruptive-innovation:test` (Disruption Litmus Test Only)

```
✅ 파괴적 혁신 판별 검증

대상: [What is being tested]

조건 1 — 과잉서비스/비소비자 대상?
[Detailed analysis]
→ [YES / NO]

조건 2 — 주류 시장 도달 궤적?
[Detailed analysis]
→ [YES / NO]

조건 3 — 기존 모델 대응 불가?
[Detailed analysis]
→ [YES / NO]

━━━━━━━━━━━━━━━━━━━━━━━━
결과: [X/3] — [Genuine disruption / Potential / Sustaining / Not disruptive]
권장 조치: [Next step]
```

### `/disruptive-innovation:respond` (Incumbent Response Strategy Only)

```
🛡️ 기존 기업 대응 전략

위협: [Description of the disruptive threat]

🏗️ RPV 현황 진단
• Resources: [What you have]
• Processes: [What blocks you]
• Values: [What rejects disruption]

🎯 권장 대응
Option: [A / B / C]
근거: [Why this option]

📋 실행 계획
1. [Step 1]
2. [Step 2]
3. [Step 3]
...

⚠️ 회피해야 할 함정
• [Common mistake 1]
• [Common mistake 2]
• [Common mistake 3]

📅 타임라인
[Urgency and milestones]
```

---

## 9. 📚 Key References

- **The Innovator's Dilemma** (1997) — Clayton Christensen — the foundational work
- **The Innovator's Solution** (2003) — Christensen & Raynor — RPV framework, response strategies
- **Competing Against Luck** (2016) — Christensen et al. — Jobs to Be Done theory
- **Seeing What's Next** (2004) — Christensen, Anthony & Roth — predicting industry change
- **The Innovator's DNA** (2011) — Dyer, Gregersen & Christensen — personal innovation skills
