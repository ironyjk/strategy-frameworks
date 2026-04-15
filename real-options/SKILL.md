---
name: real-options
version: "1.0.0"
description: "Real Options Analysis — apply options thinking to strategic investments under uncertainty. Value the right (not obligation) to expand, defer, abandon, or switch. Turns uncertainty from threat into opportunity."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Real Options Analysis (실물옵션 분석)

> "In an uncertain world, the value of being able to change your mind is enormous."

## 1. Why NPV Alone Fails — The "Now or Never" Fallacy (전통 NPV의 한계)

Traditional Net Present Value (NPV) analysis assumes a **binary, irreversible decision**: invest now or never. This "now or never" framing systematically undervalues investments in uncertain environments because it:

- **Ignores the value of waiting** — new information arrives over time that can improve decisions
- **Treats uncertainty as purely negative** — higher discount rates penalize uncertain projects, when uncertainty can actually create upside
- **Assumes passive management** — managers are modeled as automatons who cannot adapt, pivot, or abandon
- **Forces a single scenario** — collapses a distribution of outcomes into one expected cash flow

**The core insight**: When you have the **right but not the obligation** to take future action, uncertainty *increases* value rather than destroying it. This is identical to how financial options work — a call option becomes more valuable as volatility rises.

**NPV says**: "This project has negative expected value. Don't invest."
**Real Options says**: "This project has negative expected value *if you commit fully today*. But a small pilot investment buys you the *option* to expand if conditions improve — and that option has significant value."

---

## 2. Financial Options Analogy (금융옵션과의 유추)

Real options borrow directly from financial option theory:

| Financial Option | Real Option | Analogy |
|:---|:---|:---|
| Stock price (S) | Present value of expected cash flows | What the underlying asset is worth today |
| Strike price (K) | Investment cost to exercise | What you must pay to proceed |
| Time to expiry (T) | Decision window duration | How long you can wait before deciding |
| Volatility (σ) | Uncertainty of cash flows | How much outcomes could vary |
| Risk-free rate (r) | Time value of money | Cost of deferral |
| Dividends | Lost cash flows from waiting | Revenue foregone by not acting now |

**Call option** (콜옵션) = Right to invest / expand / enter
**Put option** (풋옵션) = Right to abandon / exit / sell

**Key parallel**: Just as you would never exercise a call option early on a non-dividend-paying stock (because waiting preserves optionality), you should not rush irreversible investments when waiting costs are low and uncertainty is high.

---

## 3. Types of Real Options (실물옵션의 유형)

### 3.1 Option to Defer (연기 옵션)

> "Wait and see" — delay commitment until uncertainty resolves.

- **Structure**: Call option on project value
- **When**: High uncertainty that will resolve over time; low cost of waiting
- **Example**: A mining company holds mineral rights for 10 years. Metal prices are volatile. Rather than developing the mine immediately at marginal NPV, the company waits. If prices rise significantly, it exercises the option and develops. If prices fall, it lets the rights expire.
- **DY context**: Evaluating a new regional office — wait 6 months to see if a major client contract materializes before committing to a lease.

**Value driver**: The longer you can wait (T) and the higher the uncertainty (σ), the more valuable this option becomes.

### 3.2 Option to Expand (확장 옵션)

> "Start small, scale big" — invest in capacity to grow if demand materializes.

- **Structure**: Call option on additional capacity
- **When**: Growth potential is significant but uncertain; scalable operations
- **Example**: A tech company builds a data center with excess land and power infrastructure. If demand grows, expanding is cheap because the platform is already built. The excess infrastructure is the option premium.
- **DY context**: Establishing a small team at a new industrial complex. If work volume grows, expand headcount and equipment. The initial setup cost is the option premium buying the right to scale.

**Value driver**: Platform investments that reduce future expansion costs create valuable expansion options.

### 3.3 Option to Contract (축소 옵션)

> "Scale down gracefully" — reduce operations if conditions deteriorate.

- **Structure**: Put option on a portion of operations
- **When**: Demand is uncertain; operations can be modularized
- **Example**: A manufacturer designs a factory with modular production lines that can be independently shut down. If demand drops, it contracts by closing lines rather than running the whole facility at low utilization.
- **DY context**: Using contract labor alongside permanent staff for project peaks. If a major client reduces orders, contract labor can be released without the fixed cost burden.

**Value driver**: Flexible cost structures (variable vs. fixed) create contraction options.

