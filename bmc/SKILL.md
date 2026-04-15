---
name: bmc
version: "1.0.0"
description: "Business Model Canvas (Osterwalder & Pigneur) — visualize, design, and pivot business models using 9 building blocks. Includes Value Proposition Canvas for customer fit analysis."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Business Model Canvas (BMC)

## Overview

The Business Model Canvas (Osterwalder & Pigneur, 2010) is a strategic management tool for developing new or documenting existing business models. It describes how an organization creates, delivers, and captures value through 9 interconnected building blocks.

**Sub-commands:**
- `/bmc` — Full Business Model Canvas analysis
- `/bmc:vpc` — Value Proposition Canvas deep dive
- `/bmc:pattern` — Identify or apply business model patterns

---

## The 9 Building Blocks

```
+---------------------+---------------------+---------------------+---------------------+---------------------+
|                     |                     |                     |                     |                     |
|  🤝 KEY PARTNERS   |  ⚙️ KEY ACTIVITIES  |                     |  💞 CUSTOMER        |                     |
|  (핵심 파트너)       |  (핵심 활동)         |                     |     RELATIONSHIPS   |                     |
|                     |                     |                     |  (고객 관계)         |                     |
|  - Strategic        |  - Production       |                     |                     |                     |
|    alliances        |  - Problem solving  |  🎁 VALUE           |  - Personal assist  |  👥 CUSTOMER        |
|  - Coopetition      |  - Platform/network |     PROPOSITIONS    |  - Self-service     |     SEGMENTS        |
|  - Joint ventures   |  - Supply chain     |  (가치 제안)         |  - Automated        |  (고객 세그먼트)     |
|  - Buyer-supplier   |                     |                     |  - Communities      |                     |
|                     +---------------------+  - Newness          |  - Co-creation      |  - Mass market      |
|                     |                     |  - Performance      |                     |  - Niche market     |
|                     |  🏗️ KEY RESOURCES   |  - Customization    +---------------------+  - Segmented        |
|                     |  (핵심 자원)         |  - Design           |                     |  - Diversified      |
|                     |                     |  - Brand/Status     |  📢 CHANNELS        |  - Multi-sided      |
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
|  💸 COST STRUCTURE (비용 구조)              |  💰 REVENUE STREAMS (수익 흐름)                                 |
|                                           |                                                               |
|  - Cost-driven vs Value-driven            |  - Asset sale / Usage fee / Subscription                      |
|  - Fixed costs / Variable costs           |  - Lending/Renting/Leasing / Licensing                        |
|  - Economies of scale / scope             |  - Brokerage fees / Advertising                               |
|                                           |  - Fixed pricing / Dynamic pricing                            |
+-------------------------------------------+---------------------------------------------------------------+
```

---

## Block-by-Block Analysis

### 1. 👥 Customer Segments (고객 세그먼트)

The different groups of people or organizations an enterprise aims to reach and serve.

**Analysis Questions:**
- For whom are we creating value?
- Who are our most important customers?
- Are we serving a mass market, niche, segmented, diversified, or multi-sided platform?
- What are the distinct needs of each segment?
- Which segments are growing/shrinking?

**Types:**
| Type | Description | Example |
|------|-------------|---------|
| Mass Market (대중 시장) | No distinction between segments | Consumer electronics |
| Niche Market (니치 시장) | Specialized, tailored | Luxury goods |
| Segmented (세분화) | Slightly different needs | Bank retail vs. wealth |
| Diversified (다각화) | Unrelated segments | Amazon: retail + AWS |
| Multi-sided Platform (다면 플랫폼) | Two+ interdependent segments | Credit cards: merchants + cardholders |

---

### 2. 🎁 Value Propositions (가치 제안)

The bundle of products and services that create value for a specific Customer Segment.

**Analysis Questions:**
- What value do we deliver to the customer?
- Which customer problems are we helping to solve?
- Which customer needs are we satisfying?
- What bundles of products/services do we offer per segment?

**Value Drivers:**
- **Newness (새로움)** — satisfying entirely new needs
- **Performance (성능)** — improving product/service performance
- **Customization (맞춤화)** — tailoring to specific needs
- **"Getting the Job Done" (작업 완수)** — helping customers get things done
- **Design (디자인)** — superior design and UX
- **Brand/Status (브랜드/지위)** — signaling status
- **Price (가격)** — comparable value at lower price
- **Cost Reduction (비용 절감)** — helping customers reduce costs
- **Risk Reduction (위험 감소)** — reducing risks customers face
- **Accessibility (접근성)** — making things available to new segments
- **Convenience/Usability (편의성)** — making things easier to use

