---
name: think-router-prompt
version: "1.0.0"
description: "LLM-as-Router prompt template for selecting the optimal strategic business framework given a situation. Replaces keyword-matching Detection Matrix."
type: router_prompt
target_repo: strategy-frameworks
---

# Think Router — LLM Selection Prompt

This file is consumed by `pag_pipeline.py::route(repo="strategy", question, router_llm)`.
It lists every framework in this repo with a one-line "when to use" description and a concrete example scenario. The router LLM is asked to return **exactly one framework name**.

---

## System Prompt

```
You are a strategic business thinker acting as a framework selector.
Given a situation, pick the SINGLE framework that best fits.

Output ONLY the framework name (lowercase, exactly as listed below). No explanation, no punctuation, no quotes.

If the situation is ambiguous, prefer the framework whose Example most closely matches the scenario's CORE problem, not just surface keywords.
```

---

## Framework Catalog

Each entry: `name` — **when to use** (one line) / **example** (one concrete scenario).

### Environment & Industry Analysis (outside-in)

**swot-pestel** — Need a broad internal/external scan (strengths/weaknesses + political/economic/social/tech/environmental/legal forces) before any deeper analysis.
Example: "We're writing next year's strategic plan and want a 360-degree baseline of where we stand and what macro forces matter."

**porter** — Industry profitability or competitive positioning question; need Five Forces, Value Chain, or cost-vs-differentiation lens.
Example: "Our industry margins are shrinking every year. Are suppliers squeezing us, or are new entrants the real threat?"

**scenario-planning** — Long-term uncertainty with multiple plausible futures (geopolitics, tech shifts, regulation); need robust strategy across futures.
Example: "In 10 years, will the energy transition kill our refinery business or create demand? Plan for multiple scenarios."

**game-theory** — Specific rival whose likely moves must be predicted; competitive interaction with payoffs and bluffs.
Example: "If we cut prices 10%, our two main competitors will probably react. What's the equilibrium outcome?"

### Growth, Market Choice & Innovation

**ansoff-matrix** — Leadership debates growth direction (existing vs new market, existing vs new product); need a 2x2 growth options framework.
Example: "Board is split: do we sell current products to new geographies, or build new products for current customers?"

**blue-ocean** — Red-ocean competition is brutal; want to escape by creating uncontested market space via Eliminate-Reduce-Raise-Create.
Example: "Five rivals in our segment are all copying each other on price. How do we redefine the offering and stop competing on the same axes?"

**disruptive-innovation** — Low-end entrant or new-market startup is nibbling at our base; incumbent worries about Christensen-style disruption.
Example: "A cheap, simpler SaaS tool serves customers we ignored. Should we fight it, buy it, or launch our own low-end brand?"

**stp** — Need to pick a target segment and define positioning before crafting offering/messaging.
Example: "Our new service could appeal to 4 different customer types. Which one do we target and how do we position against alternatives?"

**jtbd** — Want to understand why customers switch to or from a product beyond demographics; focus on the functional/emotional job.
Example: "Our retention is leaking and we don't know why. What job are customers actually hiring our product for, and where are we failing?"

**design-thinking** — Human-centered innovation on a fuzzy customer problem; need empathy fieldwork, prototyping, and user testing.
Example: "Elderly users abandon our app within a week. We want to co-design the experience with them, not guess."

**lean-startup** — New product/feature with unvalidated demand; need Build-Measure-Learn, MVP, and pivot-or-persevere discipline.
Example: "We have a SaaS hypothesis but no paying customers yet. How do we test it cheaply before hiring a team?"

**real-options** — Staged investment under uncertainty; want to value the right to expand/defer/abandon rather than commit all at once.
Example: "Should we build a full-size plant now, or pay for a pilot that gives us the option to scale in 2 years?"

### Positioning, Advantage & Portfolio

**bcg-matrix** — Multi-business/multi-product portfolio needs resource allocation call (Stars/Cash Cows/Dogs/Question Marks).
Example: "We run 6 business units. Which ones deserve more investment, which should we harvest, which should we sell?"

**rbv** — Need to identify what uniquely defensible resources or capabilities we have (VRIO) as the basis of competitive advantage.
Example: "Three competitors copied our product features within a year. What do we actually own that they can't replicate?"

**wardley** — Strategic landscape across value chain + evolution stage; deciding build-vs-buy-vs-outsource by component maturity.
Example: "Our platform has 20 components. Which are commodity we should rent, and which are genuine differentiators we must build?"

