# 전략 프레임워크 for Claude Code

46개 경영/전략 프레임워크, 4개 진입점.
문제를 말하면 AI가 최적의 도구를 골라 실행합니다.

## `/think` — 하나의 명령어로 46개 도구 사용

```
/think 경쟁사가 저가 전략으로 핵심 고객의 물량을 뺏어가고 있다. 어떻게 대응해야 하나?
```

AI가 자동으로:
1. 문제의 키워드를 감지하고
2. 최적의 프레임워크 2~3개를 선택하고
3. 순서대로 실행한 후
4. 통합 인사이트 + 구체적 액션 3개로 정리합니다

## 명령어

| 명령어 | 설명 |
|--------|------|
| `/think` | 전체 자동 라우팅: 분류 → 선택 → 실행 → 종합 |
| `/think:select` | 프레임워크 추천만 (실행 안 함) |
| `/think:compare` | 같은 문제를 2~3개 프레임워크로 풀고 비교 |
| `/toc` | 제약이론 — 10개 서브 도구 직접 접근 |
| `/triz` | TRIZ 체계적 혁신 — 9개 서브 도구 직접 접근 |

### TOC 서브커맨드

| 명령어 | 도구 |
|--------|------|
| `/toc:crt` | 현재현실나무 — 근본 원인 분석 |
| `/toc:ec` | 증발구름 — 갈등 해소 |
| `/toc:frt` | 미래현실나무 — 솔루션 검증 |
| `/toc:tt` | 전환나무 — 실행 계획 |
| `/toc:prt` | 선행조건나무 — 장애물 매핑 |
| `/toc:five-steps` | 5단계 집중 프로세스 — 병목 찾기 |
| `/toc:dbr` | DBR — 스케줄링 |
| `/toc:ccpm` | 크리티컬 체인 — 프로젝트 관리 |
| `/toc:throughput` | 쓰루풋 회계 — 투자 의사결정 |
| `/toc:buy-in` | 저항의 층 — 변화 관리 |

### TRIZ 서브커맨드

| 명령어 | 도구 |
|--------|------|
| `/triz:contradiction` | 기술적/물리적 모순 식별 |
| `/triz:matrix` | 모순 매트릭스 → 발명 원리 |
| `/triz:40p` | 40가지 발명 원리 |
| `/triz:ifr` | 이상적 최종 결과 (IFR) |
| `/triz:ariz` | ARIZ — 완전한 발명적 문제 해결 |
| `/triz:sufield` | 물질-장 분석 |
| `/triz:resources` | 숨겨진 자원 발견 |
| `/triz:trimming` | 트리밍 — 컴포넌트 제거로 단순화 |
| `/triz:evolution` | 기술 시스템 진화 법칙 |

## 전체 46개 프레임워크

### 진단 — 무엇이 문제인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **TOC** (10개 도구) | 골드렛 | 병목 찾기, 근본원인, 갈등해결, 실행계획 |
| **시스템 사고** | 피터 센게 | 피드백 루프, 시스템 원형, 반복되는 문제 |
| **SWOT + PESTEL** | 다수 | 내부 강약점 + 거시환경 스캐닝 |
| **McKinsey 7S** | 피터스 & 워터만 | 조직 정렬, 변화관리, M&A |

### 해결 — 어떻게 풀 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **TRIZ** (9개 도구) | 알트슐러 | 기술적 모순 해결, 발명 원리 |
| **제1원리** | 아리스토텔레스 → 머스크 | 가정 해체, 근본에서 재구성 |
| **게임이론** | 내쉬, 폰 노이만 | 경쟁 상호작용, 경쟁사 행동 예측 |
| **실물옵션** | 마이어스 | 불확실성 하 투자, 유연성 가치평가 |

### 전략 — 어디에 집중할 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **Wardley Mapping** | 사이먼 워들리 | 가치사슬 맵핑, 전략 포지셔닝 |
| **포터** | 마이클 포터 | 산업 경쟁 분석, 경쟁우위 |
| **블루오션** | 김위찬 & 마보안 | 비경쟁 시장 창출 |
| **BCG 매트릭스** | BCG | 포트폴리오 관리, 자원 배분 |
| **앤소프 매트릭스** | 이고르 앤소프 | 성장 전략, 시장/제품 확장 |
| **RBV** | 바니 & 베르너펠트 | 내부 자원, VRIO, 지속가능한 우위 |
| **시나리오 플래닝** | Shell/슈워츠 | 전략적 선견, 복수 미래 시나리오 |
| **파괴적 혁신** | 크리스텐슨 | 시장 파괴 예측/대응 |

### 혁신 — 무엇을 만들 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **디자인 씽킹** | 스탠포드 d.school | 고객 중심 혁신, 프로토타이핑 |
| **JTBD** | 크리스텐슨/울윅 | 고객이 제품을 "고용"하는 이유 이해 |
| **린 스타트업** | 에릭 리스 | Build-Measure-Learn, MVP, 검증된 학습 |
| **BMC** | 오스터왈더 | 비즈니스 모델 설계, 9개 빌딩 블록 |

### 마케팅 — 고객에게 어떻게 도달할 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **STP** | 코틀러 | 시장세분화, 타겟팅, 포지셔닝 |
| **마케팅 믹스 4P/7P** | 매카시 | 제품, 가격, 유통, 촉진 전술 |

### 실행 — 어떻게 할 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **OODA Loop** | 존 보이드 | 빠른 의사결정, 경쟁 대응 |
| **드러커** | 피터 드러커 | 목표관리(MBO), 효과적 경영자 |
| **코터** | 존 코터 | 8단계 조직 변화 관리 |
| **OKR** | 인텔/구글 | 목표 설정, 정렬, 측정가능한 핵심 결과 |

