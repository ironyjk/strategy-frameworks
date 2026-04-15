# Changelog

## [2.0.0] — 2026-04-15

### Added
- **17 new MBA/strategy frameworks**: bcg-matrix, mckinsey-7s, swot-pestel, ansoff-matrix, disruptive-innovation, scenario-planning, stp, marketing-mix, jtbd, bmc, kotter, okr, lean-startup, real-options, game-theory, pyramid-principle, rbv
- New categories: Market (STP, Marketing Mix), Communicate (Pyramid Principle)
- Total tools: 46 (26 strategy + TOC 11 + TRIZ 9)

### Changed
- **/think v2.0**: updated meta-router to support all 26 strategy frameworks
- install.sh, update.sh, update.bat: include all 17 new framework directories
- README.md, README.ko.md: updated framework lists, counts, architecture diagrams

## [1.1.0] — 2026-04-14

### Added
- **references/** documents for all 9 frameworks (detailed protocols, examples, anti-patterns)
- **Wardley**: Climatic Patterns (40+), Doctrine principles
- **Porter**: Diamond Model (National Competitive Advantage), 2008 HBR update
- **Blue Ocean**: Blue Ocean Shift (2017) 5-step process, Buyer Utility Map, Pioneer-Migrator-Settler Map
- **OODA**: Orient Deep Dive (Schwerpunkt, Implicit Guidance, Destruction & Creation)
- **Systems Thinking**: Stock and Flow Diagrams, System Dynamics basics
- **Design Thinking**: Quantitative validation methods (A/B, usability testing, NPS, SUS)
- **Drucker**: 7 Sources of Innovation (Innovation and Entrepreneurship, 1985)
- **BSC**: Strategy-Focused Organization 5 Principles
- **First Principles**: Historical lineage (Aristotle → Descartes → Feynman → Musk)
- **/think**: Industry-specific routing, conflict resolution, input schema, fallback strategy
- **version** field in all SKILL.md frontmatter
- CHANGELOG.md

### Changed
- All skills now include `version: "1.1.0"` in frontmatter
- Increased depth of all framework descriptions based on 4-expert review

## [1.0.0] — 2026-04-14

### Added
- Initial release: 9 strategy frameworks + /think meta-agent
- Wardley Mapping, OODA Loop, Systems Thinking, Blue Ocean Strategy
- Design Thinking, First Principles, Porter's Frameworks, Drucker MBO, BSC
- /think auto-routing across 29 tools (TOC + TRIZ + Strategy)
- README.md (English), README.ko.md (Korean)
- MIT License
