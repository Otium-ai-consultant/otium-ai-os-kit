---
name: house-style
description: Use for anything involving the user's brand identity on documents, letterhead, decks, proposals, invoices, quotations, or when they say "bikin kop surat", "template deck", "buatin proposal", "invoice", "atur brand", "brand kit", "setup brand", "identitas usaha", "logo dan warna", "house style". Keeps ALL brand data (name, contacts, address, logos, colors, fonts) in one central file context/brand.json and applies it consistently. On first use it runs a short onboarding to collect the brand; after that it produces branded material straight from stored data. Ships blank, the user fills their own brand.
---

# House Style, Brand Identity

One rule above all: **never hardcode brand data in prose or output.** All of it lives in one file, `context/brand.json` (in this OS folder). Every branded document reads from there. Change a phone number once, every future output follows.

This skill ships **blank**: no brand data. The user fills their own.

## First: check status every time

On every call, read `context/brand.json` (create it from `data/brand.example.json` if missing). Look at `profiles[active_profile]` and score it against `data/brand.schema.json` (bundled with this skill, read it for field names + tiers):

- **empty / partial** (Tier A not done) → **Onboarding mode**.
- **ready / complete** (Tier A done) → **Production mode**. Do NOT force onboarding on someone who just wants a document or to check status.

Field tiers (full list in `data/brand.schema.json`):
- **Tier A, blocking:** display_name, legal_name, email, phone/whatsapp, web, address, logo_full. No document without these.
- **Tier B, warning:** logo_mark, logo_white (dark-bg variant), colors (ink+accent), fonts (heading+body), tagline, clear_space. Runs, but note the gap.
- **Tier C, on-demand:** npwp + bank (invoice only), instagram (deck/proposal), signatory (letters). Ask only when the format needs it.

## Onboarding mode, 4 batches, save after each

**Before batch 1, read what the OS already knows.** If `context/about-business.md` or
`context/about-me.md` exists, or `CLAUDE.md` has its "Who I am" / "The business" sections
filled, the `onboard` skill already interviewed the user, the business name and what it does
are in there. Draft those fields from it and ask the user to **confirm or correct**, instead
of asking from scratch. Being asked twice for the same answer is the fastest way to make a
second brain feel dumb.

Never fire 15 questions at once. Go batch by batch, and **write to brand.json after each batch** so progress survives if the user leaves.

1. **Identitas**: display name, legal name (PT/CV/usaha), tagline (opsional).
2. **Kontak**: email, telepon, WhatsApp, website, alamat lengkap.
3. **Visual**: minta file logo (validasi: transparan? resolusi ≥2x? ada varian untuk background gelap?). Lalu warna (ink + accent) dan font (heading + body).
4. **Preferensi format**: A4/Letter, bahasa default, gaya footer (satu baris ATAU blok 3 baris di halaman pertama, pilih SATU, jangan dua-duanya).

Before marking `complete`: show a full recap of every field, ask for one confirmation, then commit (set `updated_at`).

## Production mode: generate from stored data

Read `profiles[active_profile]`, use the fields the format needs. If a Tier-C field is missing for that format (e.g. NPWP for an invoice), ask just that field, save it, continue. If a Tier-B gap exists, produce anyway but tell the user what's missing.

## Behavior rules (this is what keeps output consistent)

- **No placeholders, ever.** Empty field → ask. Never emit `[Nama Perusahaan]` or `[alamat]` in a finished document.
- **Partial updates.** "Ganti nomor telepon jadi X" → patch that one field, don't restart onboarding.
- **Asset validation.** On logo upload: transparent? res ≥2x? dark-bg variant present? If not, record a Tier-B gap and tell the user.
- **Templates, not from scratch.** When the user has added templates in `templates/`, keep logo/footer in the file's master/layout and only fill content. Templates ship empty, the user adds their own `.docx`/`.potx`; until then, generate cleanly from data.
- **One contact block, one format.** Footer = one line (`web · +62… · email`) OR a 3-line block on page 1, never both.
- **Clear space** default = the height of the "i" in the wordmark. Note it once logo/colors are set.

## Multi-profile

`brand.json` holds `profiles` keyed by brand + an `active_profile`. Onboarding fills ONE brand ("brand kamu"). If the user serves clients, they can add a profile on request ("tambah profil klien Budi") and switch with `active_profile`: no rebuild. Most users only ever have one.

## Where other skills read this

Any brand-related skill (`copywriter` for voice/name, `frontend-design` for colors and fonts, any invoice or proposal work for contacts) reads the same `context/brand.json` → `profiles[active_profile]`. This skill is the owner + onboarder; others are consumers. Keep this file the single source of truth.