---

### 3. 📢 Channels (채널)

How a company communicates with and reaches its Customer Segments to deliver a Value Proposition.

**Analysis Questions:**
- Through which channels do our segments want to be reached?
- How are we reaching them now? How are our channels integrated?
- Which channels work best? Which are most cost-efficient?
- How are we integrating them with customer routines?

**Channel Phases:**
1. **Awareness (인지)** — How do we raise awareness?
2. **Evaluation (평가)** — How do we help customers evaluate our VP?
3. **Purchase (구매)** — How do customers purchase?
4. **Delivery (전달)** — How do we deliver the VP?
5. **After Sales (사후 관리)** — How do we provide post-purchase support?

---

### 4. 💞 Customer Relationships (고객 관계)

The types of relationships a company establishes with specific Customer Segments.

**Analysis Questions:**
- What type of relationship does each segment expect?
- Which ones have we established? At what cost?
- How are they integrated with the rest of our business model?
- What is the customer lifetime value (CLV)?

**Relationship Types:**
- **Personal Assistance (전담 지원)** — human interaction during/after sales
- **Dedicated Personal Assistance (전담 매니저)** — assigned representative
- **Self-Service (셀프서비스)** — no direct relationship, provide means
- **Automated Services (자동화 서비스)** — automated + personalized
- **Communities (커뮤니티)** — user communities for knowledge exchange
- **Co-creation (공동 창조)** — customers help create value (reviews, UGC)

---

### 5. 💰 Revenue Streams (수익 흐름)

The cash a company generates from each Customer Segment (costs subtracted = profit).

**Analysis Questions:**
- For what value are customers really willing to pay?
- For what do they currently pay? How are they currently paying?
- How would they prefer to pay?
- How much does each revenue stream contribute to overall revenues?

**Revenue Types:**
| Type | Description |
|------|-------------|
| Asset Sale (자산 판매) | Selling ownership rights |
| Usage Fee (이용료) | Charged per use |
| Subscription (구독료) | Continuous access |
| Lending/Renting/Leasing (대여/임대) | Temporary exclusive use |
| Licensing (라이선스) | Permission to use IP |
| Brokerage Fees (중개 수수료) | Intermediation services |
| Advertising (광고) | Fees for advertising a product/service |

**Pricing Mechanisms:** Fixed (list, feature-dependent, segment-dependent, volume-dependent) vs. Dynamic (negotiation, yield management, real-time market, auctions)

---

### 6. 🏗️ Key Resources (핵심 자원)

The most important assets required to make a business model work.

**Analysis Questions:**
- What key resources do our value propositions require?
- Our distribution channels? Customer relationships? Revenue streams?
- Which resources are most expensive? Most critical?

**Resource Categories:**
- **Physical (물적 자원)** — facilities, machines, vehicles, POS, distribution networks
- **Intellectual (지적 자원)** — brands, patents, copyrights, data, partnerships
- **Human (인적 자원)** — essential in knowledge-intensive and creative industries
- **Financial (재무 자원)** — cash, credit lines, stock options, guarantees

---

### 7. ⚙️ Key Activities (핵심 활동)

The most important things a company must do to make its business model work.

**Analysis Questions:**
- What key activities do our value propositions require?
- Our distribution channels? Customer relationships? Revenue streams?
- What activities differentiate us from competitors?

**Activity Categories:**
- **Production (생산)** — designing, making, delivering (manufacturing)
- **Problem Solving (문제 해결)** — new solutions for individual customers (consulting, hospitals)
- **Platform/Network (플랫폼/네트워크)** — platform management, promotion, provisioning

---

### 8. 🤝 Key Partners (핵심 파트너)

The network of suppliers and partners that make the business model work.

**Analysis Questions:**
- Who are our key partners and suppliers?
- Which key resources do we acquire from partners?
- Which key activities do partners perform?
- What are the motivations for partnerships?

**Partnership Motivations:**
- **Optimization & Economy of Scale** — reduce costs, outsource non-core
- **Reduction of Risk & Uncertainty** — strategic alliances in uncertain markets
- **Acquisition of Resources & Activities** — extend capabilities via partners