### 3.4 Option to Abandon (포기 옵션)

> "Cut losses and recover value" — exit and salvage what you can.

- **Structure**: American put option on the project
- **When**: Significant downside risk; assets have resale/redeployment value
- **Example**: An airline orders aircraft with strong resale markets. If routes underperform, it can sell the planes and recover 60-80% of investment. Compare this to a custom-built factory with zero salvage value.
- **DY context**: Purchasing standard (not custom) equipment for a new service line. If the service fails to gain traction, the equipment can be sold on the secondary market, limiting downside to 20-30% of investment.

**Value driver**: Higher salvage value = more valuable abandonment option. Choose liquid, standard assets over illiquid, custom ones when uncertainty is high.

### 3.5 Option to Switch (전환 옵션)

> "Pivot inputs or outputs" — change what you use or what you produce.

- **Structure**: Portfolio of call and put options
- **When**: Input prices or output demand are volatile; technology permits flexibility
- **Example**: A power plant that can burn natural gas OR coal. When gas prices spike, it switches to coal, and vice versa. The dual-fuel capability costs more upfront but provides a perpetual switching option.
- **DY context**: Cross-training workers in both tank cleaning and heat exchanger maintenance. When demand shifts between service types, the workforce can be redeployed without hiring/firing cycles.

**Value driver**: Flexibility premium — the cost difference between a flexible asset and a rigid one is the option premium.

### 3.6 Growth Option (성장 옵션)

> "Plant seeds for the future" — today's investment unlocks tomorrow's opportunities.

- **Structure**: Compound option (option on an option)
- **When**: Strategic positioning matters; first-mover advantages exist; platform potential
- **Example**: Amazon's early investment in cloud infrastructure for internal use created the platform that became AWS — a business now worth more than the original e-commerce operation. The e-commerce infrastructure was a growth option on cloud services.
- **DY context**: Building a data analytics capability (this platform). Even if the immediate ROI is modest, it creates options for: AI-powered bidding, predictive maintenance services, consulting to other companies, technology licensing.

**Value driver**: Network effects, learning curves, and strategic positioning that make future investments cheaper or more valuable.

### 3.7 Staging Option (단계적 투자 옵션)

> "Invest in phases, not all at once" — gate each stage on new information.

- **Structure**: Compound option (sequential)
- **When**: Large investments; phased execution is feasible; information arrives between stages
- **Example**: Pharmaceutical R&D follows Phase I → II → III trials. Each phase is a gate where the company decides whether to invest further. The total R&D cost is $2B, but the company only commits $50M to Phase I. It buys the option to continue, not the obligation.
- **DY context**: Entering a new geography: Phase 1 (pilot project with partner, 50M won) → Phase 2 (dedicated team, 200M won) → Phase 3 (full branch office, 500M won). Each phase gates on demonstrated demand.

**Value driver**: The ability to stop at any gate limits maximum downside while preserving full upside.

---

## 4. Valuation Approaches (가치평가 방법)

### 4.1 Decision Tree Analysis (의사결정나무)

The most intuitive approach. Map out decisions and uncertainties chronologically.

```
Investment Decision
├── Invest Now (500M won)
│   ├── High Demand (p=0.4) → NPV = +800M
│   ├── Medium Demand (p=0.4) → NPV = +100M
│   └── Low Demand (p=0.2) → NPV = -300M
│   Expected NPV = 0.4(800) + 0.4(100) + 0.2(-300) = 300M
│
├── Pilot First (50M won), then decide in 12 months
│   ├── High Signal (p=0.4) → Invest (450M) → NPV = +700M
│   ├── Medium Signal (p=0.4) → Invest (450M) → NPV = +50M
│   └── Low Signal (p=0.2) → Abandon → NPV = -50M (pilot cost only)
│   Expected NPV = 0.4(700) + 0.4(50) + 0.2(-50) = 290M
│
└── Wait 12 months, then decide
    ├── High Demand (p=0.4) → Invest (500M) → NPV = +600M (delayed)
    ├── Medium Demand (p=0.4) → Don't invest → NPV = 0
    └── Low Demand (p=0.2) → Don't invest → NPV = 0
    Expected NPV = 0.4(600) = 240M
```

**Insight**: The pilot approach has nearly the same expected value as immediate full investment, but the maximum downside is -50M instead of -300M. The option value is in the *asymmetry*.

### 4.2 Black-Scholes Analogy (블랙-숄즈 유추)

