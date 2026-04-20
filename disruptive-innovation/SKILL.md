---
name: disruptive-innovation
version: "1.1.0"
description: "Disruptive Innovation (Clayton Christensen) — predict and respond to market disruption. Understand why great companies fail, how low-end and new-market disruption works, and how incumbents can defend or disrupt themselves."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Disruptive Innovation Framework (파괴적 혁신)

> Background and theory: Read references/foundation.md

## Sub-commands

| Command | Purpose |
|---------|---------|
| `/think:disruptive-innovation` | Full disruption analysis — theory, trajectories, RPV, JTBD, response strategy |
| `/think:disruptive-innovation:test` | Disruption Litmus Test — evaluate whether a threat is truly disruptive |
| `/think:disruptive-innovation:respond` | Incumbent Response Strategy — what to do when disruption is confirmed |

---

## Disruption Litmus Test (파괴적 혁신 판별 검증)

**All three conditions must be TRUE** for a genuine disruption threat:

### Condition 1: Does the entrant target overserved customers or non-consumers?

- **YES if**: Low-end customers overpaying for features they don't need, OR non-consumers blocked by cost/skill/access barriers
- **NO if**: Entrant targets incumbent's BEST customers with a BETTER product (that's sustaining innovation)

### Condition 2: Does the innovation have a trajectory that will eventually meet mainstream needs?

- **YES if**: Technology improving over time, performance gap closing, business model allows R&D reinvestment
- **NO if**: Fundamental limits prevent improvement, product permanently inferior

### Condition 3: Is the incumbent's business model unable to respond?

- **YES if**: Responding would cannibalize profits, cost structure can't match price, customers/channel resist, values rank it unattractive
- **NO if**: Incumbent can adopt without disrupting own business model

### Scoring

| Result | Interpretation |
|--------|---------------|
| 3/3 TRUE | **Genuine disruption** — urgent strategic response needed |
| 2/3 TRUE | **Potential disruption** — monitor closely, prepare contingency |
| 1/3 TRUE | **Likely sustaining** — respond through normal competitive means |
| 0/3 TRUE | **Not disruptive** — standard competition |

---

## Incumbent Response Decision Tree

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

## Output Format

### `/think:disruptive-innovation` (Full Analysis)

```
파괴적 혁신 분석: [Subject]

상황 요약
[Brief description of the market/technology/competitor being analyzed]

혁신 유형 판별
• Type: [Low-end / New-market / Both / Not disruptive]
• Target: [Overserved customers / Non-consumers / description]
• Current trajectory: [Where the disruptor is on the performance curve]

파괴적 혁신 판별 검증 (Litmus Test)
1. 과잉서비스/비소비자 대상? [YES/NO — reasoning]
2. 주류 시장 도달 궤적? [YES/NO — reasoning]
3. 기존 모델 대응 불가? [YES/NO — reasoning]
→ Result: [X/3] — [Interpretation]

Jobs to Be Done 분석
• Core job: [What job customers hire this product for]
• Functional: [...]
• Emotional: [...]
• Social: [...]
• Disruptor's advantage on job dimensions: [...]

RPV 진단
• Resources: [Assessment]
• Processes: [Assessment]
• Values: [Assessment]
→ Diagnosis: [Can the incumbent respond with existing organization?]

권장 대응 전략
[Option A/B/C with specific recommendations]

타임라인 & 긴급도
[How quickly is the disruption progressing? When does it cross "good enough"?]
```

### `/think:disruptive-innovation:test` (Disruption Litmus Test Only)

```
파괴적 혁신 판별 검증

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

### `/think:disruptive-innovation:respond` (Incumbent Response Strategy Only)

```
기존 기업 대응 전략

위협: [Description of the disruptive threat]

RPV 현황 진단
• Resources: [What you have]
• Processes: [What blocks you]
• Values: [What rejects disruption]

권장 대응
Option: [A / B / C]
근거: [Why this option]

실행 계획
1. [Step 1]
2. [Step 2]
3. [Step 3]
...

회피해야 할 함정
• [Common mistake 1]
• [Common mistake 2]
• [Common mistake 3]

타임라인
[Urgency and milestones]
```

---

## Anti-Patterns

- Labeling every competitive threat as "disruptive" — most competition is sustaining innovation
- Ignoring disruption because "our customers love us" — that is exactly Christensen's point
- Trying to respond within the existing business unit — RPV analysis almost always says NO
- Integrating an acquired disruptor into the parent company — destroys what made it valuable
- Waiting for data to prove disruption — by the time data exists, it is too late

---

## When to Use / Companion Frameworks

- **Use Disruptive Innovation** when a new entrant offers worse-but-cheaper products, or when non-consumers start adopting a simpler alternative
- **Combine with JTBD** (see foundation.md) for understanding what job the disruptor is fulfilling
- **Combine with Porter's Five Forces** for broader industry threat analysis
- **Combine with BMC** to design the autonomous unit's business model
- **Use Kotter's 8 Steps** when the response requires organizational transformation
