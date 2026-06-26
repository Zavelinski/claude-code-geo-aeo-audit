# geo-aeo-audit for Claude Code

[![License: MIT](https://img.shields.io/github/license/Zavelinski/claude-code-geo-aeo-audit)](LICENSE)
[![Stars](https://img.shields.io/github/stars/Zavelinski/claude-code-geo-aeo-audit?style=flat)](https://github.com/Zavelinski/claude-code-geo-aeo-audit/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/Zavelinski/claude-code-geo-aeo-audit)](https://github.com/Zavelinski/claude-code-geo-aeo-audit/commits)
[![Claude Code skill](https://img.shields.io/badge/Claude%20Code-skill-8A2BE2)](https://claude.com/claude-code)

A [Claude Code](https://claude.com/claude-code) skill that audits a page for **citability by AI answer engines** — ChatGPT, Perplexity, Google AI Overviews, Gemini, Copilot — and gives you the exact structure to add so they can quote you.

Classic SEO optimizes to **rank**. GEO/AEO optimizes to be **quoted inside the answer**. This skill is scoped narrowly to that: how easily an engine can lift a correct, attributable snippet from your page.

## Prerequisites

Claude Code with `/plugin` support (v2.x+) and a shell if you use the manual fallback.

## Install

### Option 1 — Claude Code plugin marketplace (recommended)

```bash
/plugin marketplace add Zavelinski/claude-code-skills
/plugin install geo-aeo-audit@claude-code-skills
```

Registered hooks (if any) install through the Claude Code consent UI, with no manual edit to `~/.claude/settings.json`.

### Option 2 — Manual fallback (run it yourself)

> **Security note.** This script mutates `~/.claude/settings.json` directly. Claude Code auto-mode blocks it because a third-party `UserPromptSubmit` hook that injects text into every prompt is a known risk vector. The script is benign and local-only (no network), but you must review and run it yourself. Prefer Option 1.

```bash
git clone https://github.com/Zavelinski/claude-code-geo-aeo-audit.git
cd claude-code-geo-aeo-audit
bash install.sh        # macOS / Linux
.\install.ps1          # Windows (PowerShell)
```

## Uninstall

```bash
/plugin uninstall geo-aeo-audit@claude-code-skills    # Option 1
bash uninstall.sh                                # Option 2 (or uninstall.ps1 on Windows)
```

## Update

```bash
/plugin marketplace update claude-code-skills    # Option 1
# Option 2: pull the latest commit and re-run the manual fallback.
```

## What it scores (citability rubric)

1. **Lead answer** — core question answered in the first screen, in a liftable sentence.
2. **Extractable Q&A** — self-contained answers an engine can quote whole.
3. **Sourced, dated claims** — attributable, fresh facts over vague assertions.
4. **Structured data** — correct schema.org (FAQPage, Article, HowTo, Organization).
5. **Semantic structure** — headings phrased as real questions, one idea per section.
6. **Entity clarity** — unambiguous, consistent naming an engine can resolve.
7. **Quotables** — crisp definitions and stats easy to cite verbatim.
8. **No answer-burying** — the answer isn't gated behind fluff.

## What you get

A citability score, a gap list by severity, and **paste-ready fixes**: a definition/lead block, filled-in JSON-LD, an FAQ block (drawn from your page), and heading rewrites. Optionally, a check of whether the engines cite the page today (and re-runs to track movement).

## Honest scope

GEO is an emerging, moving target — answer engines change how they select and cite sources, and no on-page change guarantees a citation. This skill maximizes how liftable and attributable your content is (the part you control). It never invents facts or fakes schema; generated FAQ/definitions must be supported by the page. Other GEO/SEO tools exist; this one is deliberately about citability mechanics, not rankings.

## License

MIT. See [LICENSE](LICENSE). Original work.

---

Part of the **[claude-code-skills](https://github.com/Zavelinski/claude-code-skills)** collection: a suite of focused, original Claude Code skills.