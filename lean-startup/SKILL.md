---
name: lean-startup
version: "1.0.0"
description: "Lean Startup (Eric Ries) — Build-Measure-Learn loop for rapid validated learning. MVP, pivot-or-persevere decisions, innovation accounting. Reduce waste by testing assumptions before building."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Lean Startup Framework (린 스타트업)

> "The only way to win is to learn faster than anyone else." — Eric Ries

## 1. Core Philosophy (핵심 철학)

**Validated Learning over Intuition (검증된 학습 > 직감)**

린 스타트업은 도요타 린 제조(Lean Manufacturing)의 원칙을 신규 사업과 혁신에 적용한 프레임워크다.

### Three Pillars (3대 원칙)
1. **Validated Learning (검증된 학습)** — 고객으로부터 직접 검증된 학습만이 진짜 진전이다
2. **Eliminate Waste (낭비 제거)** — 고객이 원하지 않는 것을 만드는 것이 최대 낭비
3. **Scientific Experimentation (과학적 실험)** — 가설 → 실험 → 측정 → 학습의 반복

### Key Insight (핵심 통찰)
- 대부분의 스타트업은 제품을 잘못 만들어서가 아니라, **아무도 원하지 않는 것을 만들어서** 실패한다
- 불확실성이 높을수록 계획(plan)보다 학습(learn)이 중요하다
- 실패는 나쁜 것이 아니다 — **빨리 실패하고 빨리 배우는 것(Fail Fast, Learn Fast)**이 핵심

---

## 2. Build-Measure-Learn Loop (구축-측정-학습 루프)

린 스타트업의 핵심 엔진. 이 피드백 루프를 최대한 빠르게 돌리는 것이 목표다.

```
    ┌─────────────────────────────────────────────┐
    │                                             │
    │   ╔═══════════╗     PLANNING direction      │
    │   ║  IDEAS    ║ ←───────────────────────┐   │
    │   ║  (아이디어) ║                         │   │
    │   ╚═════╤═════╝                         │   │
    │         │                               │   │
    │         │  BUILD (구축)                   │   │
    │         │  • Code MVP                   │   │
    │         │  • Design experiment          │   │
    │         ▼                               │   │
    │   ╔═══════════╗                         │   │
    │   ║ PRODUCT   ║                         │   │
    │   ║ (제품/MVP) ║                         │   │
    │   ╚═════╤═════╝                         │   │
    │         │                               │   │
    │         │  MEASURE (측정)                 │   │
    │         │  • A/B test                   │   │
    │         │  • Cohort analysis            │   │
    │         ▼                               │   │
    │   ╔═══════════╗                         │   │
    │   ║   DATA    ║                         │   │
    │   ║  (데이터)  ║                         │   │
    │   ╚═════╤═════╝                         │   │
    │         │                               │   │
    │         │  LEARN (학습)                   │   │
    │         │  • Validate/invalidate        │   │
    │         │  • Pivot or persevere?        │   │
    │         ▼                               │   │
    │   ╔═══════════╗                         │   │
    │   ║ LEARNING  ║─────────────────────────┘   │
    │   ║  (학습)    ║                             │
    │   ╚═══════════╝     EXECUTION direction     │
    │                                             │
    └─────────────────────────────────────────────┘
```

### CRITICAL: Plan in REVERSE Order (계획은 역순으로!)

| Step | Execution (실행) | Planning (계획) |
|------|------------------|-----------------|
| 1st  | Build            | **Learn** — 무엇을 배워야 하는가? |
| 2nd  | Measure          | **Measure** — 어떤 지표로 검증할 것인가? |
| 3rd  | Learn            | **Build** — 최소한 무엇을 만들면 되는가? |

> 계획할 때는 Learn → Measure → Build 순서로 생각하고,
> 실행할 때는 Build → Measure → Learn 순서로 진행한다.

---

## 3. MVP — Minimum Viable Product (최소기능제품)

> "If you're not embarrassed by the first version of your product, you've launched too late." — Reid Hoffman

MVP는 **Build-Measure-Learn 루프를 최소 비용으로 한 바퀴 돌리기 위한 제품**이다.

### MVP Types (MVP 유형)

| Type | Description | When to Use | Example |
|------|-------------|-------------|---------|
| **Concierge MVP** (컨시어지) | 자동화 없이 사람이 직접 서비스 수행 | 고객 니즈 자체가 불확실할 때 | Food on the Table — 창업자가 직접 장보기 |
| **Wizard of Oz MVP** (마법사) | 뒷단은 수동, 앞단은 자동화처럼 보임 | 기술 가능성은 확인됨, 수요가 불확실 | Zappos — 주문 들어오면 직접 신발 구매 |
| **Landing Page MVP** (랜딩페이지) | 제품 설명 + 가입/결제 버튼만 | 가치 제안(Value Prop) 테스트 | Buffer — 가격 페이지로 수요 측정 |
| **Video MVP** (영상) | 제품 데모 영상으로 반응 측정 | 복잡한 제품의 컨셉 검증 | Dropbox — 3분 데모 영상으로 대기자 확보 |
| **Piecemeal MVP** (조합형) | 기존 도구/서비스를 조합해 구현 | 빠른 프로토타입 필요 | Groupon — WordPress + PDF + 이메일 |
| **Single-Feature MVP** (단일기능) | 핵심 기능 하나만 구현 | 핵심 가치 가설이 명확할 때 | 초기 Twitter — 140자 메시지만 |

