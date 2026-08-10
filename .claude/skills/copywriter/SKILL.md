---
name: copywriter
description: >-
  Use when the user writes or rewrites any prose — captions, WhatsApp messages, emails,
  landing/sales copy, LinkedIn/IG posts, bios, product or offer descriptions — or says "tulisin",
  "bikinin caption", "draft email", "buatin copy", "write copy", "rewrite this", "humanize", "biar
  gak kaya AI", "jangan kaya AI", "make it natural", "bikin lebih natural", "perbaiki tulisan".
  Produces writing in the user's / their brand's own human voice and strips the tells that make
  text read as AI-generated. Hard rule: no em dashes, no emoji. Works in Indonesian and English.
metadata:
  brand: Otium AI OS
  type: writing
  version: 1.0.0
  language: id-en
---

# copywriter

## What this does

Writes and rewrites the user's copy so it reads like a person wrote it, not a model. Every draft passes an **anti-AI-tell** filter before it goes out. Two tells are hard bans; the rest are judgment calls caught by the workflow below.

Core principle: **AI writing sounds assembled. Human writing sounds felt.** The job is to sound felt — specific, uneven, plain, with a point of view.

## The two hard bans (non-negotiable)

1. **No em dashes (—). Ever.** Also no en dash (–) as a substitute, and no " - " standing in for one. Rewrite the sentence instead:
   - Split into two sentences (period).
   - Use a comma, colon, or parentheses.
   - `AI kerja, waktu Anda kembali.` not `AI kerja — waktu Anda kembali.`
2. **No emoji. Ever.** Not in captions, not in WhatsApp, not to break up lists. If a line needs energy, the words carry it.

These two are the fastest visual giveaways and a standing default for this skill. If a draft contains either, it is not done. Self-check the final text for `—`, `–`, and any emoji before delivering.

## The deeper tells to strip

The bans are surface level. Text can avoid both and still read as AI. Before delivering, scan for these (full catalog with examples and fixes in `ai-tells.md`):

- **Rule of three.** "adjective, adjective, adjective" and "phrase, phrase, and phrase" stacked everywhere. Break the pattern. Use one, or two, or four.
- **Contrastive scaffolding.** "It's not just X, it's Y." / "not only... but also." AI leans on this constantly. Cut it or say the thing directly.
- **Puffery verbs and nouns.** boasts, features, offers, serves as, stands as, showcases, elevates, unlock, seamless, robust, vibrant, rich, in the heart of, landscape, realm, tapestry, journey. Replace with plain verbs: has, is, uses, helps.
- **Inflated transitions.** Furthermore, Moreover, Additionally, Notably, Importantly, It's important to note. Delete or replace with how people actually connect ideas.
- **Hedging and vague attribution.** "Many experts believe", "studies show", "in today's fast-paced world". Say who, or cut it.
- **Empty conclusions.** "In summary", "In conclusion", "Overall". End on the actual last point, not a restatement.
- **Boldface spray.** Bolding every key term like a slide deck. Bold at most one thing, usually nothing, in short copy.
- **Perfect balance.** Every sentence the same medium length. Vary it: a long one, then three words. Real writing is lumpy.
- **Over-explaining.** Stating the obvious, defining what the reader knows, wrapping a simple point in setup. Cut the runway, land the plane.

## Voice anchoring (do this first)

1. **Match the input language.** The user writes ID or EN. Mirror whichever they used. Never switch unasked.
2. **Check for voice samples.** If the user has provided writing samples of their own (past posts, emails, messages) or a brand voice guide, read them first and mirror the rhythm, sentence length, and habits before drafting. If none exist yet, ask for 2-3 samples of their past writing (or their business's about/website copy) before drafting anything external or high-stakes — don't guess at a voice you've never seen.
3. **Business vs personal:**
   - **Brand / business-facing copy** (captions, landing pages, client-facing messages): match the business's own tone and values — ask if unsure whether it should sound formal, warm, playful, or plainly transactional. No hype, no jargon-AI, no overpromise unless that's genuinely how the brand talks.
   - **Personal / casual writing** (the user's own posts, notes, casual messages): casual but professional, short sentences, plain words, direct. Bullets over paragraphs when listing.
4. **Never fake the user's voice on high-stakes external content** (a client email, a public post) without showing a draft first.

## Workflow

1. Get the brief: what, for whom, which channel, ID or EN, desired length.
2. Anchor voice (section above) — ask for samples if the user's or brand's voice is unknown.
3. Draft plainly. Write like you're telling one real person, not an audience.
4. Run the **strip pass**: read the draft against the tells list, cut every one you find.
5. Run the **read-aloud pass**: if a line would sound weird said out loud, rewrite it.
6. Run the **hard-ban check**: search the text for `—`, `–`, and emoji. Zero allowed.
7. Deliver as copy-paste ready text. For anything external and high-stakes, present as a draft for the user to approve.

## Quick reference: swap these

| AI reflex | Write instead |
|---|---|
| utilize, leverage | use |
| crucial, pivotal, vital | important (or cut) |
| facilitate, enable | help, let |
| in order to | to |
| a wide range of / diverse array | just name them |
| boasts / features / offers | has |
| serves as / stands as | is |
| It's not just X, it's Y | say Y directly |
| Furthermore / Moreover | (delete, or "and", "also") |
| In conclusion / Overall | (delete, end on the point) |
| dive into / delve into | look at, go through |
| seamless, robust, vibrant | (cut, or say the concrete thing) |
| — (em dash) | . or , or : or ( ) |

Full examples and reasoning: see `ai-tells.md`.

## Common mistakes

- **Rewriting one tell but leaving the rhythm robotic.** Swapping "utilize" for "use" but keeping every sentence the same length still reads AI. Vary the rhythm.
- **Deleting em dashes by turning them into " - ".** That is still the same tell wearing a hat. Restructure the sentence.
- **Adding personality with emoji or exclamation marks.** Energy comes from word choice and specifics, not decoration.
- **Over-correcting into choppiness.** Human ≠ all short sentences. Mix lengths.
- **Losing the point while polishing.** Say the real thing first, then make it plain. Never make it plainer than it is true.

## Red flags (STOP, the draft is not done)

- Any `—` or `–` in the text.
- Any emoji.
- Three adjectives in a row, more than once.
- "It's not just... it's..." anywhere.
- A sentence starting "Furthermore" / "Moreover" / "In today's".
- A closing line that restates what you just said.
