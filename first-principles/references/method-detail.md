# First Principles Thinking — Method Detail

A deep reference on the methodology, its philosophical roots, and practical application patterns.

---

## Philosophical Foundations

### Aristotle's Archai (384-322 BC)

In *Posterior Analytics*, Aristotle distinguished between two types of knowledge:
- **Derived knowledge**: conclusions reached through logical deduction from prior premises
- **First principles (archai)**: the foundational premises themselves — "the first basis from which a thing is known"

Aristotle argued that all chains of reasoning must terminate at self-evident truths. Otherwise, you have either an infinite regress (which produces no knowledge) or circular reasoning (which proves nothing).

**Key insight**: First principles are not just any assumptions — they are truths so fundamental that denying them would be self-contradictory.

Example in physics:
- Derived: "This bridge can hold 10 tons" (depends on material properties, geometry, etc.)
- First principle: "Forces must balance for a structure to be in equilibrium"

### Descartes' Methodic Doubt (1637)

In *Discourse on the Method*, Descartes proposed a radical version: doubt **everything** until you find something that cannot be doubted.

**The Four Rules of the Method:**

1. **Never accept anything as true that you do not clearly know to be true**
   - Avoid haste and prejudice
   - Include nothing in your judgments beyond what presents itself so clearly and distinctly that you have no reason to doubt it
   - *Application*: When told "that's industry standard," ask: "Is this a law of nature or just current practice?"

2. **Divide each problem into as many parts as necessary**
   - Break complex problems into their smallest components
   - Analysis = literally "loosening apart" (Greek: analyein)
   - *Application*: "Why is this product expensive?" Break into: materials, labor, overhead, margin, distribution, regulation — examine each independently

3. **Think in order — from simplest to most complex**
   - Begin with objects the easiest to know
   - Ascend little by little to knowledge of the most complex
   - Suppose an order even among objects that do not naturally precede one another
   - *Application*: Don't try to solve the whole system at once. Start with the simplest element and build up.

4. **Review thoroughly — make enumerations so complete that nothing is omitted**
   - Go back and check you haven't missed anything
   - Completeness prevents blind spots
   - *Application*: After reconstructing a solution, systematically verify each component against your first principles

**Descartes' conclusion**: The one thing he could not doubt was that he was doubting — "Cogito, ergo sum" (I think, therefore I am). This became his first principle from which he rebuilt his entire philosophy.

### Feynman's Anti-Fooling Principle

Richard Feynman, in his 1974 Caltech commencement address (*Cargo Cult Science*), articulated the scientific version:

> "The first principle is that you must not fool yourself — and you are the easiest person to fool."

Feynman's practices:
- **Derive, don't memorize**: Instead of looking up formulas, derive them from scratch. If you can't derive it, you don't understand it.
- **Name vs. understanding**: "You can know the name of a bird in all the languages of the world, but when you're finished, you'll know absolutely nothing whatever about the bird." Names are not knowledge.
- **Pleasure in finding things out**: First principles thinking should be driven by genuine curiosity, not just efficiency.

### Elon Musk's Industrial Application

Musk formalized his approach in interviews:

> "I tend to approach things from a physics framework. Physics teaches you to reason from first principles rather than by analogy. So I said, okay, what are the material constituents of a battery? What is the spot market value of the material constituents? It's got cobalt, nickel, aluminum, carbon, and some polymers for separation, and a steel can. Break that down on a material basis — it's like $80 per kilowatt hour. So, clearly, you just need to think of clever ways to take those materials and combine them into the shape of a battery cell, and you can have batteries that are much, much cheaper than anyone realizes."

---

## The Complete Method (5 Steps + Verification)

### Step 1: Surface All Assumptions

**Technique: The Assumption Audit**

Write down everything you "know" about the problem. Then categorize:

| Statement | Type | Evidence |
|-----------|------|----------|
| "Batteries cost $600/kWh" | Market data (current, not fundamental) | Industry reports |
| "You need cobalt for batteries" | Technical (partially true) | Chemistry |
| "Manufacturing is expensive" | Vague assumption | No specific evidence |
| "Energy density requires lithium" | Physical law (approximately) | Physics/chemistry |

Categories:
- **Physical laws**: Cannot be violated (conservation of energy, thermodynamics)
- **Mathematical truths**: Provable from axioms (geometry, statistics)
- **Verified data**: Measured and confirmed (commodity prices, customer behavior data)
- **Expert opinion**: May be right but is not a first principle
- **Conventional wisdom**: "Everyone knows" — most dangerous category
- **Analogy**: "It's like X" — useful for communication, dangerous for reasoning

### Step 2: Challenge Each Assumption (The Five Whys, Deepened)

For each non-fundamental assumption, apply escalating challenges:

**Level 1 — Why?**
"Why do we believe this?" Seek the source.

**Level 2 — What evidence?**
"What specific data supports this?" Separate data from interpretation.