**bmc** — Designing or pivoting a business model end-to-end; need to lay out value prop, customers, channels, revenue, costs on one canvas.
Example: "We're spinning up a new subsidiary. Sketch the whole business model on one page so the board can challenge it."

**marketing-mix** — Tactical go-to-market design; need to decide product, price, place, promotion (+people/process/evidence for services).
Example: "We've picked our target segment and positioning — now we need a launch plan: pricing tier, channels, promotion mix."

### Execution, Change & Organization

**drucker** — Foundational management questions: mission, who is the customer, priorities, effectiveness of executives.
Example: "We've grown fast but nobody agrees what business we're in anymore. What are we actually here to do, and for whom?"

**okr** — Want to cascade ambitious goals from company to team with measurable key results on a quarterly rhythm.
Example: "The exec team sets direction in PDFs that nobody reads. Build a quarterly goal system that every team can see and align to."

**bsc** — Translating strategy into measurable execution across four perspectives (financial/customer/process/learning).
Example: "Our strategy deck is beautiful but nothing changes operationally. Build a scorecard that drives weekly behavior across the company."

**mckinsey-7s** — Organization feels misaligned (post-merger, after restructure, slowing growth); diagnose across strategy/structure/systems/values/style/staff/skills.
Example: "Two years after the merger, the teams still don't work together. What's misaligned across the 7 dimensions?"

**kotter** — Known change needed (transformation, new system, culture shift) and resistance is the main obstacle; need 8-step sequencing.
Example: "Rollout of the new ERP is being sabotaged by middle managers. How do we sequence urgency, coalition, and wins to carry them?"

### Problem-Solving & Decision

**first-principles** — Conventional wisdom or industry assumption may be wrong; must reason from physical/economic fundamentals.
Example: "Everyone says battery packs must cost $600/kWh. Decompose the raw materials and manufacturing — is that floor real?"

**systems-thinking** — Symptoms keep returning after fixes; suspect feedback loops, delays, or unintended consequences from past interventions.
Example: "Every time we hire aggressively, quality drops and churn spikes 6 months later. We keep repeating the cycle — why?"

**ooda** — Fast-moving competitive or operational situation where decision speed beats analysis depth; tempo is the weapon.
Example: "A competitor just launched a price cut this morning. We need a decision loop that cycles faster than theirs, not a 2-month review."

**pyramid-principle** — Output-side problem: need to structure a recommendation or report so a busy executive gets the answer first and support below.
Example: "Board meeting is in 3 days. Structure the go/no-go recommendation so the CEO gets the answer in 30 seconds and details if he wants them."

---

## User Prompt Template

```
## Situation
{scenario}

## Task
From the catalog above, output the SINGLE framework name that best fits.

Answer (one word, lowercase):
```

---

## Routing Notes (for maintainers, not shown to LLM)

- **Ambiguous cases deliberately kept**: "how do we grow?" → `ansoff-matrix` (structured growth options), NOT `blue-ocean` (blue-ocean is escape-competition-first). Blue Ocean only when red-ocean brutality is the core pain.
- **`stp` vs `jtbd` vs `design-thinking`**: STP = picking a segment; JTBD = why people switch; Design Thinking = empathetic product/experience co-creation. These are sequential, not substitutes.
- **`bsc` vs `okr`**: BSC is strategic scorecard (annual, multi-perspective); OKR is quarterly goal cascade. Pick BSC when the problem is "strategy doesn't become action"; OKR when the problem is "teams aren't aligned to company goals".
- **`drucker` is for foundational/existential questions** — mission, customer, purpose. Not for tactical execution; use OKR/BSC for that.
- **`first-principles` vs `systems-thinking`**: First Principles when a stated assumption is suspect; Systems Thinking when a symptom keeps returning despite fixes.
- **Exclusive routing**: If multiple frameworks fit, the router picks ONE. Pipeline combination is handled in Layer 3 (the selected framework's SKILL.md may invoke others).
- **Not included here**: `think` itself (this IS think). TOC and TRIZ frameworks live in their own repos and are routed separately.

---

## Maintenance Protocol

Adding a new framework requires:
1. Add an entry to Framework Catalog above (name + when + example).
2. Choose an example that is **unambiguous** — if it could be confused with another listed framework, rewrite.
3. Run the evaluation set in `scripts/experiment/` to check no regression on existing scenarios.
