---
name: lean-startup
version: "1.1.0"
description: "Lean Startup (Eric Ries) — Build-Measure-Learn loop for rapid validated learning. MVP, pivot-or-persevere decisions, innovation accounting. Reduce waste by testing assumptions before building."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Lean Startup Framework (린 스타트업)

Build-Measure-Learn loop for rapid validated learning. Test assumptions before building.

> Background and theory: Read references/foundation.md

---

## Execution Protocol

### Step 1: Stage Assessment
Determine current stage:
- **Problem-Solution Fit** — Do we understand the problem?
- **Product-Market Fit** — Does our solution resonate?
- **Scale** — Can we grow efficiently?

### Step 2: Build-Measure-Learn Loop

```
    IDEAS → BUILD (MVP) → MEASURE (data) → LEARN → repeat
```

**CRITICAL: Plan in REVERSE Order**

| Step | Execution | Planning |
|------|-----------|----------|
| 1st  | Build     | **Learn** — 무엇을 배워야 하는가? |
| 2nd  | Measure   | **Measure** — 어떤 지표로 검증? |
| 3rd  | Learn     | **Build** — 최소한 무엇을 만들면 되는가? |

### Step 3: Identify Leap-of-Faith Assumptions
- **Value Hypothesis**: 고객이 정말로 가치있게 여기는가?
- **Growth Hypothesis**: 새로운 고객이 지속적으로 유입되는가?

### Step 4: Design Experiment

```
1. HYPOTHESIS — "만약 [행동]하면, [결과]가 나올 것이다. 왜냐하면 [근거]."
2. METRIC — 무엇을 측정? 성공 기준(threshold)?
3. EXPERIMENT — 최소 비용으로 검증할 방법? MVP 유형 선택
4. RESULT — 가설 지지/기각 → Persevere / Pivot
```

### Step 5: Select MVP Type

| Type | When to Use |
|------|-------------|
| **Concierge** (컨시어지) | 고객 니즈 자체가 불확실할 때 — 사람이 직접 수행 |
| **Wizard of Oz** (마법사) | 수요 불확실, 뒷단 수동 + 앞단 자동화 |
| **Landing Page** (랜딩페이지) | 가치 제안 테스트 — 설명 + 가입 버튼만 |
| **Video** (영상) | 복잡한 제품 컨셉 검증 |
| **Piecemeal** (조합형) | 기존 도구 조합으로 빠른 프로토타입 |
| **Single-Feature** (단일기능) | 핵심 가치 가설이 명확할 때 |

**MVP 설계 원칙**:
1. 가설 하나에 집중
2. 측정 기준 먼저 정의
3. 가장 빨리 배울 수 있는 형태 선택
4. 완벽주의 경계 — MVP는 부끄러워야 정상

### Step 6: Pivot-or-Persevere Decision

```
현재 전략이 작동하는가?
    ├── YES → Persevere → 엔진 최적화
    └── NO → 충분히 실험했는가?
              ├── NO → 더 실험 (Iterate)
              └── YES → PIVOT → 새 가설 → BML 재시작
```

### Step 7: Growth Engine Selection
한 번에 **하나의 엔진에 집중**:

| Engine | 핵심 지표 | 성장 조건 |
|--------|----------|----------|
| **Sticky** (고착성) | Churn Rate, DAU/MAU | 신규 확보율 > 이탈률 |
| **Viral** (바이럴) | K-factor, 초대율 | 바이럴 계수 > 1.0 |
| **Paid** (유료) | CAC, LTV | LTV > 3x CAC |

---

## Output Format

### Full Analysis (`/think:lean-startup`)

```
Lean Startup Analysis: [사업/제품명]

Current Stage: Problem-Solution Fit / Product-Market Fit / Scale

Leap-of-Faith Assumptions
- Value Hypothesis: ...
- Growth Hypothesis: ...

Experiment Design
| # | Hypothesis | MVP Type | Metric | Threshold |
|---|-----------|----------|--------|-----------|

Innovation Accounting
- Baseline: 현재 핵심 지표
- Target: 목표 지표
- Trajectory: 피벗 or 지속?

Growth Engine: Sticky / Viral / Paid
- 핵심 지표 및 목표치

Lean Canvas [9칸]

Next Actions
1. 즉시 실행할 실험
2. 수집할 데이터
3. 판단 시점
```

### MVP Design (`/lean-startup:mvp`)

```
MVP Design: [제품/서비스명]

Target Hypothesis: ...

MVP Specification
- Type: [Concierge / Wizard of Oz / Landing Page / ...]
- Scope: 포함/제외
- Timeline / Cost

Success Criteria
| Metric | Baseline | Target | Method |
|--------|----------|--------|--------|

Build Plan: 1. ... 2. ...

Risks & Mitigations: ...
```

### Pivot Decision (`/lean-startup:pivot`)

```
Pivot-or-Persevere: [사업/제품명]

Current Performance
| Metric | Baseline | Current | Target | Gap |
|--------|----------|---------|--------|-----|

Experiments Conducted
| # | What tried | What learned | Impact |
|---|-----------|-------------|--------|

Recommendation: PERSEVERE / PIVOT
- 근거: ...
- If pivot: type, new hypothesis, new MVP plan

Next Review Date: ...
```

---

## Anti-Patterns

1. **MVP 없이 완제품 구축** — 가장 큰 낭비는 아무도 원하지 않는 것을 만드는 것
2. **허영 지표에 매몰** — 총 가입자 수 대신 코호트별 전환율 추적
3. **피벗을 실패로 인식** — 피벗은 전략적 방향 전환
4. **역순 계획 무시** — Learn → Measure → Build 순서로 계획
5. **성장 엔진 미선택** — 3가지 중 하나에 집중하지 않으면 자원 분산

---

## Sub-commands

| Command | Description |
|---------|-------------|
| `/think:lean-startup` | Full analysis — 가설, 실험, 회계, 캔버스 |
| `/lean-startup:mvp` | MVP 설계 — 유형 선택, 성공 기준, 구축 계획 |
| `/lean-startup:pivot` | 피벗 의사결정 — 성과 분석, 실험 리뷰, 권고 |

---

## When to Use

- 신규 사업/제품 기획 시 가설 검증
- 기존 사업의 신규 기능/시장 진출
- 투자 전 사업 타당성 검증
- 성장 정체 시 피벗 의사결정

## Companion Frameworks

- **BMC** — 비즈니스 모델 전체 설계 (Lean Canvas의 원본)
- **Design Thinking** — 공감/정의 단계에서 문제 발견 → Lean Startup으로 검증
- **JTBD** — 고객이 "고용"하는 직무 파악 → Value Hypothesis 강화