### 측정 — 잘 되고 있는가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **BSC** | 카플란 & 노턴 | 균형성과표, 전략 실행 |

### 커뮤니케이션 — 어떻게 전달할 것인가?

| 프레임워크 | 창시자 | 용도 |
|-----------|--------|------|
| **피라미드 원칙** | 바바라 민토 | 탑다운 구조화 커뮤니케이션, 경영진 보고 |

## 구조

```
/think (메타 라우터 — 사용자 직접 호출)
├── 26개 전략 프레임워크 (내부용, /think이 자동 선택)
│   ├── wardley, ooda, systems-thinking
│   ├── blue-ocean, design-thinking, first-principles
│   ├── porter, drucker, bsc
│   ├── bcg-matrix, mckinsey-7s, swot-pestel, ansoff-matrix
│   ├── disruptive-innovation, scenario-planning, stp, marketing-mix
│   ├── jtbd, bmc, kotter, okr, lean-startup
│   └── real-options, game-theory, pyramid-principle, rbv
├── /toc (직접 호출 가능 + 10개 서브커맨드)
│   └── crt, ec, frt, tt, prt, five-steps, dbr, ccpm, throughput, buy-in
└── /triz (직접 호출 가능 + 9개 서브커맨드)
    └── contradiction, matrix, 40p, ifr, ariz, sufield, resources, trimming, evolution
```

26개 전략 프레임워크는 `user-invocable: false`로 설정되어 슬래시 메뉴에 나타나지 않지만, `/think`가 내부적으로 Skill 도구를 통해 호출합니다. TOC와 TRIZ는 파워 유저가 특정 도구를 직접 사용할 수 있도록 직접 접근을 유지합니다.

## 설치

### 전체 설치 (46개 도구 + /think 에이전트)

```bash
cd /path/to/your/project
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash
```

또는 수동:

```bash
cd /path/to/your/project

# 1. Strategy Frameworks (26개 + think 에이전트)
git clone https://github.com/ironyjk/strategy-frameworks.git /tmp/sf
cp -r /tmp/sf/{wardley,ooda,systems-thinking,blue-ocean,design-thinking,first-principles,porter,drucker,bsc,bcg-matrix,mckinsey-7s,swot-pestel,ansoff-matrix,disruptive-innovation,scenario-planning,stp,marketing-mix,jtbd,bmc,kotter,okr,lean-startup,real-options,game-theory,pyramid-principle,rbv,think} .claude/skills/

# 2. TOC Agents (10개 서브 도구)
git clone https://github.com/ironyjk/toc-agents.git /tmp/toc
cp -r /tmp/toc/.claude/skills/toc .claude/skills/

# 3. TRIZ Agents (9개 서브 도구)
git clone https://github.com/ironyjk/triz-agents.git /tmp/triz
cp -r /tmp/triz/.claude/skills/triz .claude/skills/
```

### 자동 업데이트 (권장)

```bash
# 설치 시 자동 등록
curl -fsSL https://raw.githubusercontent.com/ironyjk/strategy-frameworks/master/install.sh | bash -s -- --with-hook
```

또는 `.claude/settings.local.json`에 수동 등록:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/skills/think/check-update.sh &"
          }
        ]
      }
    ]
  }
}
```

`&`로 백그라운드 실행. 하루 1회만 체크, 네트워크 에러 시 조용히 스킵.

### 부분 설치

```bash
# 필요한 것만 설치
cp -r wardley porter .claude/skills/
```

> `/think`는 46개 도구가 모두 설치되어야 자동 라우팅이 완전히 작동합니다.

### 다른 플랫폼에서 사용

SKILL.md와 references/ 파일은 표준 마크다운이므로 어떤 LLM에서든 사용할 수 있습니다.

**Cursor** — `cat wardley/SKILL.md >> .cursorrules`

**ChatGPT** — Knowledge 파일로 업로드, think/SKILL.md를 Instructions로

**Gemini** — System Instructions에 붙여넣기

**오픈소스 LLM** — system prompt로 전달

**사람이 직접 참고** — `references/` 문서는 AI 없이도 독립적으로 사용 가능

## 문제 유형별 추천 파이프라인

| 상황 | 추천 조합 |
|------|-----------|
| 사업이 안 풀린다 | TOC:CRT → TOC:EC → TOC:FRT → TOC:TT |
| 신사업을 찾고 싶다 | Porter:Forces → Blue Ocean:ERRC → Wardley → BSC |
| 제품을 혁신하고 싶다 | Design Thinking → TRIZ:Contradiction → First Principles |
| 경쟁사 위협 대응 | OODA → Porter:Forces → TOC:Five Steps |
| 전략 수립 | Drucker:5Q → Wardley:Map → BSC → Drucker:MBO |
| 운영 개선 | TOC:Five Steps → Systems Thinking → TOC:DBR |
| 뭔가 이상한데 모르겠다 | Systems Thinking → TOC:CRT → TOC:EC |

## 관련 프로젝트

- **[TOC Agents](https://github.com/ironyjk/toc-agents)** — 골드렛 제약이론 10개 도구
- **[TRIZ Agents](https://github.com/ironyjk/triz-agents)** — 알트슐러 TRIZ 9개 도구
- **[HowToTalk](https://github.com/ironyjk/howtotalk)** — 커뮤니케이션 프레임워크 13개 + 자동 라우팅

## 라이선스

MIT

## 만든 사람

@ironyjk × Claude Code
