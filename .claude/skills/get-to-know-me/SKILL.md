---
name: get-to-know-me
description: >-
  Use when the user wants their OS to learn more about them, or says "get to know me", "ask me
  something", "ask me 3 things", "kenali aku lebih", "tanya aku", "tanya aku 3 hal", "isi
  profilku", "update my profile", "what don't you know about me". Asks three short questions
  drawn from real gaps in what it already knows, one at a time, then files each answer where it
  belongs. Leaves fresh questions behind so the profile keeps deepening instead of going stale.
  Run it weekly. Onboarding is the introduction, this is the relationship.
---

# Get to know me

`onboard` is the introduction. **This is the relationship.**

Onboarding gets seven answers once. After that a profile only rots. The business changes, the
current push ships, the way someone wants to be worked with shifts. This skill is the small
repeating loop that keeps it true: three questions, three answers filed properly, and fresh
questions left behind for next time.

Run it weekly, or whenever the profile feels thin. **Nothing runs it automatically.** No
scheduler, no background job, nothing spending their quota while they are not looking. It runs
because they asked.

**Three questions. Not five, not ten.** The ceiling is the point. A short exchange gets finished,
and a finished exchange happens again next week. An interview gets abandoned halfway and never
reopened.

## Step 1: Find out what you actually do not know

Read before you ask. A question about something already written down damages trust faster than
asking nothing at all.

- `context/about-me.md`: the profile, and its `## Open questions` section, which is the standing
  list of what is still unknown. If it carries a `Last asked:` date of today, say so and ask
  whether they want another round rather than assuming.
- `context/about-business.md` and `context/priorities.md`: what the business is, and what
  matters this quarter.
- `tasks/todo.md`: what they are doing right now. Recurring items are a rich source.
- `wiki/index.md` and the pages under it: people, projects, and processes already recorded.
- `decisions/log.md`: choices they have made, and why.

If `context/about-me.md` does not exist or is still a placeholder, stop and point them at
`onboard` instead. This skill deepens a profile. It cannot build one from nothing.

## Step 2: Choose three questions

Pick **one of each type**. Three questions of the same kind make it feel like a form.

1. **An open gap.** Take the most useful entry straight from `## Open questions`. It is there
   because a previous run could not answer it.
2. **A clarifying question.** Something you *saw* in their files but do not understand. A task
   sitting untouched for weeks. A client named once and never explained. A tool you cannot tell
   if they still use. Say where you saw it: *"There's a task 'follow up Pak Budi' from two weeks
   ago. Still live, or has that passed?"*
3. **A question that makes you more useful next time.** How they want something handled, what
   they would rather never do again, what "good" looks like for work you will likely be asked
   for.

Rules for the questions themselves:

- **Answerable in one or two sentences.** "What is your long-term strategy?" is an essay. "Your
  weekly content, which channels is that for?" is an answer.
- **Concrete, never generic.** If the question would make sense to a stranger, it is too vague.
  It should be obvious you have read their files.
- **Never re-ask.** Anything already in `context/`, the wiki, or the decisions log is answered.
- **Match their language.**

## Step 3: Ask, one at a time

Open with what this is, in one line:

> Three quick questions so I know you better. Skip any of them if you're busy.

Then ask question one **and wait**. Never send all three at once. That is a form, and forms get
abandoned.

If they skip one, move on without pushing. A skipped question goes back into `## Open questions`
for another day. If an answer opens something genuinely interesting, **one** follow-up is
allowed, then move on. If they answer everything in one message anyway, file it all and do not
re-ask.

## Step 4: File each answer where it belongs

This is the part that makes the loop worth running. An answer that lands only in chat is lost the
moment the session ends.

Route by what the answer **is**, not by which question prompted it:

| The answer is | Goes to | As |
|---|---|---|
| A durable fact about them or how they work | `context/about-me.md` | one short line under the right heading |
| A change to what the business is | `context/about-business.md` | rewrite the field |
| A change to the current push | `context/priorities.md` | rewrite the entry |
| A person: client, supplier, partner | `context/contacts.md` | a contact row |
| Knowledge that came from outside them | hand it to the `wiki` skill | ingested page with its source |
| How one of their own processes works | `references/sops/{process}.md` | an SOP |
| Something they decided, and why | `decisions/log.md` | dated entry in that file's format |
| Something they need to do | `tasks/todo.md` | a task block under `## Active` |

**Keep the profile tight.** `context/about-me.md` is a highlight reel, not a transcript. When a
new fact earns its place and a section is getting long, drop the weakest line. Detail that is now
recorded more fully elsewhere is usually the one to go. Never let it grow into a wall of text.

Anything written under `wiki/` goes through the `wiki` skill and follows `wiki/SCHEMA.md`:
frontmatter tags, `[[wikilinks]]` in the body, a `## Connected` section, and a line added to
`wiki/index.md`. Do not skip the last one. An unregistered page is invisible to every future
question.

## Step 5: Leave the next questions behind

This is what makes it a loop instead of a survey.

1. **Remove** every open question that today's answers resolved.
2. **Add** two to four new ones, drawn from what the answers opened up. A good answer almost
   always exposes the next thing you do not know.
3. Keep the list between two and four. An empty list makes the profile look finished when it is
   not. Ten makes it unreadable.
4. Stamp `Last asked: YYYY-MM-DD` using today's date from your session context.

The section lives at the bottom of `context/about-me.md` and looks like this:

```markdown
## Open questions
Last asked: 2026-03-14

- Which of the two service lines actually pays the bills?
- Who handles invoicing when they are travelling?
```

## Step 6: Close

Show them what changed, briefly, so the exchange visibly paid for itself:

```
Saved:
- {answer} → {where it went}

Your profile now knows: {one line on what is known that was not before}
Next time I'll ask three more.
```

Then stop. Do not launch into other work.

## Hard rules

1. **Three questions maximum.** The limit is the feature.
2. **One at a time.** Wait for each answer.
3. **Never ask what is already recorded.** Read first. This is the fastest way to lose trust.
4. **Every answer gets filed somewhere**, or the session was wasted. Chat is not storage.
5. **Never invent an answer.** Unanswered goes back to open questions.
6. **Nothing runs on a schedule.** The user triggers this. Never install a cron job, a launchd
   job, or a watcher for it. That spends their AI quota while they are not looking.
7. **Skipping is free.** No guilt, and no re-asking twice in one session.
8. **No emoji, no hype.** Plain language, matching theirs.
