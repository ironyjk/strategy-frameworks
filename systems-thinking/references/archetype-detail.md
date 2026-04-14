# System Archetypes — Complete Reference

All 8 archetypes with structure, real-world examples, early warning signs, and intervention strategies.

---

## 1. Fixes That Fail

### Structure
```
Problem Symptom ──(-)──▶ Fix Applied
       ▲                    │
       │                    │ (unintended)
       │                  [delay]
       │                    │
       └────────(+)─────── Side Effect
```

### Pattern
A quick fix alleviates a symptom but creates a delayed side effect that ultimately worsens the original problem.

### Examples

| Domain | Symptom | Quick Fix | Side Effect |
|--------|---------|-----------|-------------|
| Management | Low productivity | Overtime mandates | Burnout → even lower productivity |
| IT | System outages | Heroic firefighting | No time for prevention → more outages |
| Finance | Cash shortage | Delay vendor payments | Vendors raise prices / reduce quality |
| Health | Headache | Painkillers daily | Rebound headaches, liver damage |
| Agriculture | Pests | Pesticides | Resistant pests, dead predators → more pests |

### Early Warning Signs
- The same problem keeps coming back, often worse
- "We fixed that last month" is a common phrase
- The fix becomes the default response (institutionalized)
- Side effects are dismissed as unrelated

### Intervention Strategy
1. **Acknowledge the side effect**: Map the full causal chain including delays
2. **Address the root cause**: What is causing the symptom in the first place?
3. **Phase transition**: Maintain the quick fix while building the fundamental solution
4. **Measure the side effect**: Make the hidden cost visible

---

## 2. Shifting the Burden

### Structure
```
Problem Symptom ──(-)──▶ Symptomatic Fix
       │                    │
       │                    │ (addiction)
       │                  [delay]
       │                    │
       │              Side Effect ──(-)──▶ Capability for
       │                                   Fundamental Fix
       │
       └──────(-)──▶ Fundamental Fix
                     (increasingly difficult)
```

### Pattern
A symptomatic fix is easier and faster than the fundamental solution. Over time, dependence on the symptomatic fix ERODES the capability to implement the fundamental fix.

### Examples

| Domain | Symptom | Symptomatic Fix | Fundamental Fix (eroding) |
|--------|---------|-----------------|--------------------------|
| Business | Need for expertise | Hire consultants | Build internal capability |
| Personal | Stress | Alcohol/substances | Address root cause of stress |
| Software | Bugs in production | Hotfixes | Improve testing/architecture |
| Organization | Poor decisions | Escalate to CEO | Develop manager decision-making |
| Economy | Unemployment | Government subsidies | Improve education/training |

### Early Warning Signs
- "We'll do it ourselves next time" (but never do)
- Increasing dependency on external help
- Internal skills atrophying
- Rising costs of the symptomatic fix
- Fundamental fix feels increasingly impossible

### Intervention Strategy
1. **Name the addiction**: Make the shifting-burden pattern explicit
2. **Protect the fundamental solution**: Dedicate resources that can't be raided
3. **Set a sunset date**: "Consultants leave in 6 months regardless"
4. **Weaken the symptomatic fix**: Make it slightly harder or more expensive
5. **Strengthen the fundamental fix**: Training, mentoring, practice opportunities

---

## 3. Limits to Growth

### Structure
```
Growing Action ──(+)──▶ Performance
      ▲                    │
      │                    │
      │ (R)                │ (B)
      │                    │
      │                    ▼
      └──────────────── Limiting Condition
```

### Pattern
A reinforcing growth process runs into a balancing constraint. Growth slows, stalls, or reverses.

### Examples

| Domain | Growth Engine | Limiting Factor |
|--------|-------------|-----------------|
| Startup | Product-led growth | Infrastructure can't scale |
| Sales team | More reps → more sales | Market saturates / lead quality drops |
| Manufacturing | Increase output | Quality control can't keep up |
| City | Population growth | Housing / infrastructure / services |
| Career | Take on more projects | Time/energy → quality drops → reputation |

### Early Warning Signs
- Growth rate is slowing despite same effort
- Quality metrics declining alongside growth metrics
- Team feels "stretched thin"
- Diminishing returns on growth investment
- Workarounds proliferating

### Intervention Strategy
1. **Don't push harder on the growth engine** — this makes the constraint worse
2. **Identify the constraint BEFORE it binds** — anticipate
3. **Remove or raise the constraint**: Invest in capacity, change the process, redesign
4. **Accept the limit**: Sometimes the limit is real and the goal should change
5. **Sequence**: Growth → Invest in capacity → Growth → Invest → ...

---