For quick estimation, map real option parameters to Black-Scholes:

```
C = S × N(d₁) - K × e^(-rT) × N(d₂)

Where:
  S = PV of expected cash flows from the project
  K = Investment cost (strike price)
  T = Time until the opportunity disappears
  σ = Volatility of project cash flows
  r = Risk-free rate

  d₁ = [ln(S/K) + (r + σ²/2)T] / (σ√T)
  d₂ = d₁ - σ√T
```

**Limitations**: Assumes European option (exercise only at expiry), continuous trading, known volatility. Real options violate all of these. Use as directional guidance, not precise valuation.

### 4.3 Binomial Model — Simplified (이항모형 — 간소화)

More flexible than Black-Scholes. Models the project value as moving up or down each period.

**Step 1**: Define up (u) and down (d) factors from volatility
```
u = e^(σ√Δt)    d = 1/u
```

**Step 2**: Build a value tree forward
```
Period 0    Period 1    Period 2
  V₀ ──── V₀×u ──── V₀×u²
    \         \
     ── V₀×d ──── V₀×ud
          \
           ── V₀×d²
```

**Step 3**: At each terminal node, calculate option payoff
```
Call: max(V - K, 0)    Put: max(K - V, 0)
```

**Step 4**: Roll back using risk-neutral probabilities
```
p = (e^(rΔt) - d) / (u - d)
Option value = e^(-rΔt) × [p × C_up + (1-p) × C_down]
```

**At each node**: Check if early exercise is optimal (for American options):
```
Option value = max(exercise value, continuation value)
```

### 4.4 Qualitative Scoring (정성적 평가)

When precise numbers are unavailable, score options qualitatively:

| Factor | Low (1) | Medium (3) | High (5) |
|:---|:---|:---|:---|
| Uncertainty level (불확실성) | Predictable | Moderate range | Wide range of outcomes |
| Management flexibility (경영 유연성) | Locked in | Some adjustment possible | Full pivot capability |
| Time to decide (의사결정 시간) | Must decide now | Months | Years |
| Information arrival rate (정보 유입 속도) | No new info expected | Gradual | Key milestones coming |
| Reversibility (가역성) | Irreversible | Partially reversible | Fully reversible |

**Total score 15-25**: Real options thinking adds significant value — invest in flexibility.
**Total score 8-14**: Moderate option value — consider staged approaches.
**Total score 5-7**: Low option value — traditional NPV analysis is sufficient.

---

## 5. When to Use Real Options vs. Traditional NPV (판단 기준)

### Use Real Options When:

- **High uncertainty** that will partially resolve over time
- **Managerial flexibility** exists to change course
- **NPV is near zero** — the project is borderline and optionality could tip the scales
- **Large, irreversible investments** where wrong decisions are costly
- **Staged execution** is feasible
- **Strategic/platform investments** with follow-on opportunities

### Stick with Traditional NPV When:

- **Low uncertainty** — outcomes are predictable
- **No flexibility** — you must commit fully now with no ability to adapt
- **Clearly positive or negative NPV** — optionality doesn't change the decision
- **Short time horizon** — no time for new information to arrive
- **Commoditized decisions** — no strategic positioning value

### Decision Matrix:

```
                    Low Flexibility    High Flexibility
                   ┌─────────────────┬─────────────────┐
High Uncertainty   │  Avoid or       │  REAL OPTIONS    │
                   │  restructure    │  (highest value) │
                   ├─────────────────┼─────────────────┤
Low Uncertainty    │  Standard NPV   │  NPV + minor    │
                   │  is sufficient  │  option premium  │
                   └─────────────────┴─────────────────┘
```

---

## 6. Practical Application (실무 적용)

### 6.1 Stage-Gate Process (단계별 관문 프로세스)

Structure investments as a series of gates, each requiring explicit approval:

```
Gate 0: Idea Screen        → Commit: Research time only (0 won)
Gate 1: Feasibility Study  → Commit: Analysis budget (5-10M won)
Gate 2: Pilot / Proof      → Commit: Pilot investment (50-100M won)
Gate 3: Scale Decision     → Commit: Full investment (300M+ won)
Gate 4: Post-Launch Review → Commit: Optimization or exit
```

**At each gate, explicitly evaluate**:
1. What have we learned since the last gate?
2. Has the option value increased or decreased?
3. What is the cost to continue to the next gate?
4. What do we gain by waiting vs. proceeding now?