### MVP Design Principles (MVP 설계 원칙)
1. **가설 하나에 집중** — MVP 하나당 검증할 가설은 하나
2. **측정 기준 선정** — MVP 만들기 전에 성공/실패 기준(metric)을 정의
3. **학습 최적화** — 가장 빨리 배울 수 있는 형태를 선택
4. **완벽주의 경계** — MVP는 부끄러워야 정상

---

## 4. Hypothesis Testing (가설 검증)

### Leap-of-Faith Assumptions (핵심 가정)

모든 사업 계획에는 검증되지 않은 가정이 숨어있다. 가장 위험한 두 가지:

#### Value Hypothesis (가치 가설)
> "고객이 이 제품/서비스를 **정말로 가치있게** 여기는가?"

- 고객이 사용하는가? (활성 사용률)
- 대가를 지불하는가? (지불 의향)
- 다시 돌아오는가? (재방문/재구매율)

#### Growth Hypothesis (성장 가설)
> "새로운 고객이 **지속적으로 유입**되는가?"

- 기존 고객이 추천하는가? (바이럴 계수)
- 유료 채널이 수지가 맞는가? (CAC < LTV)
- 제품 사용이 자연스럽게 노출을 만드는가? (네트워크 효과)

### Experiment Design (실험 설계)

```
┌──────────────────────────────────────────┐
│  1. HYPOTHESIS (가설)                     │
│     "만약 [행동]을 하면, [결과]가 나올     │
│      것이다. 왜냐하면 [근거]."             │
│                                          │
│  2. METRIC (측정 지표)                    │
│     무엇을 측정할 것인가?                  │
│     성공 기준(threshold)은?               │
│                                          │
│  3. EXPERIMENT (실험)                     │
│     최소 비용으로 검증할 방법은?            │
│     MVP 유형 선택                         │
│                                          │
│  4. RESULT (결과)                         │
│     가설 지지 / 기각                       │
│     → Persevere / Pivot                  │
└──────────────────────────────────────────┘
```

---

## 5. Innovation Accounting (혁신 회계)

전통적 재무지표(매출, 이익)는 초기 단계에서 무의미하다. 혁신 회계는 **학습의 진전을 측정**한다.

### Three Milestones (3단계 마일스톤)

| Milestone | Name | Description |
|-----------|------|-------------|
| **1** | **Establish the Baseline (기준선 수립)** | MVP로 현재 상태의 실제 데이터를 수집. 전환율, 가입률, 수익 등 핵심 지표의 현 수준 파악 |
| **2** | **Tune the Engine (엔진 튜닝)** | 실험과 최적화를 통해 기준선에서 이상적 목표치로 개선. 한 번에 하나의 변수만 변경 |
| **3** | **Pivot or Persevere (피벗 또는 지속)** | 충분한 노력 후에도 이상치에 접근하지 못하면 → **피벗**. 개선이 보이면 → **지속** |

### Vanity Metrics vs Actionable Metrics (허영 지표 vs 실행 지표)

| Vanity Metrics (허영 지표) ❌ | Actionable Metrics (실행 지표) ✅ |
|-------------------------------|----------------------------------|
| 총 가입자 수 | 주간 활성 사용자(WAU) 증가율 |
| 총 페이지뷰 | 코호트별 전환율 |
| 총 다운로드 수 | 고객 생애 가치(LTV) |
| "좋은 느낌" | 구체적 행동 데이터 |

### Actionable Metrics의 3A 기준
- **Actionable (실행가능)** — 원인-결과가 명확해서 다음 행동을 결정할 수 있는가?
- **Accessible (접근가능)** — 팀 전체가 쉽게 이해하고 접근할 수 있는가?
- **Auditable (감사가능)** — 데이터가 실제 사용자 행동에서 나온 것인가?

---

## 6. Pivot Types (피벗 유형 10가지)

피벗은 **실패가 아니라 전략적 방향 전환**이다. "한 발은 고정하고, 다른 발로 새 방향을 탐색한다."

