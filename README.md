# geo-aeo-audit for Claude Code

A [Claude Code](https://claude.com/claude-code) skill that audits a page for **citability by AI answer engines** — ChatGPT, Perplexity, Google AI Overviews, Gemini, Copilot — and gives you the exact structure to add so they can quote you.

Classic SEO optimizes to **rank**. GEO/AEO optimizes to be **quoted inside the answer**. This skill is scoped narrowly to that: how easily an engine can lift a correct, attributable snippet from your page.

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

## Install

```bash
git clone https://github.com/Zavelinski/geo-aeo-audit.git
cd geo-aeo-audit
```

**macOS / Linux**
```bash
bash install.sh
```

**Windows (PowerShell)**
```powershell
.\install.ps1
```

Skill-only install (no hooks, no `settings.json` changes). Restart Claude Code, then ask for a **GEO audit** (or `/geo-aeo-audit <url>`).

## Honest scope

GEO is an emerging, moving target — answer engines change how they select and cite sources, and no on-page change guarantees a citation. This skill maximizes how liftable and attributable your content is (the part you control). It never invents facts or fakes schema; generated FAQ/definitions must be supported by the page. Other GEO/SEO tools exist; this one is deliberately about citability mechanics, not rankings.

## Uninstall

```bash
bash uninstall.sh      # macOS / Linux
```
```powershell
.\uninstall.ps1        # Windows
```

## License

MIT. See [LICENSE](LICENSE). Original work.
