# GEO method — full checklist

GEO (Generative Engine Optimization) = optimizing to be **cited by generative AI search**
(ChatGPT, Google AI Overviews/AI Mode, Gemini, Perplexity), not just ranked by classic SEO.
Citation is earned by fact density, clean structure, and entity clarity.

## Dimension checklist (cover the ones that decide a real purchase)

For industrial/export B2B, surface the client's tacit knowledge along these axes:

1. **Specs buyers overlook** and why they decide reliability
2. **Field failure modes** by climate / road quality / load
3. **Customs / homologation / standards** nuances per destination market
4. **Total cost of ownership** vs. headline unit price
5. **Application fit** — which variant for which use-case / terrain / cargo
6. **After-sales / spare parts / warranty** reality
7. **Buyer-type decision logic** — distributor vs. own-fleet vs. government tender

(Different verticals have different axes; adapt. The hosted engine tracks coverage per axis.)

## Structure checklist

- [ ] Inverted-pyramid lead, leads with the most specific figure, ~60–90 chars
- [ ] 900–1300 words, `##`/`###` shaped as buyer query fan-out
- [ ] At least one comparison/spec TABLE
- [ ] A "## What most buyers get wrong" section, exact figures verbatim
- [ ] 3–5 buyer FAQs (RFQ-stage questions) → FAQPage schema
- [ ] A proprietary data note (your most specific spec/number)
- [ ] Article + FAQPage + Organization JSON-LD
- [ ] One canonical entity name throughout (body + JSON-LD)

## Quality bar

- Every claim carries a number, spec, mm, tonnage, %, days, or standard.
- No adjectives-as-evidence ("high quality", "best") — replace with the measured fact.
- No "everyone knows that" — if it's obvious to a buyer, it won't get cited.
- The lead sentence must be quotable standalone, out of context.

## What this open method does NOT include

The hosted Paibao engine adds, on top of this method:

- a **dynamic per-client knowledge base** built by an expert-interview loop that elicits tacit,
  selection-driving facts (the differentiated, competitor-proof layer);
- automatic answer distillation into citable rules with exact figures;
- coverage tracking across the dimension axes;
- multilingual native localization with identical figures.

Set `PAIBAO_LICENSE_KEY` and use `scripts/generate.sh` to use it.