| # | Pivot Type | Description | Example |
|---|-----------|-------------|---------|
| 1 | **Zoom-in (확대)** | 기능 하나가 전체 제품이 됨 | Burbn의 사진 기능 → Instagram |
| 2 | **Zoom-out (축소)** | 전체 제품이 큰 제품의 기능이 됨 | 단일 기능 → 플랫폼의 일부 |
| 3 | **Customer Segment (고객군)** | 같은 제품, 다른 고객군으로 전환 | 기업용 → 개인용 또는 그 반대 |
| 4 | **Customer Need (고객 니즈)** | 같은 고객, 다른 문제 해결 | Potbelly — 골동품점 → 샌드위치점 |
| 5 | **Platform (플랫폼)** | 앱 → 플랫폼 또는 플랫폼 → 앱 | 단일 서비스 → 마켓플레이스 |
| 6 | **Business Architecture (사업구조)** | 고마진 소량 ↔ 저마진 대량 | B2B ↔ B2C 전환 |
| 7 | **Value Capture (수익모델)** | 수익화 방식 변경 | 유료 → 프리미엄, 구독 → 광고 |
| 8 | **Engine of Growth (성장 엔진)** | 바이럴 ↔ 유료 ↔ 고착성 전환 | 유료 마케팅 → 입소문 모델 |
| 9 | **Channel (채널)** | 유통/판매 채널 변경 | 직접 판매 → 온라인 → 파트너 |
| 10 | **Technology (기술)** | 같은 솔루션, 다른 기술로 구현 | 기존 기술 → AI/클라우드 전환 |

### Pivot Decision Framework (피벗 의사결정)
```
현재 전략이 작동하는가?
    │
    ├── YES → Persevere (지속) → 엔진 최적화
    │
    └── NO → 충분히 실험했는가?
              │
              ├── NO → 더 실험 (Iterate)
              │
              └── YES → PIVOT
                        → 어떤 유형의 피벗?
                        → 새로운 가설 수립
                        → BML 루프 재시작
```

---

## 7. Three Engines of Growth (3가지 성장 엔진)

모든 비즈니스는 하나의 주된 성장 엔진에 의존한다. 한 번에 **하나의 엔진에 집중**하라.

### Engine 1: Sticky (고착성 엔진)

> 핵심: 기존 고객을 유지하는 것

| Metric | Formula |
|--------|---------|
| **이탈률 (Churn Rate)** | 이탈 고객 / 전체 고객 |
| **성장 조건** | 신규 고객 확보율 > 이탈률 |
| **핵심 지표** | 리텐션, DAU/MAU, 재구매율 |

전략: 제품 품질, 고객 경험, 전환 비용 강화

### Engine 2: Viral (바이럴 엔진)

> 핵심: 사용자가 자연스럽게 다른 사용자를 데려오는 것

| Metric | Formula |
|--------|---------|
| **바이럴 계수 (Viral Coefficient)** | 기존 사용자 × 초대 수 × 전환율 |
| **성장 조건** | 바이럴 계수 > 1.0 |
| **핵심 지표** | 초대율, 공유율, K-factor |

전략: 제품 내 공유 메커니즘, 네트워크 효과, 추천 인센티브

### Engine 3: Paid (유료 엔진)

> 핵심: 돈을 써서 고객을 확보하되, 수지가 맞아야 한다

| Metric | Formula |
|--------|---------|
| **CAC (고객획득비용)** | 마케팅 비용 / 신규 고객 수 |
| **LTV (고객생애가치)** | 평균 매출 × 마진율 × 이용 기간 |
| **성장 조건** | LTV > CAC (최소 3배 이상 권장) |
| **핵심 지표** | CAC, LTV, LTV/CAC ratio, Payback period |

전략: 마진 극대화, CAC 절감, 고객 생애 연장

---

## 8. Lean Canvas vs Business Model Canvas

### Lean Canvas (Ash Maurya, 린 캔버스)

린 스타트업에 최적화된 1-page 사업 모델. BMC에서 불확실성이 높은 항목을 대체.

```
┌──────────────┬──────────────┬──────────────┬──────────────┬──────────────┐
│  2. PROBLEM  │  4. SOLUTION │  3. UVP      │  9. UNFAIR   │  1. CUSTOMER │
│  (문제)       │  (솔루션)     │  (고유가치    │   ADVANTAGE  │   SEGMENTS   │
│              │              │   제안)       │  (경쟁우위)   │  (고객군)     │
│  Top 3       │  Top 3       │              │              │              │
│  problems    │  features    │  Single,     │  Can't be    │  Target      │
│              │              │  clear,      │  easily      │  customers   │
│  Existing    │              │  compelling  │  copied or   │              │
│  alternatives│              │  message     │  bought      │  Early       │
│              │              │              │              │  adopters    │
├──────────────┼──────────────┴──────────────┼──────────────┼──────────────┤
│  8. KEY      │  5. CHANNELS                │              │              │
│   METRICS    │  (채널)                      │              │              │
│  (핵심지표)   │  Path to customers          │              │              │
├──────────────┼─────────────────────────────┴──────────────┴──────────────┤
│  7. COST     │  6. REVENUE STREAMS                                      │
│  STRUCTURE   │  (수익 흐름)                                               │
│  (비용 구조)  │  Revenue model, LTV, Revenue, Gross margin               │
└──────────────┴──────────────────────────────────────────────────────────┘
```

