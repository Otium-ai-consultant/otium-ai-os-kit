---
name: wiki
description: >-
  The user's long-term knowledge base — an LLM-maintained second brain. Use whenever they add a
  source, ask a knowledge question, or want the knowledge base tidied — or say "ingest", "ingest
  this", "add source", "masukin ke wiki", "ask the wiki", "tanya wiki", "query the wiki", "lint
  the wiki", "cek wiki", "second brain", "knowledge base", or drop long-form notes / articles /
  clips meant to be remembered. Owns the wiki/ layer only: ingest (read source → distil →
  integrate across pages → update index + log), query (read index → drill → synthesize with
  citations → file good answers back), lint (find contradictions, stale claims, orphans, gaps).
  Reads wiki/SCHEMA.md first and follows it exactly. Never touches tasks, calendar, or projects.
---

# wiki — the second brain

You maintain the user's knowledge wiki under `wiki/`. **Before doing anything, read
`wiki/SCHEMA.md` in full** — it is the governing config (folder convention, page anatomy, tags,
the three operations). This skill is the quick reference; SCHEMA.md is the law.

This wiki is plain markdown maintained by you, not by a build script. There is nothing to
compile and no command to run — you write the pages, you keep `wiki/index.md` honest.

## Pick the operation

- New source / "ingest" / "remember this" / a clip dropped in `Transition/` → **INGEST**
- A knowledge question / "ask the wiki" → **QUERY**
- "lint" / "is the wiki healthy" / periodic check → **LINT**

## INGEST (make a todo per step)

1. Put the raw source in `wiki/raw/` (immutable, `YYYY-MM-DD-slug.ext`, keep the source URL).
   Never edit a raw source. If it came from `Transition/`, **move** it — don't copy — so the
   drop zone ends up empty.
2. Read it (text first; view key images separately if any).
3. Tell the user the 1–3 key takeaways. Confirm emphasis before heavy filing.
4. Write or refresh the per-source page in `wiki/pages/` with `sources: [raw/<file>]` in
   frontmatter.
5. **Integrate across the wiki** — update every existing page the source touches. Strengthen,
   revise, or challenge what's already written. Flag contradictions inline with ⚠ rather than
   silently overwriting.
6. Add or update the page's line in `wiki/index.md`, then append an `ingest` entry to
   `wiki/log.md`.
7. Cross-link with basename `[[wikilinks]]` and correct `tags:`. End every touched page with a
   `## Related` section so nothing is orphaned.

## QUERY

1. Read `wiki/index.md` → find candidate pages → drill in (and follow their `## Related` links).
2. Synthesize with citations to the pages and raw sources you used. Output form fits the
   question (prose, table, or list).
3. **File worthwhile answers back** as a new page, add it to `wiki/index.md`, and append a
   `query` entry to `log.md`. Explorations compound — an answer you don't file is one you'll
   pay for twice.

## LINT

Walk the wiki and report what needs a human judgment call:

- Pages missing from `wiki/index.md` (orphans), and index lines pointing at files that no longer exist
- Contradictions between pages, and claims that have gone stale
- Frontmatter gaps (no `tags:`, no `sources:` on a page that makes outside claims)
- Concepts mentioned repeatedly but never given their own page
- Pages with no `## Related` links — dead ends in the graph

Fix what's mechanical, ask about what isn't, then append a `lint` entry to `log.md`.

## Hard rules

- **Knowledge layer only.** Never restructure or move the user's operational files — `tasks/`,
  `projects/`, `decisions/`, `templates/` — unless they explicitly ask you to fold that content
  into the wiki as a source.
- **Synthesis, not transcription.** A page that just restates the article is a failed page.
  Cite every non-obvious claim.
- **Voice:** calm, substantive, concise. Match the user's language.
- `wiki/log.md` entries always start `## [YYYY-MM-DD] <type> | <title>` so the timeline stays
  greppable.

## Starting state

A fresh install of this wiki is **empty on purpose**. `wiki/index.md` and `wiki/log.md` have
their headers ready but no entries; `wiki/pages/` and `wiki/raw/` are empty. The first time the
user drops a source or asks you to remember something, that's your first INGEST — build the
catalog and timeline from there. Never invent placeholder content to make it look populated.

## The payoff moment

After a few ingests, point the user at Obsidian: open this folder as a vault and the graph view
shows their knowledge connecting up. That's the moment the wiki stops being a chore.
