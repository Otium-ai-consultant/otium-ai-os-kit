---
name: doctor
description: >-
  Use when anything about this OS looks broken, missing, or red, or when the user says "doctor",
  "something's broken", "it's not working", "error", "it forgot everything", "my skills are
  gone", "rusak", "error nih", "nggak jalan", "kok hilang", "benerin dong". Runs a calm,
  non-destructive diagnosis one step at a time, fixes what is safely fixable, and produces a
  copy-paste support message when it cannot. Never deletes or resets anything.
---

# Doctor

Something looks broken. **The user may be frustrated and is not technical.** Be calm, be
concrete, and give **one step at a time**. Wait for their answer before the next step. Never
dump a checklist of ten things at them.

Match their language.

## Hard rules: read these before touching anything

1. **NEVER run `git reset --hard`, `git clean`, `rm -rf`, or anything that discards work.** Their
   business data is in this folder. A broken OS is recoverable. Deleted data is not.
2. **Never reinstall by wiping.** Repair in place.
3. **Untracked or modified files under `context/`, `tasks/`, `wiki/`, `sessions/`, and
   `projects/` are NORMAL.** That is their data, and it is gitignored on purpose. If `git status`
   worries them, reassure them first, then move on. This is the single most common false alarm.
4. **Change one thing, then re-test.** Do not stack three fixes and lose track of which worked.
5. If a fix needs their approval (installing something, restarting the app), ask first and say
   why in one sentence.

## Step 1: What exactly is wrong?

Ask one question: *"What did you type, and what happened instead of what you expected?"*

Route on the answer:

| What they describe | Go to |
|---|---|
| A skill does not trigger, or "my skills are gone" | Step 2 |
| Calendar, Gmail, or Drive does not work | Step 3 |
| "It forgot everything about me" | Step 4 |
| Obsidian shows nothing, or the graph is empty | Step 5 |
| An error message they can paste | Step 6 |
| Cannot tell yet | Run Step 2, then Step 3 |

## Step 2: Skills

1. Confirm they opened **this folder** in Claude Code, not its parent. The skills live in
   `.claude/skills/` relative to the folder that is open. This is the most common cause by far.
2. Check the folder exists and count what is in it. Every skill must be
   `.claude/skills/<name>/SKILL.md`, exactly that filename, one level deep. A doubled folder such
   as `skills/tasks/tasks/SKILL.md` will never load.
3. Check each `SKILL.md` starts with a `---` block containing `name:` and `description:`. A
   frontmatter block that does not parse means the skill is silently ignored, with no error
   anywhere. If a description contains a colon followed by a space and is not quoted, that is the
   bug. Quote it or convert it to a `>-` block.
4. Plugins are separate from these skills. Run `claude plugin list` in the terminal. Superpowers,
   claude-mem, and context-mode should each show enabled. If one is missing, reinstall just that
   one from `SETUP-PLAYBOOK.md` Part A, then restart Claude Code.

## Step 3: Google connectors

1. Ask them to check claude.ai, Settings, then Connectors. Google Calendar, Gmail, and Drive
   should each be connected under their own account.
2. If a connector is there but silent, have them disconnect and reconnect it, then **restart
   Claude Code**. Connectors are picked up at session start.
3. If connectors do not appear at all, their Claude plan may not include them. Say that plainly
   rather than letting them keep trying.
4. Test with something harmless: *"what is on my calendar this week?"*

## Step 4: "It forgot me"

1. Open `CLAUDE.md`. If it still contains `{{...}}` placeholders, onboarding never finished. Run
   `onboard` and pick up where it stopped. It is resumable.
2. If `CLAUDE.md` is filled in but the OS still acts blank, check that `context/about-me.md` and
   `context/about-business.md` exist and have content.
3. If both look right, this is a session-memory issue, not a data issue. Confirm claude-mem is
   enabled per Step 2.4, and remind them that `session-handoff` before clearing context is what
   carries work across sessions.

## Step 5: Obsidian

1. Obsidian needs no installation step here. They open Obsidian, choose "Open folder as vault",
   and select **this** folder.
2. An empty-looking graph on day one is normal, not a fault. The graph fills as notes link up.
3. If they installed the optional Local REST API power-up and it stopped working: Obsidian must
   be running for it to respond. Closed app means no connection.

## Step 6: An error they can paste

1. Read it literally. Most say exactly what is wrong.
2. `command not found: node` or `npx` means Node is missing or invisible to the app. Reinstall
   Node from nodejs.org using the installer, not a version manager, then restart Claude Code.
   A version manager only exports Node to terminal sessions, so the desktop app still will not
   see it.
3. `permission denied` means answer Allow on the prompt. **Never suggest `sudo`.**
4. A red hook error at session start on Windows is cosmetic. The setup instructions still work.
   Tell them to ignore it and carry on.

## When you cannot fix it

Stop guessing after two failed attempts. Produce this, filled in, for them to send to support:

```
What I tried to do:
What happened instead:
Error message (exact text):
Operating system:
Steps already tried with Doctor:
```

Then tell them plainly that their data is safe and nothing is lost, and that they should not
delete the folder.
