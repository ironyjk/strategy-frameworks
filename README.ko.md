# 전략 프레임워크 for Claude Code

11개의 경영/전략 프레임워크를 Claude Code 스킬로 만들었습니다.
문제를 말하면 AI가 30개 도구 중 최적의 것을 골라 실행합니다.

## `/think` — 하나의 명령어로 30개 도구 사용

```
/think 경쟁사가 저가 전략으로 핵심 고객의 물량을 뺏어가고 있다. 어떻게 대응해야 하나?
```

AI가 자동으로:
1. 문제의 키워드를 감지하고
2. 최적의 프레임워크 2~3개를 선택하고
3. 순서대로 실행한 후
4. 통합 인사이트 + 구체적 액션 3개로 정리합니다

## 프레임워크 목록

### 진단 — 무엇이 문제인가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/toc` | 골드렛 | 병목 찾기, 근본원인, 갈등해결, 실행계획 | 11개 |
| `/systems-thinking` | 피터 센게 | 피드백 루프, 시스템 원형, 반복되는 문제 | 4개 |

### 해결 — 어떻게 풀 것인가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/triz` | 알트슐러 | 기술적 모순 해결, 발명 원리 | 9개 |
| `/first-principles` | 아리스토텔레스 → 머스크 | 가정 해체, 근본에서 재구성 | 3개 |

### 전략 — 어디에 집중할 것인가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/wardley` | 사이먼 워들리 | 가치사슬 맵핑, 전략 포지셔닝 | 3개 |
| `/porter` | 마이클 포터 | 산업 경쟁 분석, 경쟁우위 | 3개 |
| `/blue-ocean` | 김위찬 & 마보안 | 비경쟁 시장 창출 | 4개 |

### 혁신 — 무엇을 만들 것인가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/design-thinking` | 스탠포드 d.school | 고객 중심 혁신, 프로토타이핑 | 4개 |

### 실행 — 어떻게 할 것인가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/ooda` | 존 보이드 | 빠른 의사결정, 경쟁 대응 | 3개 |
| `/drucker` | 피터 드러커 | 목표관리(MBO), 효과적 경영자 | 4개 |

### 측정 — 잘 되고 있는가?

| 스킬 | 창시자 | 용도 | 도구 수 |
|------|--------|------|---------|
| `/bsc` | 카플란 & 노턴 | 균형성과표, 전략 실행 | 4개 |

## 설치

### 전체 설치 (30개 도구 + /think 에이전트)

```bash
cd /path/to/your/project

# 1. Strategy Frameworks (9개 + think 에이전트)
git clone https://github.com/ironyjk/strategy-frameworks.git /tmp/sf
cp -r /tmp/sf/{wardley,ooda,systems-thinking,blue-ocean,design-thinking,first-principles,porter,drucker,bsc,think} .claude/skills/

# 2. TOC Agents (11개)
git clone https://github.com/ironyjk/toc-agents.git /tmp/toc
cp -r /tmp/toc/.claude/skills/toc .claude/skills/

# 3. TRIZ Agents (9개)
git clone https://github.com/ironyjk/triz-agents.git /tmp/triz
cp -r /tmp/triz/.claude/skills/triz .claude/skills/
```

### 자동 업데이트 (권장)

프로젝트의 `CLAUDE.md`에 아래 내용을 추가하면 세션 시작 시 하루 1회 자동으로 업데이트를 체크합니다:

```markdown
## 전략 프레임워크 자동 업데이트
세션 시작 시 `bash .claude/skills/think/check-update.sh` 를 백그라운드로 실행하세요.
"updated" 결과가 나오면 사용자에게 알려주세요. 하루 1회만 체크합니다.
```

GitHub에서 새 버전이 있으면 30개 도구를 자동 업데이트합니다. 1초 이내 실행, 이미 체크했으면 스킵.

### 수동 업데이트

```bash
bash .claude/skills/think/check-update.sh
```

### 부분 설치

```bash
# 필요한 것만 설치
cp -r wardley porter .claude/skills/
```

> `/think`는 30개 도구가 모두 설치되어야 자동 라우팅이 완전히 작동합니다.

## 사용법

### 기본 사용

```
/think [문제 설명]          — 자동 분석 (분류 → 선택 → 실행 → 종합)
/think:select [문제]        — 어떤 도구를 쓸지 추천만 (실행 안 함)
/think:compare [문제]       — 2~3개 도구로 같은 문제를 풀고 비교
```

### 개별 프레임워크 직접 사용

```
/toc:crt                    — 현재현실트리 (근본원인 분석)
/triz:contradiction         — 기술적 모순 식별
/wardley                    — 워들리 맵 전체 세션
/porter:forces              — 포터 5 Forces 분석
/blue-ocean:errc            — 제거/축소/증가/창조 그리드
/ooda                       — OODA 루프 분석
/drucker:5q                 — 드러커 5가지 핵심 질문
/bsc:map                    — 전략 맵 (4관점 인과관계)
/systems-thinking:archetype — 시스템 원형 식별
/first-principles           — 제1원리에서 재구성
```

## 문제 유형별 추천 파이프라인

| 상황 | 추천 조합 |
|------|-----------|
| 사업이 안 풀린다 | TOC:CRT → TOC:EC → TOC:FRT → TOC:TT |
| 신사업을 찾고 싶다 | Porter:Forces → Blue Ocean:ERRC → Wardley → BSC |
| 제품을 혁신하고 싶다 | Design Thinking → TRIZ:Contradiction → First Principles |
| 경쟁사 위협 대응 | OODA → Porter:Forces → TOC:Five Steps |
| 전략 수립 | Drucker:5Q → Wardley:Map → BSC → Drucker:MBO |
| 운영 개선 | TOC:Five Steps → Systems Thinking → TOC:DBR |
| 뭔가 이상한데 모르겠다 | Systems Thinking:Archetype → TOC:CRT → TOC:EC |

## 관련 프로젝트

- [TOC Agents](https://github.com/ironyjk/toc-agents) — 골드렛 제약이론 11개 도구
- [TRIZ Agents](https://github.com/ironyjk/triz-agents) — 알트슐러 TRIZ 9개 도구

## 라이선스

MIT

## 만든 사람

@ironyjk × Claude Code