## 4. Tragedy of the Commons

### Structure
```
Actor A Activity ──(+)──▶ Actor A Gain
       │                    
       └──(-)──▶ Shared Resource ◀──(-)── Actor B Activity
                     │                         │
                     │                    Actor B Gain ◀──(+)──┘
                     │
                   [delay]
                     │
                     ▼
               Total Activity = A + B + ... (exceeds renewal rate)
```

### Pattern
Individual actors each gain from exploiting a shared resource. Each individual's use is rational, but the collective effect depletes the resource.

### Examples

| Domain | Shared Resource | Individual Gain | Collective Outcome |
|--------|----------------|-----------------|-------------------|
| Environment | Fishery | More fish caught | Stock collapse |
| Office | IT support team | My ticket resolved fast | Everyone overloaded |
| Software | Shared codebase | Quick hack gets my feature shipped | Codebase becomes unmaintainable |
| Sales | Company reputation | Aggressive selling → my quota | Customer trust erodes for all |
| Team | Senior architect's time | "Quick question" | Architect does no real work |

### Early Warning Signs
- Individual gains are declining (more effort for same result)
- The shared resource is visibly degrading
- "Grab it before someone else does" mentality
- Blame shifts to other actors ("they're overusing it")

### Intervention Strategy
1. **Make the resource visible**: Dashboard showing usage, capacity, and trend
2. **Regulate access**: Quotas, budgets, reservations
3. **Privatize**: Assign portions to individuals who bear the cost of depletion
4. **Educate**: Help actors see the collective consequence of individual choices
5. **Appeal to mutual interest**: "If the fishery dies, nobody eats"

---

## 5. Escalation

### Structure
```
Actor A's Action ──(+)──▶ Threat to B
       ▲                       │
       │                       │
       │                       ▼
  Threat to A ◀──(+)── Actor B's Action
```

### Pattern
Each actor's response to a perceived threat from the other creates a greater threat, driving counter-response. Both sides escalate, often far beyond what either intended.

### Examples

| Domain | Actor A | Actor B | Escalation |
|--------|---------|---------|------------|
| Business | Price cut | Competitor price cut | Price war → margins destroyed |
| Advertising | Increase ad spend | Competitor increases spend | Ad war → ROI collapses |
| Features | Add features | Competitor adds features | Feature bloat → complexity |
| Hiring | Raise salaries | Competitor raises salaries | Talent bidding war |
| Legal | Sue competitor | Countersue | Litigation costs exceed damages |

### Early Warning Signs
- "We have to match what they're doing"
- Each round costs more than the last
- Original goals are forgotten — it's now about "winning"
- Both sides are worse off than before the escalation started
- Third parties (customers, employees) suffer

### Intervention Strategy
1. **Unilateral de-escalation**: One side deliberately steps back (requires courage)
2. **Negotiate**: Explicit agreement to stop (arms control treaties, price floors)
3. **Change the game**: Compete on a different dimension entirely
4. **Introduce a mediator**: Third party breaks the cycle
5. **Make the cost visible**: Both sides see the total waste from escalation

---

## 6. Success to the Successful

### Structure
```
Resources to A ──(+)──▶ A's Success
      ▲                      │
      │                      │
  Allocation                 ▼
   Decision ◀──────── A outperforms B
      │
      │
      ▼
Resources to B ──(-)──▶ B's Success
                  (less)
```

### Pattern
When two activities compete for resources, the more successful one gets more resources, making it even more successful — while the less successful one starves.

### Examples

| Domain | Winner A | Loser B | Resource |
|--------|----------|---------|----------|
| Business units | Profitable division | Promising but new division | Capital budget |
| Employees | Star performer | Average performer | Mentoring, opportunities |
| Products | Flagship product | New product line | Engineering time |
| Markets | Domestic market | International expansion | Sales effort |
| Cities | Urban center | Rural area | Investment, talent |

### Early Warning Signs
- One side consistently "wins" resource allocation debates
- The losing side's potential is never tested (self-fulfilling prophecy)
- Arguments become circular: "A deserves more because A performs better"
- Organization becomes increasingly dependent on one activity/person/product

### Intervention Strategy
1. **Separate the competition**: Give B its own protected resource pool
2. **Equalize initial conditions**: Ensure both start with adequate resources to demonstrate potential
3. **Measure potential, not just current performance**: What would B achieve WITH resources?
4. **Diversification mandate**: Allocate minimum % to non-dominant activities
5. **Rotate**: Periodically move resources and people between A and B

---

## 7. Growth and Underinvestment

