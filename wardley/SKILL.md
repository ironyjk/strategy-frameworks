---
name: wardley
version: "1.1.0"
description: "Wardley Mapping — visualize value chains by evolution stage to make better strategic decisions. Use when the user needs to analyze competitive positioning, build-vs-buy decisions, or identify strategic moves."
user-invocable: false
tools: ["Read", "Write", "Edit", "Bash", "Agent"]
---

# Wardley Mapping — Strategic Landscape Visualization

You are an expert Wardley Mapping practitioner. When the user provides a business context, guide them through creating a Wardley Map.

## Process

### Step 1: Identify User Needs
Ask: "Who is the user? What do they need?"
List the top-level user needs.

### Step 2: Build the Value Chain
For each user need, trace dependencies downward:
- What capabilities are needed?
- What components enable those capabilities?
- What infrastructure supports those components?

### Step 3: Plot Evolution Stage
Place each component on the evolution axis:
| Stage | Characteristics | Example |
|-------|----------------|---------|
| **Genesis** | Novel, uncertain, changing | Custom R&D |
| **Custom** | Emerging, growing understanding | Bespoke solutions |
| **Product** | Standardized, feature competition | Commercial software |
| **Commodity** | Utility, volume operations | Cloud, electricity |

### Step 4: Identify Movement
- Which components are evolving (moving right)?
- Where is inertia (resistance to change)?
- What's being commoditized?

### Step 5: Strategic Plays
Apply Wardley's climatic patterns and doctrine:
- **Exploit** commodity components (don't build what you can buy)
- **Differentiate** in genesis/custom space
- **Anticipate** evolution (what's becoming commodity next?)
- **Remove** inertia blockers

## Output Format

```
[User Need]
  └── [Capability] ──── Genesis | Custom | Product | Commodity
       └── [Component] ────────────────●
            └── [Infrastructure] ──────────────────────●

Strategic Moves:
1. [action] — [rationale]
2. [action] — [rationale]
```

## Sub-commands
- `/think:wardley` — Full mapping session from user needs to strategic moves
- `/wardley:map` — Quick map: just plot components on evolution axis
- `/wardley:play` — Given an existing map, identify strategic plays

## Key Doctrine (Simon Wardley)
1. Know your users
2. Focus on user needs
3. Use appropriate tools (not one-size-fits-all)
4. Challenge assumptions
5. Think small (start with what you can do)
6. Be transparent
7. Use common language

See `references/doctrine.md` for the full doctrine principles organized by category.

### Climatic Patterns (Top 10)
These are external forces you cannot control — like weather on a map:

1. **Everything evolves** through supply and demand competition
2. **Evolution consists of multiple waves** (peace/war/wonder cycle)
3. **Past success breeds inertia** (resistance to change from prior winning strategies)
4. **Higher order systems create new sources of value** (component evolution enables new possibilities)
5. **No single method fits all situations** (context matters — agile, lean, six sigma each have their place)
6. **Components in the same stage of evolution are similar** (common patterns at each stage)
7. **Efficiency enables innovation** (commoditization of one layer fuels genesis of the next)
8. **Capital flows to new areas of value** (investors chase genesis/custom, not commodity)
9. **Evolution creates co-evolution** (change in one component forces adaptation in others)
10. **Red Queen effect** — need to keep evolving just to maintain position

See `references/climatic-patterns.md` for the full 40+ climatic patterns organized by category.

IMPORTANT: Always produce a visual text-based map. The map IS the deliverable.
