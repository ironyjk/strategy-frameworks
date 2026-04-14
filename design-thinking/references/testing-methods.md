# Testing Methods — Quantitative and Qualitative Validation

## Overview

Design Thinking Phase 5 (Test) is where ideas meet reality. This reference covers both qualitative methods (understanding WHY) and quantitative methods (measuring HOW MUCH).

---

## Qualitative Testing Methods

### 1. Think-Aloud Protocol
- User verbalizes thoughts while completing tasks
- Researcher observes and takes notes (does NOT help)
- Captures: mental models, confusion points, expectations
- Best for: early-stage prototypes, discovering WHY users struggle

**Protocol**:
1. Brief the user: "Please say out loud whatever you're thinking as you use this."
2. Give a task: "You want to [goal]. Please try to do that now."
3. Observe silently. If the user goes quiet: "What are you thinking right now?"
4. Never help, hint, or explain. If they're stuck, note it and move on.
5. Debrief: "What was easy? What was confusing? What did you expect to happen?"

### 2. Contextual Inquiry
- Observe users in their REAL environment (not a lab)
- Watch how they actually work, with all the messiness and workarounds
- Ask "Why did you do that?" in the moment
- Discover needs users can't articulate in interviews

### 3. Diary Study
- Users self-report experiences over days/weeks
- Captures longitudinal patterns (not just one-time reactions)
- Tools: paper diary, app prompts, voice memos
- Best for: understanding habits, daily pain points, context of use

### 4. Card Sorting
- Users organize concepts/features into groups that make sense to them
- Open sort: users create their own categories
- Closed sort: users sort into predefined categories
- Best for: information architecture, navigation design, terminology

### 5. Wizard of Oz
- The prototype appears functional but a human is operating it behind the scenes
- Tests the concept without building the technology
- Best for: AI features, complex back-end logic, conversational interfaces

---

## Quantitative Testing Methods

### A/B Testing (Split Testing)

**What**: Show different versions to different user groups and measure outcomes.

**When to use**: You have enough traffic (>200 users minimum), a clear metric, and a specific hypothesis.

**Protocol**:
1. **Hypothesis**: "Changing [X] from [A] to [B] will increase [metric] by [amount]"
2. **Sample size**: Calculate before starting (use a sample size calculator)
   - 95% confidence, 80% power is standard
   - Rule of thumb: ~400 per variant for detecting 10% relative change
