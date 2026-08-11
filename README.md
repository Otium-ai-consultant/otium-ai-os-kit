# Your AI Operating System

> Delivered by **Otium AI Consultant**. *"Get Your Time Back."*

This folder becomes a working brain for your business. Open it in Claude Code and it learns who
you are from a short setup, keeps your tasks and decisions in one place, doubles as an Obsidian
vault you can browse, and connects to Gmail, Calendar, and Drive.

No dashboard, no database, no build step. Everything here is a plain text file on your own
computer.

## What you need first

**A paid Claude plan.** Claude Code needs Pro, Max, Team, or Enterprise. A free account cannot
run it, and the Google connections need a paid plan too. Details in
[`INSTALL-FIRST.md`](INSTALL-FIRST.md).

## How to start

1. **Do the installs in [`INSTALL-FIRST.md`](INSTALL-FIRST.md).** Claude Code, then Node.js, plus
   Git for Windows if you are on Windows. About ten minutes, and it is the only by-hand part.
2. **Open this folder in Claude Code and type anything, even "hi".** On a fresh OS the `onboard`
   skill takes over and does the setup for you: it installs the plugins, walks you through
   connecting Google, and asks you to open the folder in Obsidian. Then it learns about you,
   either by asking a few questions you are free to skip, or by reading a file you drop into the
   chat such as a company profile or an old proposal.
3. **Ask it: "what should I focus on this week?"** That is the moment it clicks.

> On your first session the OS runs setup before anything else, even if you only said hi. That is
> deliberate: a half-connected OS that starts interviewing you feels broken.
> [`SETUP-PLAYBOOK.md`](SETUP-PLAYBOOK.md) is the manual it follows. Open it only if you are
> curious or something gets stuck.

## What is in here

| File or folder | What it is |
|---|---|
| [`INSTALL-FIRST.md`](INSTALL-FIRST.md) | The by-hand part. Start here. |
| [`COMMANDS.md`](COMMANDS.md) | What to say to get things done. Read this after setup. |
| [`CLAUDE.md`](CLAUDE.md) | The operating manual: the rules your AI follows every session. |
| [`SETUP-PLAYBOOK.md`](SETUP-PLAYBOOK.md) | The setup manual `onboard` follows. |
| [`EXPANSIONS.md`](EXPANSIONS.md) | What to add as you grow, and what never to add. |
| `aios-intake.md` | The onboarding questions. Fill it in beforehand if you like, and setup will read it instead of asking. |
| `.claude/skills/` | Your skills. Ask *"what can you do?"* and your AI reads them out. |
| `context/` `tasks/` `projects/` `decisions/` `sessions/` | What the OS knows and remembers. |
| `wiki/` | Your knowledge base. Empty on purpose. It fills as you feed it. |

**There is deliberately no list of skills in this file.** Any list goes stale the moment you add
one, and this OS is built to grow. The installed skills are the list. Ask your AI what it can do
and it will tell you from what is actually there.

## Where your information goes

Everything the OS learns is a text file in this folder, on your machine. There is no Otium
account and no server holding your business.

The folders that hold your private information, which is `context/`, `tasks/`, `wiki/`,
`sessions/`, `projects/`, `decisions/`, and `brainstorms/`, are **excluded from git on purpose**.
If you ever put this folder on GitHub, your customer names, tax details, and bank information do
not go with it.

What does leave your computer is what you type into Claude, the same as any other conversation
with it. If something must never reach a third party, do not paste it into the chat.

## Updating later

Your data and this kit are kept separate so an update can never overwrite your business.

Say **"update my AI OS from the Otium repo"**. Your AI fetches the current version and replaces
only `.claude/skills/` and the guide files. Everything in `context/`, `tasks/`, `wiki/`,
`sessions/`, `projects/`, and `decisions/` is left alone.

Avoid running `git pull` by hand unless you are comfortable with git. The sentence above is safer
because it is explicit about what gets replaced.

## Something broken?

Say **"doctor"**. It diagnoses the problem one step at a time and never deletes anything. If it
cannot fix it, it writes a message you can send to us.

The two installs in `INSTALL-FIRST.md` are the only technical part. Stuck there? Reply to Otium
and we will do them with you on a quick screen share.