**Partnership Types:**
1. Strategic alliances between non-competitors (전략적 제휴)
2. Coopetition: strategic partnerships between competitors (경쟁 협력)
3. Joint ventures to develop new businesses (합작 투자)
4. Buyer-supplier relationships for reliable supply (공급망 관계)

---

### 9. 💸 Cost Structure (비용 구조)

All costs incurred to operate a business model.

**Analysis Questions:**
- What are the most important costs inherent in our business model?
- Which key resources are most expensive?
- Which key activities are most expensive?
- Is our model more cost-driven or value-driven?

**Characteristics:**
- **Cost-driven (비용 주도)** — minimize costs wherever possible (no-frills airlines)
- **Value-driven (가치 주도)** — focused on value creation (luxury hotels)
- **Fixed Costs (고정비)** — remain same regardless of volume (salaries, rent)
- **Variable Costs (변동비)** — vary proportionally with volume (materials)
- **Economies of Scale (규모의 경제)** — cost advantages from increased output
- **Economies of Scope (범위의 경제)** — cost advantages from broader scope of operations

---

## Value Proposition Canvas (VPC) Deep Dive

The Value Proposition Canvas zooms into two blocks of the BMC: **Value Propositions** and **Customer Segments**, providing a detailed tool for designing products/services that match what customers truly want.

### Customer Profile (고객 프로필)

```
                    +----------------------------------+
                   /          GAINS (이득)              \
                  /   What outcomes and benefits        \
                 /    customers want or would be         \
                /     delighted by?                       \
               /                                          \
              +            CUSTOMER                        |
              |              JOBS                          |
              |           (고객의 할일)                     |
              |                                            |
              |   What tasks are customers               |
              |   trying to perform? What problems       |
              |   are they trying to solve?               |
               \                                          /
                \                                        /
                 \     PAINS (불편/고충)                  /
                  \   What annoys customers?            /
                   \  What prevents them from          /
                    \ getting the job done?            /
                     +-------------------------------+
```

#### Customer Jobs (고객의 할 일)
- **Functional jobs (기능적)** — specific tasks to perform or problems to solve
- **Social jobs (사회적)** — how customers want to be perceived (status, power, trust)
- **Emotional jobs (감성적)** — desired emotional states (security, satisfaction)
- **Supporting jobs (보조적)** — buyer of value, co-creator, transferrer

**Questions:**
- What functional tasks is your customer trying to get done?
- What social goals is your customer trying to achieve?
- What emotional needs is your customer trying to satisfy?
- What basic needs is your customer trying to fulfill?

#### Customer Pains (고객의 불편/고충)
- **Undesired outcomes (원치 않는 결과)** — functional, social, emotional, ancillary
- **Obstacles (장애물)** — things preventing getting started or slowing down
- **Risks (위험)** — potential negative outcomes that could go wrong

**Questions:**
- What does your customer find too costly? (time, money, effort)
- What makes your customer feel bad? (frustrations, annoyances)
- What are the main difficulties and challenges?
- What negative social consequences do they fear?
- What risks do they fear? (financial, social, technical)

#### Customer Gains (고객이 원하는 이득)
- **Required gains (필수 이득)** — without these, solution doesn't work
- **Expected gains (기대 이득)** — basic expectations even if not articulated
- **Desired gains (희망 이득)** — beyond expectations but would love to have
- **Unexpected gains (기대 이상)** — beyond imagination, delightful surprises

**Questions:**
- What savings would make your customer happy? (time, money, effort)
- What quality levels do they expect?
- What would make your customer's life easier?
- What positive social consequences do they desire?
- What do they dream about? What would be a big achievement?

---

### Value Map (가치 맵)

```
                    +----------------------------------+
                   /      GAIN CREATORS (이득 창출)      \
                  /   How do products/services           \
                 /    create customer gains?              \
                /                                         \
               /                                          \
              +        PRODUCTS &                          |
              |        SERVICES                            |
              |       (제품 & 서비스)                       |
              |                                            |
              |   What products and services              |
              |   does your VP build on?                  |
               \                                          /
                \                                        /
                 \   PAIN RELIEVERS (불편 해소)           /
                  \  How do products/services           /
                   \ alleviate customer pains?         /
                    +-------------------------------+
```

#### Products & Services (제품 & 서비스)
List all products, services, and features your VP builds on:
- Physical/tangible goods
- Intangible (copyrights, after-sales)
- Digital (downloads, online recommendations)
- Financial (investment funds, insurance)

