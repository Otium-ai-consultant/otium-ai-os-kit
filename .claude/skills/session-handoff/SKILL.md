---
name: session-handoff
description: >-
  Use when the user says "session handoff", "wrap up session", "hand off", "handoff summary",
  "let's wrap up", "summarize before I clear", "simpan sesi ini", "rangkum dulu", or wants a
  structured end-of-session summary before clearing context. Produces a handoff covering
  decisions, shipped changes, key files, running state, verification steps, deferrals, and open
  questions. Output goes to chat AND is saved as a dated note in sessions/, wikilinked to every
  project note it touched, so each topic accumulates a readable history over time.
---

# Session Handoff

Produce a repeatable end-of-session summary so the user can `/clear` and start a fresh agent
without losing continuity. The next agent should be able to pick up by reading this alone.

This is a **context-handoff artifact**, not a status report. The audience is a future instance of
you, not a stakeholder. It is ALSO a **memory record**: the same content is saved as a dated note
in the vault, so the OS accumulates a searchable, linked history of what changed and why. Without
the file, the OS forgets everything the moment the window closes.

## When to invoke

The user says any of the trigger phrases above. Also invoke proactively if they say they are
about to `/clear` and have not run it yet.

## How to produce the summary

1. **Review the full conversation**, not just the last few turns. Handoffs miss things when they
   only summarize recent context.
2. **Pull state from these sources, in order:**
   - TodoWrite state: anything in progress or pending.
   - Background processes you started: shell IDs are load-bearing for the next agent.
   - Files created or modified this session. You know what you touched; do not grep to
     rediscover.
   - Unresolved questions: things you asked that never got a clear answer, or things the user
     asked that got deflected.
3. **Do NOT audit the filesystem.** This is synthesis of what happened in THIS session. No
   `git log`, no broad sweeps. If you did not touch it this session, it does not belong here.
4. **Produce the output twice, file first, then chat:**
   a. Write the note to `sessions/YYYY-MM-DD <slug>.md`.
   b. Print the same handoff in chat so the user can carry it into a fresh session immediately.

## Output template: use exactly this structure every time

```
# Session Handoff, <one-line title of what this session was about>

## Where it started
<2-3 sentences: what the user asked for, and the framing or constraints that emerged>

## Decisions locked + what shipped
- <decision or change>, <why, and where it lives>

## Key files for next session
- `<path>`: <why the next agent should read this first>

## Running state
- Background processes: <shell IDs + what they are + how to stop them>, or "none"
- Dev servers / ports: <url + port>, or "none"

## Verification: how to confirm things still work
- `<command>`: <expected outcome>

## Deferred + open questions
- Deferred: <item>, <why pushed to later>
- Open: <question needing the user's input>, <context>

## Pick up here
<1-2 sentences: the single most likely next action for a fresh agent>
```

## File output: the memory record

Every handoff is saved as **one markdown note**:

- **Path:** `sessions/YYYY-MM-DD <slug>.md`, relative to the OS root. The slug is two to four
  lowercase words naming the session's main topic. Two sessions on the same day get different
  slugs; the same topic twice in one day gets `-2`.
- **Content:** YAML frontmatter, the exact template above, then a `## Connected` section.

Frontmatter:

```yaml
---
tags:
  - session
date: YYYY-MM-DD
topics: [short, topic, keys]
---
```

**The wikilink rules are the point of the file:**

1. In the note body, reference every OS note it concerns as a `[[wikilink]]`, not a path in
   backticks. For ambiguous basenames such as a project folder's `README.md`, use a
   folder-qualified link with an alias: `[[projects/acme/README|acme]]`.
2. End the note with `## Connected`, listing every related note. This guarantees graph edges.
3. **Update the hubs.** For each project card this session materially touched, append one line
   under a `## Session Log` section, creating the section at the bottom if it is missing:
   `- [[YYYY-MM-DD <slug>]]: <one-line summary of what changed>`
   This is what makes a topic's history readable in one place: open the project card, see every
   session that moved it.
4. **Never put session notes in `wiki/`.** The wiki is knowledge only, see `wiki/SCHEMA.md`.
   `sessions/` is operational memory. It lives in the vault so Obsidian graphs it, but it is not
   wiki content.
5. **Register it in the catalog.** Add one row for the new note to `sessions/index.md`, in the
   matching topic table (create the topic section if the topic is new) AND at the top of the
   chronological table. The row is
   `[[YYYY-MM-DD <slug>]] | <date> | <last known state in one clause>`.
   This is the only file a fresh session reads to find prior work. **A handoff that is not in
   the catalog is invisible.**

## Hard rules

1. **File and chat, always both.** The note is the durable memory, the chat copy is for
   immediate continuation. Never skip either.
2. **Never invent state.** If a section has nothing to report, write "none". Do not omit the
   section. Structure stability is the whole point.
3. **If a plan drove the session, name it first** in "Key files" so the next agent reads it
   before anything else.
4. **No emoji, no hype, no "great job" summaries.** Terse and concrete: paths, commands, shell
   IDs, decisions. Write like a seasoned operator handing off at end of shift.
