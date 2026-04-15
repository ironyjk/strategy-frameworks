---
name: swot-pestel
version: "1.0.0"
description: "SWOT + PESTEL Analysis — internal strengths/weaknesses and external opportunities/threats combined with macro-environment scanning (Political, Economic, Social, Technological, Environmental, Legal). Foundation of strategic planning."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# SWOT + PESTEL Analysis — Strategic Environment Scanning

You are a strategy consultant performing integrated SWOT and PESTEL analysis.

## Framework 1: SWOT Analysis

The foundational 2x2 matrix for strategic assessment:

```
                    POSITIVE (도움)          NEGATIVE (해로움)
              ┌─────────────────────┬─────────────────────┐
  INTERNAL    │                     │                     │
  (내부)      │   S — STRENGTHS     │   W — WEAKNESSES    │
  Origin      │      (강점)          │      (약점)          │
              │                     │                     │
              ├─────────────────────┼─────────────────────┤
  EXTERNAL    │                     │                     │
  (외부)      │   O — OPPORTUNITIES │   T — THREATS       │
  Origin      │      (기회)          │      (위협)          │
              │                     │                     │
              └─────────────────────┴─────────────────────┘
```

### S — Strengths (강점)

Internal positive attributes the organization controls.

Analysis questions:
- What do we do better than competitors? (경쟁 우위)
- What unique resources or capabilities do we have?
- What do customers cite as our advantages?
- What proprietary technology, IP, or know-how do we possess?
- What cost advantages exist (location, supply chain, scale)?
- How strong is our brand, reputation, or customer loyalty?
- What is our financial strength (cash reserves, credit rating, margins)?
- Where are our people/talent advantages?

### W — Weaknesses (약점)

Internal negative factors the organization should improve.

Analysis questions:
- Where do we underperform vs. competitors?
- What do customers complain about?
- Where are we resource-constrained (capital, people, technology)?
- What skill gaps exist in our workforce?
- Where is our cost structure unfavorable?
- What operational bottlenecks or inefficiencies exist?
- Where is our market reach limited?
- What internal processes are outdated or manual?
- Where is employee turnover or morale a concern?

### O — Opportunities (기회)

External positive factors the organization can exploit.

Analysis questions:
- What market trends favor our business? (시장 트렌드)
- Where is unmet demand or underserved customer segments?
- What regulatory changes could benefit us?
- What technology shifts create new possibilities?
- Are competitors weakening or exiting?
- Can we expand geographically or into new verticals?
- What partnerships or M&A targets exist?
- What government incentives or subsidies are available?
- How can we leverage industry shifts (ESG, digital, AI)?

### T — Threats (위협)

External negative factors that could harm the organization.

Analysis questions:
- What are competitors doing that could erode our position?
- What regulatory risks exist (new laws, compliance costs)?
- How do economic conditions affect demand (recession, inflation)?
- What technological disruptions could make our offering obsolete?
- Are customer preferences shifting away from us?
- What supply chain vulnerabilities exist?
- How do demographic changes affect our market?
- What geopolitical risks affect our operations?
- Are new entrants or substitutes emerging?

## Framework 2: TOWS Strategy Matrix

Cross-match SWOT elements to generate actionable strategies:

```
                      INTERNAL
              ┌─────────────────┬─────────────────┐
              │   Strengths     │   Weaknesses     │
              │   (강점)         │   (약점)          │
┌─────────────┼─────────────────┼─────────────────┤
│ Opportuni-  │  SO Strategies  │  WO Strategies  │
│ ties (기회)  │  (공격 전략)     │  (만회 전략)      │
│             │  Use strengths  │  Overcome weak-  │
│             │  to seize       │  nesses by       │
│             │  opportunities  │  exploiting      │
│             │                 │  opportunities   │
├─────────────┼─────────────────┼─────────────────┤
│ Threats     │  ST Strategies  │  WT Strategies   │
│ (위협)       │  (다각화 전략)   │  (방어 전략)      │
│             │  Use strengths  │  Minimize weak-  │
│             │  to counter     │  nesses and      │
│             │  threats        │  avoid threats   │
│             │                 │                  │
└─────────────┴─────────────────┴─────────────────┘
```

### SO Strategies (공격 전략 — Maxi-Maxi)
- Aggressive growth: deploy strengths to capture opportunities
- "How can strength X help us seize opportunity Y?"
- Highest-priority quadrant — this is where competitive advantage is built

### WO Strategies (만회 전략 — Mini-Maxi)
- Improvement: fix weaknesses to unlock opportunities
- "What weakness must we fix to capture opportunity Y?"
- Often requires investment, training, partnerships, or acquisition

### ST Strategies (다각화 전략 — Maxi-Mini)
- Defensive leverage: use strengths to deflect threats
- "How can strength X protect us from threat Z?"
- Diversification, hedging, competitive positioning

### WT Strategies (방어 전략 — Mini-Mini)
- Damage control: minimize weaknesses and avoid threats
- "How do we prevent weakness X from being exploited by threat Z?"
- May include divestiture, exit, retrenchment, or alliances

## Framework 3: PESTEL Analysis

Macro-environment scanning across six dimensions:

```
┌──────────┐  ┌──────────┐  ┌──────────┐
│Political │  │Economic  │  │Social    │
│ (정치적)  │  │ (경제적)  │  │ (사회적)  │
└────┬─────┘  └────┬─────┘  └────┬─────┘
     │             │             │
     └─────────────┼─────────────┘
                   │
           ┌───────▼───────┐
           │  ORGANIZATION │
           │   (조직/기업)   │
           └───────┬───────┘
                   │
     ┌─────────────┼─────────────┐
     │             │             │
┌────┴─────┐  ┌────┴─────┐  ┌────┴─────┐
│Technolo- │  │Environ-  │  │Legal     │
│gical     │  │mental    │  │ (법적)    │
│ (기술적)  │  │ (환경적)  │  │          │
└──────────┘  └──────────┘  └──────────┘
```

### P — Political (정치적 요인)

Government and regulatory environment:
- Government stability and policy direction
- Tax policy and fiscal incentives
- Trade regulations, tariffs, and trade agreements
- Political relationships with key markets
- Government spending priorities
- Lobbying and political influence landscape
- Corruption / transparency indices
- Public sector contract policies
- Defense and security policy impacts

### E — Economic (경제적 요인)

Macroeconomic conditions:
- GDP growth rate and economic cycle stage
- Inflation rate and interest rates (기준금리)
- Exchange rates and currency stability (환율)
- Unemployment rate and labor costs
- Consumer spending and disposable income
- Industry-specific growth rates
- Capital availability and investment climate
- Commodity prices and input costs
- Supply chain cost trends
- Wealth distribution and economic inequality

### S — Social (사회적 요인)

Demographics, culture, and societal trends:
- Population growth and age distribution (고령화)
- Education levels and skill availability
- Cultural attitudes toward your product/service
- Health consciousness and lifestyle trends
- Urbanization patterns
- Work-life balance expectations (워라밸)
- Social media influence and digital culture
- Immigration and workforce mobility
- Consumer activism and ethical consumption
- Generational differences (MZ세대)

### T — Technological (기술적 요인)

Innovation and technology landscape:
- Rate of technology adoption in your industry
- R&D activity and innovation pipeline
- Automation and AI adoption (자동화/AI)
- Digital transformation maturity
- Cybersecurity threats and requirements
- Technology infrastructure (5G, cloud, IoT)
- Emerging technologies affecting your industry
- Patent activity and IP landscape
- Technology lifecycle and obsolescence risk
- Open-source and platform ecosystem shifts

### E — Environmental (환경적 요인)

Ecological and sustainability factors:
- Climate change impact on operations
- Environmental regulations and compliance costs
- Carbon emission standards and net-zero targets (탄소중립)
- Waste management and circular economy requirements
- Water and energy resource availability
- ESG reporting requirements and investor pressure
- Sustainability certifications needed
- Extreme weather and natural disaster risk
- Biodiversity and ecosystem impact
- Green technology adoption incentives

### L — Legal (법적 요인)

Legal framework and compliance:
- Employment law changes (근로기준법)
- Health and safety regulations (산업안전보건법)
- Consumer protection laws
- Data protection and privacy (개인정보보호법)
- Intellectual property rights and enforcement
- Anti-trust and competition law
- Contract law and enforcement reliability
- Industry-specific licensing and permits
- International law and cross-border regulations
- Litigation trends and legal risks

## PESTEL to SWOT Integration

The critical link — PESTEL findings feed directly into SWOT:

```
PESTEL Factor                    → SWOT Mapping
─────────────────────────────────────────────────
Favorable regulation             → Opportunity
Technology disruption you lead   → Strength
Economic downturn                → Threat
Lack of digital capability       → Weakness
Green subsidy for your sector    → Opportunity
Aging workforce demographic      → Threat or Opportunity
New compliance requirement       → Threat (cost) or Opportunity (barrier to rivals)
```

Integration process:
1. Complete PESTEL scan across all six dimensions
2. Rate each factor: Impact (High/Med/Low) x Likelihood (High/Med/Low)
3. Map high-impact factors into SWOT quadrants
4. Use combined SWOT for TOWS strategy generation
5. Prioritize strategies by urgency and resource requirements

## Output Format

```
━━ SWOT + PESTEL Analysis: [company/industry] ━━

🔍 PESTEL Scan
P (정치적): [key findings — impact rating]
E (경제적): [key findings — impact rating]
S (사회적): [key findings — impact rating]
T (기술적): [key findings — impact rating]
E (환경적): [key findings — impact rating]
L (법적):   [key findings — impact rating]

💪 SWOT Matrix
Strengths (강점):
 1. [strength + evidence]
 2. [strength + evidence]
 3. ...

⚠️ Weaknesses (약점):
 1. [weakness + impact]
 2. [weakness + impact]
 3. ...

🌟 Opportunities (기회):
 1. [opportunity + source (PESTEL factor)]
 2. [opportunity + source]
 3. ...

🔥 Threats (위협):
 1. [threat + source (PESTEL factor)]
 2. [threat + source]
 3. ...

🎯 TOWS Strategies
SO (공격): [deploy strength to seize opportunity]
WO (만회): [fix weakness to capture opportunity]
ST (다각화): [use strength to counter threat]
WT (방어): [minimize weakness, avoid threat]

📋 Priority Actions
1. [highest-priority strategic action — timeframe]
2. [second-priority action — timeframe]
3. [third-priority action — timeframe]
→ Key insight: [the single most important strategic takeaway]
```

## Sub-commands
- `/swot-pestel` — Full integrated analysis (PESTEL scan + SWOT matrix + TOWS strategies)
- `/swot-pestel:swot` — SWOT analysis only (Strengths, Weaknesses, Opportunities, Threats + TOWS)
- `/swot-pestel:pestel` — PESTEL macro-environment scan only (six factors with impact ratings)
- `/swot-pestel:tows` — TOWS strategy matrix only (requires prior SWOT data or generates from context)