**Level 3 — Under what conditions?**
"Is this always true, or only under certain conditions?" Find the boundaries.

**Level 4 — What would change this?**
"What would have to be true for this assumption to be wrong?" Inversion.

**Level 5 — Who benefits from this assumption?**
"Whose interest does this assumption serve?" Reveals systemic bias.

### Step 3: Identify the Bedrock Truths

After stripping assumptions, you should be left with statements that are:
- Empirically verified (measured, not assumed)
- Logically necessary (denying them creates contradiction)
- Scope-appropriate (true at the level of your problem)

**Test each "truth":**
- Can I find a counterexample? If yes, it's not a first principle.
- Does this depend on something else? If yes, dig deeper.
- Would an intelligent alien, knowing nothing about our industry, accept this as true? If yes, likely a first principle.

### Step 4: Reconstruct from Scratch

The creative core of the method. Given ONLY your bedrock truths, design the ideal solution.

**Reconstruction rules:**
1. **Forget existing solutions** — pretend they don't exist
2. **Focus on function, not form** — what FUNCTION is needed? (not "we need a battery" but "we need to store energy")
3. **Minimize cost to physics limit** — what's the theoretical minimum cost/complexity to achieve the function?
4. **Identify real vs. assumed constraints** — regulations may be real constraints; "we've always done it this way" is not

**Helpful prompts for reconstruction:**
- "If I were starting a company today to solve this problem, with no legacy, what would I build?"
- "If this solution cost 10x less, what would it look like?"
- "If I had to solve this in a week instead of a year, what would I do?"
- "What would this look like if it were easy?" (Tim Ferriss)

### Step 5: Gap Analysis and Action

Compare your reconstructed solution with the current approach:

```
                 Current State          First Principles Minimum
Cost:            [$X]                   [$Y]
Complexity:      [N components]         [M components]
Time:            [T hours/days]         [T' hours/days]
People:          [P people]             [P' people]

Gap = Opportunity
Biggest gap = Biggest opportunity = Where to focus first
```

### Step 6: Verify (Descartes' Rule 4)

Before acting, verify your reconstruction:
- Did I miss any genuine constraints? (Regulatory, physical, ethical)
- Is my "first principle" actually a first principle, or a deeper assumption I haven't questioned?
- Am I fooling myself? (Feynman test)
- Can I prototype this cheaply before committing?

---

## When to Use First Principles (and When NOT to)

### Use when:
- **Costs seem fixed** — "That's just what it costs" is a red flag
- **Industry is stagnant** — everyone does it the same way
- **Experts disagree** — conflicting expert opinions mean assumptions differ
- **You're entering a new domain** — analogies from your old domain may mislead
- **Stakes are high** — the cost of wrong assumptions is catastrophic
- **Conventional approaches have failed** — if the usual way doesn't work, the usual assumptions may be wrong

### Don't use when:
- **Time is critical** — first principles analysis takes time; in a crisis, use heuristics (OODA)
- **The domain is well-understood** — if 1000 engineers have optimized this for decades, your "first principles" analysis probably won't beat their accumulated knowledge
- **The problem is social, not technical** — first principles works best on physics/engineering/economics, less well on politics/emotions/culture
- **You lack the foundational knowledge** — first principles requires deep domain knowledge to identify REAL fundamentals vs. things that just SEEM fundamental

---

## Common Failure Modes

### 1. False First Principles
Treating a convention as a fundamental truth. Example: "Customers want lower prices" seems fundamental but isn't — customers want value, which is not the same as price.

### 2. Incomplete Decomposition
Stopping too early. "Raw materials cost $80/kWh" — but you still need to manufacture, transport, install, maintain, and recycle. Each has its own cost structure to decompose.

### 3. Ignoring Legitimate Constraints
Not all constraints are assumptions. Regulations, physics, ethics, and human psychology are real constraints. First principles thinking should question WHETHER something is a constraint, not pretend all constraints are fake.

### 4. Genius Bias
Assuming that because you've identified the theoretical minimum, achieving it is straightforward. The gap between "possible in principle" and "achievable in practice" is where most effort lives.

### 5. Isolation Fallacy
Analyzing components independently but missing emergent properties of the system. A car is more than the sum of its parts — you can't optimize each part independently and expect the whole to be optimal.

---

## Practice Exercises

### Exercise 1: Cost Decomposition
Pick something expensive in your life or business. Break down the cost to raw materials/labor/overhead. Where is the biggest markup? Why?

### Exercise 2: Process Audit
Pick a business process that takes too long. List every step. For each step, ask: "Is this step physically necessary to achieve the function?" Remove everything that isn't.

### Exercise 3: Inversion
Instead of asking "How do we succeed?" ask "How would we guarantee failure?" List all the ways. Then invert: avoid each failure mode. This often reveals hidden assumptions about what success requires.

### Exercise 4: The Martian Test
Explain your industry to someone who knows nothing about Earth business. What sounds absurd? Those absurdities are where conventions have replaced first principles.
