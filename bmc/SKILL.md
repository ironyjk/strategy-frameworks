---
name: bmc
version: "1.1.0"
description: "Business Model Canvas (Osterwalder & Pigneur) — visualize, design, and pivot business models using 9 building blocks. Includes Value Proposition Canvas for customer fit analysis."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Business Model Canvas (BMC)

> Background and theory: Read references/foundation.md

## Overview

The Business Model Canvas (Osterwalder & Pigneur, 2010) is a strategic management tool for developing new or documenting existing business models. It describes how an organization creates, delivers, and captures value through 9 interconnected building blocks.

**Sub-commands:**
- `/think:bmc` — Full Business Model Canvas analysis
- `/bmc:vpc` — Value Proposition Canvas deep dive
- `/bmc:pattern` — Identify or apply business model patterns

---

## The 9 Building Blocks

```
+---------------------+---------------------+---------------------+---------------------+---------------------+
|                     |                     |                     |                     |                     |
|  KEY PARTNERS       |  KEY ACTIVITIES     |                     |  CUSTOMER           |                     |
|  (핵심 파트너)       |  (핵심 활동)         |                     |     RELATIONSHIPS   |                     |
|                     |                     |                     |  (고객 관계)         |                     |
|  - Strategic        |  - Production       |                     |                     |                     |
|    alliances        |  - Problem solving  |  VALUE              |  - Personal assist  |  CUSTOMER           |
|  - Coopetition      |  - Platform/network |     PROPOSITIONS    |  - Self-service     |     SEGMENTS        |
|  - Joint ventures   |  - Supply chain     |  (가치 제안)         |  - Automated        |  (고객 세그먼트)     |
|  - Buyer-supplier   |                     |                     |  - Communities      |                     |
|                     +---------------------+  - Newness          |  - Co-creation      |  - Mass market      |
|                     |                     |  - Performance      |                     |  - Niche market     |
|                     |  KEY RESOURCES      |  - Customization    +---------------------+  - Segmented        |
|                     |  (핵심 자원)         |  - Design           |                     |  - Diversified      |
|                     |                     |  - Brand/Status     |  CHANNELS           |  - Multi-sided      |
|                     |  - Physical         |  - Price            |  (채널)              |    platform         |
|                     |  - Intellectual     |  - Cost reduction   |                     |                     |
|                     |  - Human            |  - Risk reduction   |  - Direct/Indirect  |                     |
|                     |  - Financial        |  - Accessibility    |  - Owned/Partner    |                     |
|                     |                     |  - Convenience      |  - 5 phases:        |                     |
|                     |                     |                     |    Aware→Eval→      |                     |
|                     |                     |                     |    Buy→Deliver→     |                     |
|                     |                     |                     |    After-sales      |                     |
+---------------------+---------------------+---------------------+---------------------+---------------------+
|                                           |                                                               |
|  COST STRUCTURE (비용 구조)                |  REVENUE STREAMS (수익 흐름)                                    |
|                                           |                                                               |
|  - Cost-driven vs Value-driven            |  - Asset sale / Usage fee / Subscription                      |
|  - Fixed costs / Variable costs           |  - Lending/Renting/Leasing / Licensing                        |
|  - Economies of scale / scope             |  - Brokerage fees / Advertising                               |
|                                           |  - Fixed pricing / Dynamic pricing                            |
+-------------------------------------------+---------------------------------------------------------------+
```

---

## Process Guidelines

1. **Always start with Customer Segments** — the customer is the heart of any business model
2. **Work right-to-left** — Segments → VP → Channels → Relationships → Revenue → then left side
3. **One canvas per significant customer segment** if segments have very different needs
4. **Use the VPC before filling the main canvas** for deeper customer understanding
5. **Test hypotheses in order of risk** — start with the ones that could kill the business
6. **Revisit and iterate** — the canvas is a living document, not a one-time exercise
7. **Compare before/after** — when pivoting, create a new canvas and compare side by side

---

## Output Format

### `/think:bmc` — Full Canvas Output

```
# Business Model Canvas: [Company/Product Name]

## Customer Segments (고객 세그먼트)
[Segment analysis]

## Value Propositions (가치 제안)
[Value proposition per segment]

## Channels (채널)
[Channel strategy per phase]

## Customer Relationships (고객 관계)
[Relationship type per segment]

## Revenue Streams (수익 흐름)
[Revenue model with pricing]

## Key Resources (핵심 자원)
[Critical resources]

## Key Activities (핵심 활동)
[Essential activities]

## Key Partners (핵심 파트너)
[Partner network]

## Cost Structure (비용 구조)
[Cost model]

---

## Block Interactions
[How blocks reinforce or conflict with each other]

## Riskiest Hypotheses
[Top 3 assumptions to test first]

## Recommendations
[Strategic suggestions]
```

### `/bmc:vpc` — Value Proposition Canvas Output

```
# Value Proposition Canvas: [Product] → [Segment]

## Customer Profile

### Jobs to Be Done
- Functional: ...
- Social: ...
- Emotional: ...

### Pains
- [Severity: Extreme / High / Moderate / Low]

### Gains
- [Importance: Required / Expected / Desired / Unexpected]

## Value Map

### Products & Services
[List]

### Pain Relievers
[Mapping to specific pains]

### Gain Creators
[Mapping to specific gains]

## Fit Assessment
[Problem-Solution / Product-Market / Business Model fit status]
```

### `/bmc:pattern` — Pattern Analysis Output

```
# Business Model Pattern Analysis: [Company/Product]

## Current Pattern
[Identified pattern(s)]

## Pattern Fit Assessment
[Why this pattern works/doesn't work]

## Alternative Patterns
[Other patterns to consider with pros/cons]

## Hybrid Opportunity
[How to combine patterns for competitive advantage]
```

---

## Anti-Patterns

- Filling the canvas as a one-time exercise, then filing it away
- Starting with Key Resources/Activities instead of Customer Segments
- Treating hypotheses as facts — each block is an assumption until validated
- Ignoring block interactions (e.g., VP that doesn't match Channels)
- Creating one canvas when multiple customer segments have fundamentally different needs

---

## When to Use / Companion Frameworks

- **Use BMC** for new venture design, business model innovation, strategic pivots
- **Combine with Lean Startup** for hypothesis testing (Canvas-to-Hypothesis process in foundation.md)
- **Combine with Porter's Five Forces** for industry context before filling the canvas
- **Use VPC alongside JTBD** for deeper customer understanding