### Lean Canvas vs BMC (비교)

| Lean Canvas (린 캔버스) | Business Model Canvas (BMC) |
|------------------------|---------------------------|
| Problem (문제) | ← 없음 (BMC에 없는 항목) |
| Solution (솔루션) | ← 없음 |
| Key Metrics (핵심지표) | ← 없음 |
| Unfair Advantage (경쟁우위) | ← 없음 |
| 없음 → | Key Partners (핵심 파트너) |
| 없음 → | Key Activities (핵심 활동) |
| 없음 → | Key Resources (핵심 자원) |
| 없음 → | Customer Relationships (고객 관계) |

> **언제 Lean Canvas?** — 초기 스타트업, 새 사업, 높은 불확실성
> **언제 BMC?** — 기존 사업 분석, 파트너/자원이 중요한 모델

---

## 9. Output Format (출력 형식)

### Full Analysis (`/think:lean-startup`)

```
🔬 Lean Startup Analysis: [사업/제품명]

📋 Current Stage (현재 단계)
• Problem-Solution Fit / Product-Market Fit / Scale
• 현재 BML 루프 상태

🎯 Leap-of-Faith Assumptions (핵심 가정)
• Value Hypothesis: ...
• Growth Hypothesis: ...

🧪 Experiment Design (실험 설계)
| # | Hypothesis | MVP Type | Metric | Threshold |
|---|-----------|----------|--------|-----------|
| 1 | ...       | ...      | ...    | ...       |

📊 Innovation Accounting (혁신 회계)
• Baseline: 현재 핵심 지표 수준
• Target: 목표 지표 수준
• Current trajectory: 피벗 or 지속?

🔄 Pivot Assessment (피벗 평가)
• 검토한 피벗 유형과 근거

📈 Growth Engine (성장 엔진)
• 권장 엔진: Sticky / Viral / Paid
• 핵심 지표 및 목표치

📝 Lean Canvas
[9칸 캔버스]

⚡ Next Actions (다음 행동)
1. 즉시 실행할 실험
2. 수집할 데이터
3. 판단 시점 (pivot-or-persevere meeting 일정)
```

### MVP Design (`/lean-startup:mvp`)

```
🛠️ MVP Design: [제품/서비스명]

🎯 Target Hypothesis (검증 가설)
• ...

📐 MVP Specification (MVP 사양)
• Type: [Concierge / Wizard of Oz / Landing Page / ...]
• Scope: 포함/제외 기능
• Timeline: 구축 예상 기간
• Cost: 예상 비용

📊 Success Criteria (성공 기준)
| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|--------------------|

🏗️ Build Plan (구축 계획)
1. ...
2. ...

⚠️ Risks & Mitigations (리스크)
• ...
```

### Pivot Decision (`/lean-startup:pivot`)

```
🔄 Pivot-or-Persevere Decision: [사업/제품명]

📊 Current Performance (현재 성과)
| Metric | Baseline | Current | Target | Gap |
|--------|----------|---------|--------|-----|

🧪 Experiments Conducted (수행한 실험)
| # | What we tried | What we learned | Impact |
|---|--------------|-----------------|--------|

🔍 Analysis (분석)
• 개선 추세가 있는가?
• 남은 실험 옵션이 있는가?
• 핵심 가정이 유효한가?

⚖️ Recommendation (권고)
• **PERSEVERE** / **PIVOT**
• 근거: ...

🔄 If Pivot (피벗 시)
• Recommended pivot type: ...
• New hypothesis: ...
• New MVP plan: ...

📅 Next Review Date (다음 검토일)
• ...
```

---

## 10. Sub-commands (하위 명령)

| Command | Description |
|---------|-------------|
| `/think:lean-startup` | Full Lean Startup analysis — 전체 분석 (가설, 실험, 회계, 캔버스) |
| `/lean-startup:mvp` | Design an MVP — MVP 설계 (유형 선택, 성공 기준, 구축 계획) |
| `/lean-startup:pivot` | Pivot-or-persevere decision — 피벗 의사결정 (성과 분석, 실험 리뷰, 권고) |

---

## References (참고 문헌)

- Eric Ries, *The Lean Startup* (2011)
- Ash Maurya, *Running Lean* (2012) — Lean Canvas 원저
- Steve Blank, *The Four Steps to the Epiphany* (2005) — Customer Development
- Eric Ries, *The Startup Way* (2017) — 대기업 적용
