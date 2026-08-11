---
name: tasks
description: >-
  The user's to-do list. Use when they add a task, ask what is on their plate, mark something
  done, mention a deadline, or say "add task", "todo", "to-do", "what's on my plate", "what
  should I do today", "tambah tugas", "tugas saya apa", "kerjaan hari ini", "sudah selesai",
  "ingetin". Owns tasks/todo.md and nothing else. Due and overdue items are also surfaced
  automatically at the start of every session per CLAUDE.md.
---

# Tasks

Single source of truth: **`tasks/todo.md`**. Nothing else tracks tasks. Match the user's
language.

## The file format: follow it exactly

```markdown
## Active

- [ ] **ID** Task in one line
  - Deadline: YYYY-MM-DD   (or, )
  - Reminders: YYYY-MM-DD, what to check that day   (or, )

## Completed
```

- **Status keys:** `[ ]` not started, `[~]` in progress, `[x]` done.
- **IDs** are short and stable, for example `SETUP-01`, `INV-03`. Never renumber existing ones.
- **Reminders** are dates the OS surfaces on the day. A task can carry several.

## Operations

- **Add.** One clean block under `## Active` with the next free ID. If they gave a date, record
  it as `Deadline:`. If the task implies a meeting or appointment, offer `gcal-manager` too, so
  it also lands on the calendar. Do not add it to the calendar silently.
- **Update.** Change the status marker in place. `[~]` when they start, `[x]` when done.
- **Complete.** Set `[x]`, then move the whole block to `## Completed` with the date finished.
- **Review** ("what's on my plate"). Show Active grouped in this order: overdue first, then due
  within three days, then due later, then no date. Lead with the overdue count if there is one.
- **Prune.** When `## Completed` passes about thirty lines, offer to archive the oldest into
  `archives/`. Never clear it without asking.

## The session-start job

`CLAUDE.md` tells every session to read this file first. That job is yours:

1. Any reminder dated today, surface it at the **top** of the first response as
   `**REMINDER today:** [ID] ...`
2. Any deadline within three days, flag it as urgent in the same block.
3. Anything already past its deadline and not `[x]`, say so plainly. Do not soften it.

Then get out of the way and answer whatever they actually asked.

## Hard rules

1. **Never delete an Active task** unless they say so. Completed work moves, it does not vanish.
2. **Never invent deadlines.** No date given means `Deadline: `. Ask if it matters.
3. **Keep it flat.** No sub-tasks, no priority scores, no nested projects. A task list people
   actually maintain beats a system they abandon. If the work is big enough to need structure, it
   is a project: give it a card in `projects/` and leave one task here pointing at it.
4. **One task per block.** If they hand you three things in one sentence, write three blocks.
5. This skill touches `tasks/todo.md` only. Decisions go to `decisions/log.md`, dates go to the
   calendar, knowledge goes to the wiki.