#### Pain Relievers (불편 해소)
How exactly do your products/services alleviate specific customer pains?
- Do they produce savings? (time, money, effort)
- Do they make customers feel better? (kill frustrations)
- Do they fix underperforming solutions?
- Do they put an end to difficulties/challenges?
- Do they eliminate risks?

#### Gain Creators (이득 창출)
How exactly do your products/services create customer gains?
- Do they create savings that delight?
- Do they produce outcomes customers expect or exceed them?
- Do they copy or outperform current solutions?
- Do they make customers' lives easier?
- Do they create positive social consequences?
- Do they deliver something customers dream about?

---

### Fit Assessment (적합성 평가)

Three stages of fit:

| Stage | Name | Description |
|-------|------|-------------|
| 1 | **Problem-Solution Fit (문제-해결 적합)** | Evidence that customers care about certain jobs/pains/gains AND your VP addresses them |
| 2 | **Product-Market Fit (제품-시장 적합)** | Evidence that your VP actually creates value in the market (traction) |
| 3 | **Business Model Fit (비즈니스 모델 적합)** | Evidence that your VP can be embedded in a profitable, scalable business model |

**Fit Checklist:**
- [ ] VP addresses the most important jobs, most severe pains, most desired gains
- [ ] VP focuses on few things but does them extremely well
- [ ] VP is aligned with how customers measure success
- [ ] VP differentiates from competition on jobs/pains/gains that matter
- [ ] VP addresses functional, social AND emotional jobs

---

## Business Model Patterns (비즈니스 모델 패턴)

### 1. Freemium (프리미엄)
- **Structure:** Free basic service + premium paid tier
- **Logic:** Large free user base, small % converts to paid
- **Key Metrics:** Conversion rate, CAC, CLV, free-to-paid ratio
- **Examples:** Spotify, Dropbox, LinkedIn
- **BMC Impact:** Two customer segments (free/paid), cost structure must support large free base

### 2. Platform / Multi-sided (플랫폼 / 다면시장)
- **Structure:** Connect two or more distinct user groups
- **Logic:** Network effects — value increases as users join each side
- **Key Metrics:** Liquidity, match quality, cross-side network effects
- **Examples:** Uber, Airbnb, Google (users + advertisers)
- **BMC Impact:** Multiple customer segments, chicken-and-egg challenge, often subsidize one side

### 3. Razor-and-Blade (면도기-면도날)
- **Structure:** Cheap/free base product + expensive consumables
- **Logic:** Lock-in through base product, recurring revenue from consumables
- **Key Metrics:** Installed base, consumable margin, repurchase rate
- **Examples:** Printers/ink, Nespresso/capsules, gaming consoles/games
- **BMC Impact:** Revenue shifts from one-time sale to repeat purchases

### 4. Subscription (구독 모델)
- **Structure:** Recurring payments for continuous access
- **Logic:** Predictable revenue, reduced churn vs. transactional
- **Key Metrics:** MRR/ARR, churn rate, LTV, CAC payback period
- **Examples:** Netflix, SaaS tools, Dollar Shave Club
- **BMC Impact:** Revenue streams shift from transactional to recurring

### 5. Long Tail (롱테일)
- **Structure:** Sell less of more — many niche products alongside bestsellers
- **Logic:** Aggregated niche sales can equal/exceed hit sales
- **Key Metrics:** SKU count, niche revenue %, discovery/recommendation quality
- **Examples:** Amazon, Netflix catalog, Etsy
- **BMC Impact:** Key resource = massive inventory/platform; key activity = recommendation/curation

### Additional Patterns:
- **Open Business Model (개방형)** — systematically collaborate with outside partners (P&G Connect+Develop)
- **Unbundling (분리형)** — separate infrastructure, product innovation, customer relationship businesses
- **Bait & Hook (미끼와 낚시)** — subsidized or free initial offer + ongoing revenue through contracts or services (differs from Razor-and-Blade: lock-in is contractual, not consumable-based; e.g., subsidized phones + carrier contracts)

---

## Canvas-to-Hypothesis Process (Lean Startup Integration)

The BMC is a tool for **hypotheses**, not facts. Each block contains assumptions to be tested.

### Step-by-Step Process:

```
 +-----------+     +-----------+     +-----------+     +-----------+
 |  1. MAP   | --> |  2. RANK  | --> | 3. TEST   | --> | 4. LEARN  |
 |           |     |           |     |           |     |           |
 | Fill the  |     | Identify  |     | Design    |     | Validate  |
 | canvas    |     | riskiest  |     | cheapest  |     | or pivot  |
 | with      |     | hypotheses|     | experiment|     | each      |
 | hypotheses|     | (leap of  |     | to test   |     | hypothesis|
 |           |     |  faith)   |     | each one  |     |           |
 +-----------+     +-----------+     +-----------+     +-----------+
                                           |
                                           v
                                   +---------------+
                                   | 5. ITERATE    |
                                   |               |
                                   | Update canvas |
                                   | Pivot or      |
                                   | persevere     |
                                   +---------------+
```

**For each building block:**

1. **State the hypothesis clearly** — "We believe [customer segment] will [pay/use/switch] for [value proposition] through [channel]"
2. **Identify the riskiest assumption** — What must be true for this to work?
3. **Design the experiment** — MVP, landing page, concierge, Wizard of Oz, A/B test
4. **Define success metrics** — What number proves/disproves the hypothesis?
5. **Run and learn** — Build-Measure-Learn loop

### Hypothesis Priority Matrix:

| | High Uncertainty | Low Uncertainty |
|---|---|---|
| **High Impact** | TEST FIRST | Monitor |
| **Low Impact** | Test later | Assume true |

### Pivot Types (from Lean Startup):
- **Zoom-in Pivot** — single feature becomes whole product
- **Zoom-out Pivot** — whole product becomes single feature
- **Customer Segment Pivot** — same product, different customers
- **Customer Need Pivot** — same customers, different problem
- **Platform Pivot** — app becomes platform (or vice versa)
- **Channel Pivot** — different distribution mechanism
- **Revenue Model Pivot** — different monetization approach
- **Value Capture Pivot** — change how you capture value

---

## Output Format

When generating a BMC analysis, use this structure:

### `/bmc` — Full Canvas Output

```
# 🎯 Business Model Canvas: [Company/Product Name]

## 👥 Customer Segments (고객 세그먼트)
[Segment analysis]

## 🎁 Value Propositions (가치 제안)
[Value proposition per segment]

## 📢 Channels (채널)
[Channel strategy per phase]

## 💞 Customer Relationships (고객 관계)
[Relationship type per segment]

## 💰 Revenue Streams (수익 흐름)
[Revenue model with pricing]

## 🏗️ Key Resources (핵심 자원)
[Critical resources]

## ⚙️ Key Activities (핵심 활동)
[Essential activities]

## 🤝 Key Partners (핵심 파트너)
[Partner network]

## 💸 Cost Structure (비용 구조)
[Cost model]

---

## 🔗 Block Interactions
[How blocks reinforce or conflict with each other]

## ⚠️ Riskiest Hypotheses
[Top 3 assumptions to test first]

## 💡 Recommendations
[Strategic suggestions]
```

### `/bmc:vpc` — Value Proposition Canvas Output

```
# 🎯 Value Proposition Canvas: [Product] → [Segment]

## 👤 Customer Profile

### 📋 Jobs to Be Done
- Functional: ...
- Social: ...
- Emotional: ...

### 😣 Pains
- [Severity: 🔴 Extreme / 🟠 High / 🟡 Moderate / 🟢 Low]

### 😊 Gains
- [Importance: ⭐ Required / 🌟 Expected / ✨ Desired / 💫 Unexpected]

## 📦 Value Map

### 🛠️ Products & Services
[List]

### 💊 Pain Relievers
[Mapping to specific pains]

### 🚀 Gain Creators
[Mapping to specific gains]

## ✅ Fit Assessment
[Problem-Solution / Product-Market / Business Model fit status]
```

### `/bmc:pattern` — Pattern Analysis Output

```
# 🔄 Business Model Pattern Analysis: [Company/Product]

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

## Process Guidelines

1. **Always start with Customer Segments** — the customer is the heart of any business model
2. **Work right-to-left** — Segments → VP → Channels → Relationships → Revenue → then left side
3. **One canvas per significant customer segment** if segments have very different needs
4. **Use the VPC before filling the main canvas** for deeper customer understanding
5. **Test hypotheses in order of risk** — start with the ones that could kill the business
6. **Revisit and iterate** — the canvas is a living document, not a one-time exercise
7. **Compare before/after** — when pivoting, create a new canvas and compare side by side
