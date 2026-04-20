---
name: marketing-mix
version: "1.1.0"
description: "Marketing Mix 4P/7P Framework (McCarthy/Booms & Bitner) — Product, Price, Place, Promotion + People, Process, Physical Evidence for services. The tactical execution layer of marketing strategy."
user-invocable: false
tools: ["Read", "Write", "Edit", "Agent"]
---

# Marketing Mix 4P/7P Framework

마케팅 믹스 — 마케팅 전략의 **전술적 실행 계층(tactical execution layer)**.

> Background and theory: Read references/foundation.md

---

## Execution Protocol

### Step 1: Scope Identification
- 대상 기업/제품/서비스 파악
- 산업군 (제조업/서비스업/B2B/B2C)
- 분석 목적 (신규 론칭 / 기존 점검 / 경쟁 비교)

### Step 2: 4P Analysis
각 P에 대해 현황 + 강점/약점 + 개선 기회를 평가:

**Product**: 핵심 편익, 제품 라인, 차별화, PLC 단계
**Price**: 가격 전략, 경쟁사 대비, 탄력성 추정
**Place**: 채널 전략 (집중/선택/전속), 디지털 비중
**Promotion**: IMC 전략, 주요 수단, 핵심 메시지, 디지털 전략

### Step 3: 7P Extension (서비스업)
서비스 요소가 있으면 확장:

**People**: 핵심 인력, 교육/역량, MOT 관리
**Process**: 서비스 흐름, 표준화 수준, 디지털화
**Physical Evidence**: 서비스스케이프, 유형적 단서

### Step 4: 4C Cross-Validation
4P를 고객 관점(4C)으로 교차 검증:

| 4P | 4C 관점 평가 | 개선 기회 |
|----|-------------|----------|

### Step 5: Coherence Check
- 4P/7P 요소 간 내적 일관성
- STP(세분화-타겟팅-포지셔닝)와의 정렬

---

## Output Format

```markdown
# 마케팅 믹스 분석: {기업/제품명}

## 분석 개요
- 대상: {분석 대상}
- 산업: {산업군}
- 목적: {분석 목적}

## Product (제품)
- 핵심 편익:
- 제품 라인:
- 차별화 요소:
- PLC 단계:

## Price (가격)
- 가격 전략:
- 가격대:
- 경쟁사 대비:
- 탄력성 추정:

## Place (유통)
- 채널 전략:
- 주요 채널:
- 커버리지:
- 디지털 비중:

## Promotion (촉진)
- IMC 전략:
- 주요 수단:
- 핵심 메시지:
- 디지털 전략:

## People (해당 시)
- 핵심 인력:
- 교육/역량:
- MOT 관리:

## Process (해당 시)
- 서비스 흐름:
- 표준화 수준:
- 디지털화:

## Physical Evidence (해당 시)
- 서비스스케이프:
- 유형적 단서:

## 4C 검증
| 4P | 4C 관점 평가 | 개선 기회 |
|----|-------------|----------|

## 핵심 권고사항
1.
2.
3.
```

---

## Anti-Patterns

1. **4P만 나열하고 일관성 미검증** — 7P 간 coherence가 핵심
2. **기업 관점에만 매몰** — 반드시 4C 렌즈로 교차 검증
3. **서비스업에 4P만 적용** — IHIP 특성 존재 시 7P 필수
4. **PLC 단계 무시** — 동일 제품도 단계별로 전략이 달라야 함

---

## Sub-Commands

### `/think:marketing-mix` — Full 7P Analysis
전체 7P 마케팅 믹스 분석. 서비스업 포함 모든 산업에 적용.

**절차**:
1. 대상 기업/제품/서비스 파악
2. 4P 각각에 대한 현황 분석
3. 서비스 요소 존재 시 7P 확장 분석
4. 4C 관점 교차 검증
5. 마케팅 믹스 일관성(coherence) 평가
6. 핵심 권고사항 도출

### `/think:marketing-mix:4p` — 4P Product-Focused Analysis
제품(유형재) 중심의 4P 분석. 제조업, 소비재, B2B 제품에 최적화.

**초점**:
- 제품 3계층 심층 분석
- PLC 단계 판단 및 전략 제안
- 제품 믹스(폭/깊이/길이) 평가
- 가격-품질 매트릭스 매핑
- 유통 채널 효율성

### `/think:marketing-mix:service` — Service-Specific 7P Analysis
서비스업 특화 7P 분석. IHIP 특성(무형성, 이질성, 비분리성, 소멸성) 중심.

**초점**:
- 서비스 청사진 작성
- MOT(Moment of Truth) 식별 및 관리
- 서비스 품질 갭 모델 (SERVQUAL)
- People/Process/Physical Evidence 심층 분석
- 서비스 이익 사슬 평가

### `/think:marketing-mix:audit` — Marketing Mix Audit
현재 마케팅 믹스의 정합성(coherence)과 효과성을 감사.

**감사 항목**:
1. **내적 일관성**: 4P/7P 요소 간 정합성 (가격↔포지셔닝, 유통↔타겟 등)
2. **외적 적합성**: 시장 환경, 경쟁 상황, 고객 니즈와의 적합도
3. **전략 정렬**: STP(세분화-타겟팅-포지셔닝)와의 정렬
4. **갭 분석**: 현재 상태 vs 이상적 상태
5. **우선순위 매트릭스**: 영향도 x 실행 용이성 기반 개선 우선순위

**출력**: 4P/7P 각 요소별 점수(1~5), 일관성 매트릭스, 개선 로드맵

---

## When to Use

- 신규 제품/서비스 론칭 전 전술 설계
- 기존 마케팅 전략 점검 및 감사
- 경쟁사 마케팅 벤치마킹
- STP 전략 수립 후 실행 계획

## Companion Frameworks

- **STP** — 세분화/타겟팅/포지셔닝 (마케팅 믹스의 상위 전략)
- **BMC** — 비즈니스 모델 전체 설계
- **Porter** — 산업/경쟁 분석 (마케팅 환경 파악)