### Structure
```
Growth ──(+)──▶ Demand ──▶ Demand/Capacity Ratio
   ▲                              │
   │                              │ (perception that
   │                              │  growth is stalling)
   │                              ▼
   │                       Performance Standards
   │                              │
   │                            (lowered)
   │                              │
   │                              ▼
   └────(+)──── Investment ◀──── Perceived Need
                  (insufficient)    for Investment
                                    (reduced)
```

### Pattern
Growth creates demand that should trigger capacity investment, but the investment is delayed or insufficient. Performance drops, which is attributed to "market conditions" rather than underinvestment, so goals are lowered instead of capacity being built.

### Examples

| Domain | Growth | Required Investment | What Happens Instead |
|--------|--------|-------------------|---------------------|
| IT | User base grows 10x | Infrastructure, architecture | "Performance is acceptable" (lower standards) |
| Manufacturing | Orders increase | New equipment, training | Overtime, quality shortcuts |
| Service company | Client base grows | More staff, better tools | Overwork existing staff, reduce service quality |
| City | Population grows | Roads, transit, housing | Accept congestion as "normal" |

### Early Warning Signs
- Standards or SLAs are being quietly lowered
- "That's just how it is in a growing company"
- Investment proposals are perpetually deferred
- Best employees leave (they see the underinvestment clearly)
- Quality issues are blamed on external factors, never internal capacity

### Intervention Strategy
1. **Maintain standards**: Do NOT lower them to match declining performance
2. **Lead with investment**: Build capacity AHEAD of demand
3. **Connect cause and effect**: Show that performance decline = capacity gap, not market conditions
4. **Long-term metrics**: Track capacity utilization alongside growth metrics
5. **Pre-commit**: "When X metric hits Y threshold, we automatically invest Z"

---

## 8. Eroding Goals

### Structure
```
Goal ◀──(-)── Gap between Goal and Reality
  │                    ▲
  │                    │
  │            Reality (actual performance)
  │                    ▲
  │                    │
  └──▶ Corrective Action (SHOULD increase reality to meet goal)
       
  BUT ALSO:
  
  Gap ──▶ Pressure to Lower Goal ──(-)──▶ Goal
           (easier than improving reality)
```

### Pattern
When there's a gap between the goal and actual performance, there are two responses: (1) improve performance (hard) or (2) lower the goal (easy). Over time, the easy path dominates, and standards erode.

### Examples

| Domain | Original Goal | Eroded To | Mechanism |
|--------|--------------|-----------|-----------|
| Quality | Zero defects | <5% defect rate | "Zero is unrealistic" |
| Delivery | Same-day response | 48-hour response | "Customers understand" |
| Budget | On budget | 10% over is normal | "Every project runs over" |
| Fitness | Run 5k in 25 min | "Just finish" | "It's about participation" |
| Strategy | Market leader | "Profitable niche player" | "We're being realistic" |

### Early Warning Signs
- Targets are revised downward year after year
- Language shifts: "ambitious" → "realistic" → "achievable"
- Comparison is against lowered standards, not original goals
- New hires are told "that's just aspirational"
- Competitors are meeting the standards you abandoned

### Intervention Strategy
1. **Anchor the goal externally**: Tie to customer expectations, competitor performance, or physics
2. **Make erosion visible**: Plot the goal over time — if it's declining, name it
3. **Separate goal-setting from performance review**: Don't let poor performance justify lower goals
4. **Use absolute anchors**: "Customer expects delivery in 24h" (doesn't erode)
5. **Ratchet mechanism**: Goals can go up but never down

---

## Quick Reference: Archetype Selection Guide

| If you see... | Likely Archetype |
|---------------|-----------------|
| Same problem recurring despite fixes | Fixes That Fail |
| Increasing dependency on external help | Shifting the Burden |
| Growth stalling despite more effort | Limits to Growth |
| Everyone suffering from shared resource depletion | Tragedy of the Commons |
| Tit-for-tat competitive reactions | Escalation |
| Winner-take-all resource allocation | Success to the Successful |
| Standards declining alongside growth | Growth and Underinvestment |
| Goals gradually becoming less ambitious | Eroding Goals |

## Archetype Combinations

Real systems often exhibit multiple archetypes simultaneously:

- **Limits to Growth + Growth and Underinvestment**: Growth hits constraint, response is to lower standards rather than invest in removing constraint
- **Fixes That Fail + Shifting the Burden**: Quick fix creates side effects AND erodes fundamental solution capability
- **Escalation + Tragedy of the Commons**: Competitive escalation depletes shared resources (ad spend bidding war that raises everyone's CAC)
- **Success to the Successful + Eroding Goals**: Dominant activity gets all resources while declining activity's goals are quietly lowered
