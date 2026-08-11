---
title: EXPANSIONS
type: guide
tags: [structure, hygiene]
---

# EXPANSIONS: what to add as you grow, and what never to add

The kit ships lean on purpose. As you use it you will outgrow the base. This file says what to
add, when, and why. Three skills read it before creating any folder: `capture`, `raw-ingest`,
and `os-map`.

**Your OS should look like a small, well-run business. Not a hoarder's basement.**

## What ships (don't remove)

| Folder or file | Purpose |
|---|---|
| `CLAUDE.md` | The operating manual. Filled by `onboard`. Edit when your role or voice changes. |
| `context/` | Who you are, the business, priorities, `brand.json`. Read at the start of a session. |
| `tasks/todo.md` | The running task list. Owned by the `tasks` skill. |
| `projects/` | One card per client or project. Cards, not code. |
| `decisions/log.md` | Append-only record of what was decided and why. |
| `sessions/` | End-of-session handoffs. `index.md` is the catalog a fresh session reads. |
| `wiki/` | The knowledge base. Governed by `wiki/SCHEMA.md`. |
| `references/` | Frameworks, your writing voice, tool and API notes you wrote yourself. |
| `templates/` | Reusable documents such as invoices, quotations, briefs. |
| `connections.md` | Registry of every system this OS can reach. |
| `archives/` | Old files. Never delete, move here. |
| `Transition/` | The drop zone. Keep it empty. `RAW/` inside it stages web clips. |
| `.claude/skills/` | Your skills. Add more with Skill Creator or the `level-up` run. |

## What to add as you grow

| Folder or file | Add when | Why |
|---|---|---|
| `references/sops/` | You document how a recurring process runs | Standard procedures the OS reads to run things the same way twice |
| `references/{tool}-api.md` | You connect a new API or MCP and work out how it behaves | Researched once, saved forever. Future work does not re-research it. |
| `brand-assets/` | You start producing visual content | Centralizes logos, palettes, fonts so the OS stops guessing |
| `scripts/` | You write small scripts to reach an API no connector covers | Most people's second connection is a script, not an MCP |
| `.claude/agents/` | You need a sub-assistant for repeatable multi-step research | Agents run in their own context, keeping your main session lean |
| A sub-OS folder | You have a whole vertical with its own data and workflows | Isolation pattern. The vertical gets its own scoped manual and skills. |

## What NOT to add

These look helpful and rot the structure:

- **Don't dump raw email, chat exports, or clipped articles into `references/` or `context/`.**
  Interpreted facts only. Raw sources belong in `wiki/raw/`, distilled into `wiki/pages/`.
- **Don't build folders inside folders for the look of organization.** Flat with good names beats
  deep nesting. If you need a hierarchy to find something, you have a search problem, not an
  organization problem.
- **Don't add `notes/`, `misc/`, `tmp/`, or `inbox/`.** They are graveyards. If it is old, use
  `archives/`. If it is new, write a real file in the right place.
- **Don't pre-create folders you don't need yet.** Empty folders are noise. Your AI will tell you
  when it is time.
- **Don't run two homes for the same thing.** One task list, one decisions log, one knowledge
  base. If you catch yourself keeping notes in two places, consolidate before it compounds.
- **Don't fork your operating manual.** One `CLAUDE.md` at the root. A sub-OS folder may carry
  its own scoped manual, but the root one is canonical.
- **Don't keep a list of your skills in a document.** The installed skills are the list. Any copy
  goes stale the moment you add one.

## How to tell when it is time to add a folder

Three questions:

1. **Is this conceptually new?** Or does it fit somewhere that already exists?
2. **Will I touch it three or more times in the next month?** If not, it is premature.
3. **Would a future skill route into it naturally?** If yes, the OS will use it. If no, you are
   organizing for yourself, not for the system.

Two yeses means add it. One yes means wait.

## Connected
- [[CLAUDE]]
- [[OS-INDEX]]
- [[SCHEMA]]