3. **Randomization**: Users are randomly assigned (not self-selected)
4. **Duration**: At least 1-2 full business cycles (weekly patterns matter)
5. **Single variable**: Change ONE thing at a time
6. **Measure**: Primary metric + guardrail metrics (things that shouldn't get worse)

**Metrics to measure**:
| Metric | Definition | Good For |
|--------|-----------|----------|
| Conversion rate | % who complete target action | Purchase, signup flows |
| Completion rate | % who finish a multi-step process | Onboarding, forms |
| Time to completion | Seconds/minutes to achieve goal | Efficiency |
| Engagement | Actions per session, return visits | Content, features |
| Revenue per user | Money generated per user | Business impact |
| Error rate | % who make mistakes | Usability |

**Pitfalls**:
- Stopping early when you see a "winner" (statistical noise)
- Testing too many variants (dilutes statistical power)
- Ignoring segment differences (works for power users, fails for novices)
- Not measuring downstream effects (conversion up, retention down)

### Usability Testing with Metrics

**Standard Protocol (5-8 users per round)**:

1. **Recruit**: Representative users, not colleagues/friends
2. **Define tasks**: 3-5 realistic tasks that cover key user journeys
3. **Measure per task**:

| Metric | How to Measure | Target |
|--------|---------------|--------|
| Task success rate | Binary: completed / not completed | >78% (industry baseline) |
| Time on task | Stopwatch from task start to completion | < benchmark for task type |
| Error rate | Count wrong clicks, backtracking, dead ends | < 2 errors per task |
| Assists | Times user needed help to continue | 0 (ideal) |
| Satisfaction | Post-task rating (1-7) or SEQ (Single Ease Question) | > 5.0 |

4. **After all tasks, administer SUS**:

**System Usability Scale (SUS)**:
10 statements rated 1 (strongly disagree) to 5 (strongly agree):
1. I think I would like to use this system frequently
2. I found the system unnecessarily complex
3. I thought the system was easy to use
4. I think I would need technical support to use this system
5. I found the functions in this system were well integrated
6. I thought there was too much inconsistency in this system
7. I imagine most people would learn to use this system quickly
8. I found the system very cumbersome to use
9. I felt very confident using the system
10. I needed to learn a lot before I could get going with this system

**Scoring**: For odd items: score - 1. For even items: 5 - score. Sum all, multiply by 2.5. Range: 0-100.

| SUS Score | Percentile | Grade | Adjective |
|-----------|-----------|-------|-----------|
| 84+ | 96th | A+ | Best imaginable |
| 80-84 | 90th | A | Excellent |
| 70-79 | 65th | B-C | Good |
| 50-69 | 15-40th | D | OK / Marginal |
| Below 50 | <15th | F | Poor / Unacceptable |

### NPS (Net Promoter Score)

**The Question**: "On a scale of 0-10, how likely are you to recommend [product/service] to a friend or colleague?"

**Categories**:
- 9-10: **Promoters** (loyal enthusiasts)
- 7-8: **Passives** (satisfied but unenthusiastic)
- 0-6: **Detractors** (unhappy, may damage brand)

**Calculation**: NPS = %Promoters - %Detractors (range: -100 to +100)

**Benchmarks by industry**:
| Industry | Average NPS |
|----------|------------|
| SaaS | 30-40 |
| E-commerce | 45-55 |
| Financial services | 20-30 |
| Telecom | 0-15 |
| Healthcare | 25-35 |

**Follow-up questions** (essential — NPS alone is vanity):
- For Promoters: "What do you value most?"
- For Passives: "What would make you rate us higher?"
- For Detractors: "What was your biggest disappointment?"

**When to measure**:
- After key interactions (transactional NPS)
- Quarterly or semi-annually (relational NPS)
- NOT after every interaction (survey fatigue → biased results)

### CSAT (Customer Satisfaction Score)

**The Question**: "How satisfied were you with [specific interaction]?" (1-5 or 1-7)

**Calculation**: CSAT = (# satisfied responses / total responses) x 100

**When to use**: After specific touchpoints (support ticket, purchase, onboarding). More actionable than NPS for specific improvements.

### CES (Customer Effort Score)

**The Question**: "How easy was it to [complete task]?" (1-7, strongly disagree to strongly agree)

**Why it matters**: Effort is the #1 predictor of disloyalty. Reducing effort matters more than delighting customers.

---

## Success Metrics Framework (DVF)

### Desirability — Do Users Want It?

| Metric | What It Measures | How to Collect | Target |
|--------|-----------------|----------------|--------|
| Engagement rate | Active usage / total users | Analytics | >30% DAU/MAU |
| Adoption rate | New users who complete onboarding | Analytics | >60% |
| Retention D1/D7/D30 | Users who return after 1/7/30 days | Analytics | D1>40%, D7>20%, D30>10% |
| Session length | Time spent per visit | Analytics | Depends on product type |
| Feature adoption | % users who use key feature | Analytics | >50% within first week |
| NPS | Willingness to recommend | Survey | >30 |
| Organic growth | % new users from referral/word-of-mouth | Attribution | >20% |

### Feasibility — Can We Build It?

| Factor | Assessment | Scale |
|--------|-----------|-------|
| Technical complexity | Number of unknowns, new technologies | 1-5 (1=simple, 5=research required) |
| Team capability | Skills match to requirements | 1-5 (1=perfect match, 5=need new hires) |
| Timeline | Weeks to MVP / months to production | Estimate in weeks |
| Integration risk | Dependencies on external systems | Count of critical dependencies |
| Scalability | Can architecture handle 10x/100x? | Yes/No/Redesign needed |
| Maintenance burden | Ongoing effort to operate | Hours per week |

### Viability — Does the Business Work?

| Metric | Formula | Target |
|--------|---------|--------|
| Unit economics | Revenue per user - Cost per user | Positive |
| CAC (Customer Acquisition Cost) | Marketing spend / New customers | Lower is better |
| LTV (Lifetime Value) | ARPU x Average lifespan | Higher is better |
| LTV / CAC ratio | LTV / CAC | >3x (healthy), >5x (strong) |
| Payback period | CAC / Monthly ARPU | <12 months |
| Gross margin | (Revenue - COGS) / Revenue | >60% for SaaS, >30% for services |
| Break-even | Fixed costs / (Price - Variable cost per unit) | Lower is better |

### The DVF Decision Matrix

```
          Desirable?
          YES    NO
         ┌──────┬──────┐
    YES  │ GO!  │ Pivot│  ← Feasible?
         │      │design│
         ├──────┼──────┤
    NO   │Invest│ STOP │  ← Feasible?
         │in R&D│      │
         └──────┴──────┘
          YES    NO
             ↑
          Viable?

If Viable=NO for any YES/YES cell → Fix the business model before building
```

---

## Test Planning Template

```
━━ Test Plan: [feature/product] ━━

HYPOTHESIS
If [change], then [metric] will [improve/change] by [amount] because [reason].

QUALITATIVE TESTS
□ Think-aloud with [N] users on [tasks]
□ Key questions to answer: [list]

QUANTITATIVE TESTS  
□ Method: [A/B test / usability metrics / survey]
□ Sample size: [N per variant]
□ Duration: [days/weeks]
□ Primary metric: [what to measure]
□ Guardrail metrics: [what must NOT get worse]

SUCCESS CRITERIA
□ Desirability: [metric] > [threshold]
□ Feasibility: [assessment]
□ Viability: [metric] > [threshold]

GO / NO-GO DECISION
□ GO if: [all criteria met]
□ ITERATE if: [partial criteria met]
□ STOP if: [criteria]
```