### 6.2 Pilot Projects as Options (파일럿 = 옵션 매입)

A pilot project is literally purchasing a call option:

- **Option premium** = pilot cost
- **Strike price** = full-scale investment required after pilot
- **Underlying value** = revenue/profit from full-scale operation
- **Expiry** = window before the market opportunity closes

**Design pilots to maximize information value**:
- Test the highest-uncertainty assumptions first
- Set clear success/failure criteria before starting
- Define the decision rule: "If X metric exceeds Y threshold, proceed to full scale"

### 6.3 Partnerships and JVs as Options (파트너십 = 옵션)

Joint ventures and partnerships create options by:
- **Limiting downside**: Share investment cost and risk
- **Preserving upside**: Buyout clauses allow full acquisition if successful
- **Accelerating learning**: Partner's expertise reduces uncertainty faster

**Structure partnerships with explicit option clauses**:
- Right of first refusal on expansion
- Buyout option at pre-agreed valuation formula
- Exit provisions with asset division terms

### 6.4 Contractual Options in Operations (계약상 옵션)

Embed real options in operational contracts:
- **Lease vs. buy** — leasing preserves the option to exit (abandonment option)
- **Break clauses** — early termination rights are put options
- **Volume flexibility** — contracts with min/max ranges create switching options
- **Renewal options** — long-term renewal at predetermined terms is a call option

---

## 7. Output Format (분석 결과 형식)

### Full Analysis (`/real-options`)

```
🎯 투자 개요 (Investment Overview)
  - 투자 대상 및 배경
  - 총 투자 규모 및 시간 프레임

📊 전통 NPV 분석 (Traditional NPV)
  - Base case NPV
  - 민감도 분석 (sensitivity)
  - NPV 한계점 in this context

🔍 내재 옵션 식별 (Embedded Options Identified)
  - Type, description, estimated value for each option
  - Option interaction effects

💰 옵션 가치평가 (Option Valuation)
  - Quantitative (decision tree or binomial) where data permits
  - Qualitative scoring where data is insufficient
  - Expanded NPV = Traditional NPV + Option Value

📐 전략적 시사점 (Strategic Implications)
  - Optimal timing and staging
  - Key uncertainties to monitor
  - Trigger points for each option

✅ 권고사항 (Recommendations)
  - Invest / Defer / Pilot / Restructure / Pass
  - Specific next steps with gate criteria
  - Risk management actions
```

### Option Identification (`/real-options:identify`)

```
🔍 내재 옵션 맵 (Embedded Options Map)

For each identified option:
  📌 옵션 유형: [Defer/Expand/Contract/Abandon/Switch/Growth/Staging]
  📋 설명: What the option is and how it works
  ⏰ 만기: When the option expires
  💵 행사가: What it costs to exercise
  📈 가치 동인: What drives option value up/down
  🎚️ 정성 평가: [Low / Medium / High] value
```

### Qualitative Valuation (`/real-options:value`)

```
💰 옵션 정성 가치평가 (Qualitative Option Valuation)

Scoring matrix for each option:
  불확실성 (Uncertainty):        [1-5] — justification
  경영 유연성 (Flexibility):     [1-5] — justification
  의사결정 시간 (Time):          [1-5] — justification
  정보 유입 (Info arrival):      [1-5] — justification
  가역성 (Reversibility):        [1-5] — justification
  ─────────────────────────
  총점 (Total):                  [5-25]
  옵션가치 판정:                 [Low / Moderate / High]

  📐 시사점: What the score means for this decision
  ✅ 권고: Recommended approach
```

---

## 8. Sub-Commands (하위 명령)

| Command | Purpose | When to Use |
|:---|:---|:---|
| `/real-options` | Full real options analysis | Major investment decisions requiring comprehensive evaluation |
| `/real-options:identify` | Identify embedded options | Early-stage exploration — what options exist in this situation? |
| `/real-options:value` | Qualitative option valuation | When quantitative data is limited but option thinking is valuable |

---

## References

- Dixit, A. & Pindyck, R. (1994). *Investment Under Uncertainty*
- Trigeorgis, L. (1996). *Real Options: Managerial Flexibility and Strategy*
- Copeland, T. & Antikarov, V. (2001). *Real Options: A Practitioner's Guide*
- Luehrman, T. (1998). "Strategy as a Portfolio of Real Options" — *Harvard Business Review*
