# Full-Stack Pack — Install Guide (2025-09-09)

## What this adds
- **mkdocs.yml** with ready nav (Pillars, Assignments → Sequences + Banks, Rubrics, Advisors, Changelog)
- **Homepage tiles**, **pillar index pages**, **tile/badge CSS**
- **Two 10-week sequences**: Multivariable Calculus, Energy Systems I
- **CI**: Deploy to GitHub Pages + Quality (link + spell checks)
- **Advisors/Pathways** and a **Changelog**

## Steps
1. Back up your current `mkdocs.yml`.
2. Copy these files into your repo root (replace if asked):
   - `mkdocs.yml`
   - `docs/index.md`, `docs/indexes/*`, `docs/advisors/pathways.md`, `docs/changelog.md`
   - `overrides/extra.css`, `docs/_includes/badges.md`
   - `.github/workflows/*`
   - `docs/assignments/sequences/multivariable-calculus/*`
   - `docs/assignments/sequences/energy-systems-1/*`
3. Commit on `main` and push.
4. Enable **GitHub Pages** → Source: GitHub Actions (or keep your existing method).
5. Verify the site builds. If strict build flags missing pages, remove them from nav or create stubs.
