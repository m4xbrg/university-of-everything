# Site Polish Pack — Install Guide

**Generated:** 2025-09-09

## Files in this pack
- `docs/index.md` — homepage with pillar tiles
- `docs/indexes/*.md` — pillar index pages
- `overrides/extra.css` — minimal styling for tiles
- `mkdocs.partial.yml` — a drop-in snippet to merge into your existing `mkdocs.yml`

## Install steps
1. Upload the **contents** of this pack to your repo root and commit to `main`.
2. Open your existing `mkdocs.yml` and copy the YAML blocks from `mkdocs.partial.yml` into it:
   - `theme` -> ensure `custom_dir: overrides`
   - `extra_css` -> add `overrides/extra.css`
   - `plugins` -> ensure the `search` plugin is present (Material includes it)
   - `nav` -> add/merge the **Home**, **Pillars**, **Assignments**, and **Rubrics** sections (adjust paths if your structure differs)
3. Push to GitHub. Pages should rebuild automatically.
4. Verify:
   - Homepage shows colorful tiles.
   - Pillar indexes list your courses and link to syllabi.
   - Search finds courses and assignments.

> Tip: If you want the **synonyms** feature for search, you can use an additional plugin or keep queries simple. The provided configuration works with Material's default search.

If you want a **fully merged `mkdocs.yml`**, paste your current file to me and I'll return a ready-to-commit version.
