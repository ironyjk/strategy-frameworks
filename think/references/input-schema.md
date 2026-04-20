# Input Schema Standard

All frameworks accept problem descriptions in natural language. `/think` normalizes input as:
```
{
  problem: "description",
  industry: "auto-detected",
  scope: "org/team/personal",
  urgency: "crisis/planning/exploration"
}
```

- **industry**: Auto-detected from keywords, company context, or explicitly stated. Used for Industry-Specific Routing.
- **scope**: Determines how many frameworks to apply (personal = 1, org = 2-3)
- **urgency**: Crisis -> fast frameworks (OODA, TOC:Five Steps); Planning -> comprehensive (Porter, BSC, Wardley); Exploration -> creative (Blue Ocean, Design Thinking, TRIZ)
