---
title: COMMANDS
type: guide
tags: [guide]
---

# What to say

You do not memorize commands here. You talk normally and your AI picks the right tool. This page
exists for the days you want to know what is possible.

## Start with five

Ignore everything else until these feel automatic. Everything on this page works in English or
Indonesian.

| Say this | What happens |
|---|---|
| **"what's on my plate today?"** | Reads your tasks, surfaces anything due or overdue |
| **"put that on my calendar"** | Writes the event to Google Calendar, asks you if a detail is unclear |
| **"remember this"** or **"file this"** | Takes whatever you just said and puts it where it belongs |
| **"help me think through X"** | Interviews you properly, saves the thinking to a file |
| **"doctor"** | Something looks broken. Diagnoses it one step at a time, never deletes anything |

**The habit that makes it stick:** open this folder with your morning coffee and ask *"what
should I focus on today?"* Two weeks of that and the OS stops being software you own and starts
being something you use.

## When you need more

**Writing**
- *"write me a caption for this"* or *"tulisin caption"* gets copy in your voice, not a model's
- *"make this sound less like AI"* or *"biar gak kaya AI"* strips the tells out of text you paste in
- *"set up my brand"* stores your logo, colors, contacts, and tax details once, so every document uses them

**Remembering**
- *"remember this article"* turns a link or a long piece into a short sourced note
- *"what do I know about X?"* answers from your own notes and cites which ones
- Drop long articles into `Transition/RAW/`, then say *"process these clips"*

**Keeping the OS honest**
- *"ask me three things"* deepens what the OS knows about you. Run it weekly, it takes two minutes
- *"map my OS"* refreshes the index of where everything lives
- *"run an OS audit"* finds what has gone stale, what points at files that no longer exist, and what quietly broke
- *"score my setup"* rates how well built the OS is and gives you the top three fixes
- *"what should I automate?"* finds one repetitive thing each week and builds it

**Before you close the laptop**
- *"session handoff"* writes down what happened, what was decided, and what is still open, so tomorrow's session picks up where you left off instead of starting cold

## The four plugins, and what they actually do

Setup installed four things. Nobody explained what they are for, so here it is.

**Superpowers** gives your AI disciplined working methods instead of improvising. It loads itself
at the start of every session. You do not run it directly, but you can ask for its methods by
name:
- *"brainstorm this with me"* explores an idea properly before anything gets built
- *"write a plan for this"* turns a vague goal into ordered steps
- *"execute the plan"* works through it with checkpoints instead of one big leap
- *"debug this systematically"* finds the actual cause instead of guessing at fixes

Worth knowing: for anything bigger than a quick question, saying *"plan this first"* produces
noticeably better results than asking for the thing directly.

**context-mode** stops big files from clogging up the conversation. When your AI reads a long
document, a spreadsheet, or a web page, this processes it off to the side and brings back only
the answer. You never call it. You just notice that handing over a fifty-page PDF no longer makes
the AI forget what you talked about ten minutes ago. If you have a big file, say *"analyze this
file"* and let it work.

**claude-mem** carries memory between sessions, so you are not reintroducing yourself every
Monday. It works quietly. The thing that matters more is running *"session handoff"* before you
close a working session, because that writes the real record.

**Skill Creator** builds new abilities into this OS. When you catch yourself explaining the same
process for the third time, say *"turn this into a skill"* and it becomes something you can
trigger by name from then on.

## Where your information lives

Everything is a plain text file in this folder, on your own computer. There is no separate
account, no database, and no Otium server holding your business.

- What you tell the OS about yourself sits in `context/`
- Your tasks, decisions, and project notes sit in `tasks/`, `decisions/`, and `projects/`
- What you save to remember sits in `wiki/`

**These folders are excluded from git on purpose.** If you ever put this folder on GitHub, your
customer names, tax details, and bank information do not go with it. If you use Obsidian, it
reads the same files directly. Nothing is copied anywhere.

What does leave your machine is what you type into Claude, the same as any conversation with it.
If something must never reach a third party, do not paste it into chat.

## Updating later

Your data and the kit are separate on purpose, so an update can never overwrite your business.

Say **"update my AI OS from the Otium repo"**. Your AI fetches the latest version, replaces only
`.claude/skills/` and the guide files, and leaves everything in `context/`, `tasks/`, `wiki/`,
`sessions/`, `projects/`, and `decisions/` untouched.

Do not run `git pull` yourself unless you are comfortable with git. The command above is safer
because it is explicit about what gets replaced.

## Connected
- [[CLAUDE]]
- [[README]]
- [[SETUP-PLAYBOOK]]
