---
title: SCHEMA
type: config
tags: [wiki, config]
---

# Knowledge Wiki: the rules

This file governs everything under `wiki/`. The `wiki` skill reads it before every operation.
Four rules, then the shapes.

1. **One topic per page.** `wiki/pages/<topic>.md`, short lowercase-dash filenames
   (`supplier-pricing.md`, not `Supplier Pricing Notes FINAL.md`).
2. **Everything is linked.** Every page carries YAML `tags:`, `[[wikilinks]]` to related pages,
   and one line in `wiki/index.md`. Obsidian draws the graph from these links, an unlinked page
   is invisible.
3. **Facts carry provenance.** A claim from outside gets its source: a URL, a `sources:` entry
   pointing into `wiki/raw/`, or "told by X, <date>".
4. **Synthesis, not transcription.** Distil what a source means for *this* business. A page that
   just restates the article has failed.

## Folders

| Path | What lives here |
|---|---|
| `wiki/index.md` | The catalog. One line per page. Read this first on any question. |
| `wiki/log.md` | The timeline. Append-only record of every ingest / query / lint. |
| `wiki/pages/` | The knowledge itself. One topic per file. |
| `wiki/raw/` | Immutable original sources, `YYYY-MM-DD-slug.ext`. Never edited. |

## Page template

```markdown
---
tags: [<area>, <type>]
sources: [raw/2026-01-15-supplier-email.pdf]
---
# <Topic>

<the knowledge, short, factual, and about what it means for the business>

## Related
- [[<other-page>]]
```

## Log entry format

Always this shape, so the timeline stays greppable:

```markdown
## [YYYY-MM-DD] ingest | <title>
<one or two lines: what came in, which pages it touched>
```

Types: `ingest` · `query` · `lint`.

## Tags

Keep them few and reusable. A tag used once is noise. Start with an area (`clients`,
`operations`, `marketing`, `finance`) and add a type when it helps (`concept`, `source`,
`person`). Prune during lint.

## What this layer never touches

`tasks/` · `projects/` · `decisions/` · `templates/` · `connections.md`. Those are the
operational OS and they have their own owners. The wiki is knowledge only.
