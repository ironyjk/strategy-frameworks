# Stock and Flow Guide — System Dynamics Fundamentals

## Why Stock and Flow?

Causal Loop Diagrams (CLDs) show the *direction* of influence. Stock-and-flow diagrams show the *quantity* and *rate*. They answer: "How much? How fast? How long until equilibrium?"

Jay Forrester (MIT, 1960s) created System Dynamics to simulate complex systems. The core insight: **everything in a system is either a stock (accumulation) or a flow (rate of change).**

---

## The Building Blocks

### Stocks (Levels)
A stock is anything that accumulates. It is measured at a POINT IN TIME.

**Visual**: Rectangle/box
```
┌──────────────┐
│   STOCK      │
│  (e.g., 500) │
└──────────────┘
```

**Properties**:
- Has a numeric value at any given moment
- Changes ONLY through inflows and outflows
- Creates memory in the system (stocks remember their history)
- Creates inertia (stocks resist sudden change)
- Creates delays (stocks take time to fill or drain)

**Examples**:
| Domain | Stock | Units |
|--------|-------|-------|
| Finance | Cash balance | Dollars |
| HR | Employee count | People |
| Operations | Inventory | Units |
| Knowledge | Expertise level | Skill-hours |
| Marketing | Brand reputation | Perception index |
| IT | Technical debt | Story points |
| Customer | Customer base | Accounts |
| Manufacturing | Work in progress | Units |

### Flows (Rates)
A flow changes a stock over time. It is measured over a PERIOD.

**Visual**: Pipe with valve (double line with triangle)
```
═══▷══╤══▷═══
      │
   [valve]
```

**Types**:
- **Inflow**: Increases the stock (hiring, revenue, learning)
- **Outflow**: Decreases the stock (attrition, spending, forgetting)
- **Biflow**: Can go either direction (net migration, investment returns)

**The Fundamental Equation**:
```
Stock(t) = Stock(t-1) + Inflow(dt) - Outflow(dt)

Or in calculus:
dStock/dt = Inflow - Outflow
```

### Converters (Auxiliaries)
Variables that are calculated from other variables. They influence flows but are not stocks themselves.

**Visual**: Circle
```
    ○ Converter
```

**Examples**: Productivity rate, price, policy threshold, ratio, target

### Connectors (Information Links)
Arrows showing information dependency. They transmit information, not material.

**Visual**: Thin arrow
```
Stock ────▶ Converter ────▶ Flow
```

---

## Stock-and-Flow Diagram Notation

```
                              FULL DIAGRAM EXAMPLE
                              Employee Knowledge System

                          ┌──────────────────┐
   [Source]                │                  │                [Sink]
   ═══════▷═══════╤══════▷│   EMPLOYEE       │══════╤══▷═══════════
      Hiring      │       │   KNOWLEDGE      │      │   Knowledge
      Rate        │       │   STOCK          │      │   Loss Rate
                  │       │                  │      │
             ○────┘       └────────┬─────────┘      └────○
          Hiring                   │                   Attrition
          Budget          ┌───────┤────────┐           Rate
                          │       │        │
                     ○────┘       │        └────○
                  Training        │         Productivity
                  Investment      │
                                  │
                             ○────┘
                          Institutional
                           Memory
```

---

## The Five Key Insights

### 1. You Can Only Change a Stock by Changing Its Flows

This sounds obvious but has profound implications:
- Want more customers? You need to increase acquisition rate AND/OR decrease churn rate.
- There is no "teleport" — everything goes through flows.
- Many failed strategies amount to wishing a stock would change without addressing flows.

**Common mistake**: "We need to reduce technical debt" (stock). Real question: "How do we reduce the creation rate of new debt AND increase the paydown rate?"

### 2. Stocks Create Delays

Even if you shut off all inflows TODAY, the stock persists until drained.
Even if you open inflows to maximum, the stock takes time to fill.

```
Time to drain = Stock / Outflow rate
Time to fill  = Target / Inflow rate
```

**Example**: A company with 100 employees and 2% monthly attrition takes 50 months to empty (without hiring). If they want to grow from 100 to 150, hiring 5/month means 10 months — plus ramp-up time.

**Implication**: Decision-makers who don't understand stock delays consistently set unrealistic timelines.

### 3. Stocks Decouple Inflows from Outflows

Inflows and outflows operate independently. This creates the possibility of:
- **Accumulation**: Inflow > outflow → stock grows
- **Depletion**: Outflow > inflow → stock shrinks
- **Equilibrium**: Inflow = outflow → stock stable (but still flowing!)

**Example**: A company can be hiring fast (high inflow) AND losing people fast (high outflow). Net change might be zero, but the COST is enormous (hiring costs + lost productivity).

### 4. Stocks Create Disequilibrium Pressure

When a stock is far from its "desired" level, it creates pressure:
- Low cash stock → desperate cost-cutting pressure
- High inventory stock → discounting pressure
- Low morale stock → talent flight pressure

This pressure drives behavior, often in ways that create reinforcing loops (panic hiring → bad hires → more attrition → more panic hiring).

### 5. Flow Rates Often Depend on Stock Levels

This creates feedback loops:
- More customers (stock) → more referrals (flow) → more customers [Reinforcing]
- More debt (stock) → higher interest (flow) → more debt [Reinforcing]
- More inventory (stock) → more storage cost (flow) → pressure to discount (flow) [Balancing]

