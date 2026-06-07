---
name: geo-content-operator
description: Generate GEO-optimized (Generative Engine Optimization) B2B export articles that get cited by AI search (ChatGPT, Google AI Overviews, Gemini). Produces an inverted-pyramid fact-dense lead, a comparison table, buyer FAQs, and Article + FAQPage JSON-LD. Use when writing SEO/AI-search content for a manufacturer, exporter, or B2B supplier. Two modes — local (bring-your-own model, this skill is the method) or hosted (set PAIBAO_LICENSE_KEY to ground generation in a dynamic knowledge base).
---

# GEO Content Operator

Write B2B export articles that **AI search engines cite**, not just rank. The difference
between content AI Overviews ignore and content they quote is **fact density + structure +
entity disambiguation**. This skill is that method.

## When to use

A manufacturer/exporter/B2B supplier needs an article that wins AI-search visibility for a
buyer-intent topic (e.g. "how to choose axle configuration for a fuel tanker trailer").

## Two modes

- **Local (open, default):** you (the model) follow the method below. No account needed.
- **Hosted (pro):** if `PAIBAO_LICENSE_KEY` is set, run `scripts/generate.sh "<topic>" <lang>`
  to call the hosted engine, which grounds the article in the client's **dynamic knowledge
  base** (tacit, selection-driving facts elicited via expert interview) — the differentiated,
  competitor-proof layer this local method cannot reproduce. Returns html + markdown + jsonld.

## The method (local mode)

Before writing, get the **business dossier**: real product lines + specs, target markets,
and — most important — the client's *tacit selection knowledge* (the things they treat as
common sense but buyers get wrong). If you don't have it, interview the user for it first;
that hidden knowledge is what makes content citable.

Then produce, in order:

1. **Inverted-pyramid definitional lead** (~60–90 chars, one sentence). Lead with the single
   most specific *figure*. This is the sentence AI quotes. No adjectives, no marketing.
   > e.g. "A 3-axle 50CBM side tipper exceeds Kazakhstan's first-checkpoint axle-load limit above 24t payload."

2. **Body, 900–1300 words**, `##`/`###` sections shaped as **query fan-out** (answer the
   sub-questions a buyer would ask). Quantitative claims only — every claim carries a number,
   spec, mm, tonnage, %, or standard. Include at least one **comparison/spec TABLE**.

3. **"## What most buyers get wrong"** — 160–220 words of the client's tacit knowledge, exact
   figures verbatim. This is the differentiated, AI-citable insight competitors lack.

4. **Buyer FAQs** — 3–5 real RFQ-stage questions with fact-dense answers. These map 1:1 to
   FAQPage schema.

5. **A proprietary data note** — your single most specific spec/number, framed as a curiosity
   gap (in hosted mode this is rendered with `data-nosnippet`).

6. **JSON-LD entity disambiguation** — emit `Article` + `FAQPage` + publisher `Organization`
   (see `references/jsonld.md`). This tells AI engines exactly what entity the content is about.

## Rules (what makes it GEO, not generic SEO)

- **Fact density over prose.** If a sentence has no number/spec/standard, cut or sharpen it.
- **No "everyone knows" filler.** Surface the non-obvious selection rule.
- **Quote exact figures verbatim** in the lead and ≥2 body sections.
- **One canonical entity** — consistent product/spec naming throughout + in JSON-LD.
- **Buyer intent, not keyword stuffing.** Sections answer real purchase questions.

## Output

Emit: the article as **Markdown** (or HTML), plus the **JSON-LD** block. In hosted mode the
script returns all three (html/markdown/jsonld) ready to paste into any CMS; the JSON-LD goes
in `<head>` as `<script type="application/ld+json">`.

See `references/method.md` for the full dimension checklist and `references/jsonld.md` for the
schema templates.
