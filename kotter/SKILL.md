---
name: kotter
version: "1.1.0"
description: "Kotter's 8-Step Change Model — lead organizational transformation from urgency to culture. The definitive change management framework with 2014 Accelerate dual-system update."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Kotter's 8-Step Change Model

> Background and theory: Read references/foundation.md

## The 8 Steps — Overview

```
  ┌─────────────────────────────────────────────────────┐
  │          KOTTER'S 8-STEP CHANGE MODEL               │
  │                                                     │
  │  Step 8 ──▶  Institute Change (변화의 제도화)        │
  │       ▲                                             │
  │  Step 7 ──▶  Sustain Acceleration (가속화 유지)      │
  │       ▲                                             │
  │  Step 6 ──▶  Generate Short-term Wins (단기 성과)    │
  │       ▲                                             │
  │  Step 5 ──▶  Enable Action (장애물 제거)             │
  │       ▲                                             │
  │  Step 4 ──▶  Enlist Volunteer Army (자발적 참여)     │
  │       ▲                                             │
  │  Step 3 ──▶  Form Strategic Vision (비전 수립)       │
  │       ▲                                             │
  │  Step 2 ──▶  Build Guiding Coalition (추진팀 구성)   │
  │       ▲                                             │
  │  Step 1 ──▶  Create Urgency (위기감 조성)            │
  └─────────────────────────────────────────────────────┘

  ◀── CREATE CLIMATE ──▶◀── ENGAGE & ENABLE ──▶◀── IMPLEMENT & SUSTAIN ──▶
       (Steps 1-3)            (Steps 4-5)            (Steps 6-8)
```

### Per-Step Diagnostic Questions

| Step | Key Question |
|------|-------------|
| 1. Urgency | What happens if we do nothing for 12 months? Is urgency based on fear (fragile) or opportunity (durable)? |
| 2. Coalition | Does our coalition include people others trust and follow? Can it drive change without the CEO for a week? |
| 3. Vision | Can we state the vision in under 60 seconds? Does it answer "why should I care?" for frontline employees? |
| 4. Volunteer Army | How many times has each employee heard the vision this month? Are leaders modeling the change? |
| 5. Enable Action | What are the top 3 structural barriers? Which individuals are blocking progress? |
| 6. Short-term Wins | What wins can we achieve in the next 90 days? Are they visible to the broader organization? |
| 7. Sustain | Have we started the harder, deeper changes or are we resting on early wins? Is urgency still high? |
| 8. Institute | Would this change survive if the CEO left tomorrow? Do hiring/onboarding reflect the new culture? |

---

## Change Readiness Assessment Checklist

Rate each item 1 (strongly disagree) to 5 (strongly agree):

| Dimension | Items |
|-----------|-------|
| **Urgency & Need** | Widely shared understanding of why; cost of NOT changing is quantified; leaders talk about it; external pressures reinforce it |
| **Leadership & Coalition** | Credible coalition driving change; senior leadership visibly committed; diverse perspectives; informal leaders engaged |
| **Vision & Strategy** | Vision clear, compelling, communicable; strategies well-defined; daily work connects to vision; emotional + rational appeal |
| **Communication & Engagement** | Multiple channels, multiple times; two-way dialogue; leaders model change; people understand personal impact |
| **Capacity & Resources** | Barriers identified with removal plans; skills available; adequate budget/time/personnel; quick-wins planned |
| **Sustainability** | Embedded in KPIs/reviews/promotions; succession plans; early wins celebrated; regression prevention plan |

**Scoring** (4 items per section, each 1-5, max 20):
- **17-20**: Strong readiness — proceed with confidence
- **12-16**: Moderate readiness — address gaps before proceeding
- **Below 12**: Low readiness — significant groundwork needed

---

## Output Format

```markdown
## Change Analysis: [Topic/Initiative]

### Current State Assessment
[Where the organization is now relative to the 8 steps]

### Step 1: Urgency — [Score: X/5]
**Current state:** ...
**Recommendation:** ...

### Step 2: Coalition — [Score: X/5]
**Current state:** ...
**Recommendation:** ...

[...continue for all 8 steps...]

### Priority Actions (30/60/90 Day)
| Timeline | Action | Owner | Step |
|---|---|---|---|
| 30 days | ... | ... | Step X |
| 60 days | ... | ... | Step X |
| 90 days | ... | ... | Step X |

### Risk Factors
- ...

### Success Metrics
- ...
```

---

## Sub-Commands

### `/think:kotter` — Full 8-Step Change Plan

**Input:** Description of the change initiative, organization context, current state
**Output:** Full analysis of all 8 steps with recommendations, priority actions, and success metrics

**Process:**
1. Assess current state against all 8 steps
2. Identify which step the organization is currently at (or stuck at)
3. Provide detailed recommendations for each step
4. Create 30/60/90 day action plan
5. Define success metrics and risk factors

### `/kotter:assess` — Change Readiness Assessment

**Input:** Proposed change initiative, organization context
**Output:** Scored assessment across all 6 dimensions with gap analysis and recommendations

**Process:**
1. Walk through each checklist dimension
2. Score based on available information (ask clarifying questions if needed)
3. Identify the weakest dimensions
4. Provide targeted recommendations to improve readiness
5. Give overall go/no-go recommendation with conditions

### `/kotter:diagnose` — Diagnose Stalled Change Effort

**Input:** Description of the stalled change, what's been tried, symptoms of stalling
**Output:** Root cause diagnosis mapped to specific step failures, recovery plan

**Process:**
1. Map symptoms to the 8 common errors
2. Identify which step(s) were skipped or insufficiently addressed
3. Determine if the issue is upstream (earlier steps) or current step
4. Provide recovery recommendations — often requires going BACK to an earlier step
5. Warn about the "declaring victory too soon" trap if applicable

---

## Anti-Patterns

- Skipping steps — especially 1 (urgency) and 2 (coalition); they are the foundation
- Treating the 8 steps as purely linear — in practice, steps overlap and iterate
- Declaring victory too soon (Error #7) — the most common failure at the later stages
- CEO-as-lone-hero — change requires a coalition, not a mandate
- All head, no heart — logical arguments without emotional urgency produce compliance, not commitment
- Confusing false urgency (frantic activity) with true urgency (focused determination)

---

## When to Use / Companion Frameworks

- **Use Kotter** for large-scale organizational transformation, culture change, strategic pivots
- **Combine with ADKAR** for individual-level change tracking alongside organizational steps
- **Combine with Lewin** for force-field analysis when diagnosing resistance
- **Use Dual Operating System** (Accelerate, 2014) when change is continuous, not one-time (details in foundation.md)