---

## Common Stock-and-Flow Patterns

### Pattern 1: Exponential Growth
```
         ┌───────────────┐
═══▷═══╤▷│    STOCK      │
  Flow  │ │               │
        │ └───────┬───────┘
        │         │ (+)
        └─────────┘
```
Stock increases flow, which increases stock. Unchecked exponential growth.
Examples: Compound interest, viral growth, arms race.

### Pattern 2: Goal-Seeking (Balancing)
```
○ Target                          ┌───────────────┐
    │                             │               │
    └──▶ ○ Gap ──▶ ═══▷═══╤═════▷│    STOCK      │
                    Flow   │      │               │
                           │      └───────┬───────┘
                           │              │ (-)
                           └──────────────┘
```
Gap between target and stock drives flow. Stock approaches target asymptotically.
Examples: Thermostat, staffing to plan, inventory reorder.

### Pattern 3: Overshoot and Oscillation
Same as goal-seeking BUT with a delay in the feedback:
```
○ Target ──▶ ○ Gap ──▶ Flow ══▷ STOCK
                                   │
                              [DELAY]
                                   │
                                   └──▶ Perceived Stock ──▶ Gap
```
The delay causes overshoot — stock passes the target, then correction overshoots back.
Examples: Hiring cycles, inventory bullwhip, commodity prices.

### Pattern 4: S-Shaped Growth (Growth + Limits)
```
           ┌─────────────┐
═══▷═══╤══▷│    STOCK    │
  Flow  │  │             │
        │  └──────┬──────┘
        │    (+)  │  (-)
        └─────────┤
                  │
             ○ Carrying
             Capacity
```
Reinforcing growth hits a balancing constraint. Growth slows and levels off.
Examples: Market saturation, learning curve, population growth.

### Pattern 5: Draining Bathtub (Stock Depletion)
```
                  ┌─────────────┐
                  │    STOCK    │══════╤══▷═══
                  │ (depleting) │      │  Outflow
                  └──────┬──────┘      │
                         │ (+)         │
                         └─────────────┘
```
Stock drives its own outflow. As stock declines, outflow eventually slows.
Examples: Depleting savings, customer base without acquisition, natural resources.

---

## Building a Stock-and-Flow Model: Step by Step

### Step 1: Identify the Key Stocks
Ask: "What accumulates in this system? What can I measure at a point in time?"
- Usually 3-7 stocks for a useful model
- Common mistake: too many stocks (start simple, add later)

### Step 2: Identify the Flows
For each stock, ask: "What increases this? What decreases this?"
- Name flows as RATES (hiring rate, not "hiring")
- Ensure units are consistent: stock units / time

### Step 3: Identify Converters
What variables affect the flow rates?
- Are they constants, policies, or functions of stocks?

### Step 4: Draw the Connectors
What depends on what?
- Stock → Converter → Flow is the most common pattern
- Stock → Stock connections go through flows (never directly)

### Step 5: Write the Equations
For each flow: `flow = f(stocks, converters, constants)`
For each converter: `converter = f(stocks, other converters, constants)`

### Step 6: Set Initial Conditions
What is each stock's value at time zero?

### Step 7: Simulate
Run the model forward in time. Use dt (time step) small enough that flows don't cause impossible stock values (e.g., negative inventory).

---

## Simulation Parameters

### Time Step (dt)
- Rule of thumb: dt = 1/4 of the shortest delay in the system
- Too large: oscillation artifacts, impossible values
- Too small: unnecessary computation

### Duration
- Long enough to see equilibrium or full cycle behavior
- Usually 2-5x the longest delay in the system

### Sensitivity Testing
- Vary each parameter +/- 25% and observe impact on key stocks
- Parameters that cause large changes = high-leverage points
- Parameters that cause little change = safely ignorable

---

## Example: Small Business Cash Flow

```
STOCKS:
  Cash = INTEGRAL(revenue - expenses, initial_cash)
  Customers = INTEGRAL(acquisition - churn, initial_customers)
  Reputation = INTEGRAL(rep_build - rep_decay, initial_reputation)

FLOWS:
  revenue = Customers * avg_revenue_per_customer
  expenses = fixed_costs + (Customers * variable_cost_per_customer)
  acquisition = marketing_spend * conversion_rate * (1 + Reputation * word_of_mouth_factor)
  churn = Customers * base_churn_rate * (1 - Reputation * retention_factor)
  rep_build = service_quality * customer_interactions
  rep_decay = Reputation * natural_decay_rate

CONVERTERS:
  marketing_spend = MIN(marketing_budget, Cash * marketing_pct)
  service_quality = f(employee_training, workload_per_employee)
  
CONSTANTS:
  initial_cash = 500,000
  initial_customers = 100
  initial_reputation = 0.5
  avg_revenue_per_customer = 1,000 / month
  fixed_costs = 50,000 / month
  variable_cost_per_customer = 300 / month
  conversion_rate = 0.02
  base_churn_rate = 0.05 / month
  word_of_mouth_factor = 0.5
  retention_factor = 0.3
  marketing_pct = 0.10
  natural_decay_rate = 0.02 / month
```

**Key dynamics**: Reputation stock creates a reinforcing loop (more reputation → more acquisition + less churn → more customers → more interactions → more reputation) but also has a natural decay. The critical question: does the reinforcing loop outpace the decay?
