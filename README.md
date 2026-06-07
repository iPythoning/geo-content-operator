# GEO Content Operator (Agent Skill)

Generate **GEO-optimized** B2B export articles that get **cited by AI search** (ChatGPT,
Google AI Overviews, Gemini) — inverted-pyramid fact-dense lead, comparison tables, buyer
FAQs, and Article/FAQPage JSON-LD.

Open-core: the **method** (this skill) is open. The hosted **engine** — dynamic per-client
knowledge base, expert-interview elicitation, coverage tracking — is the paid layer.

## Modes

| Mode | Needs | What you get |
|---|---|---|
| **Local** (default) | nothing | The model follows the GEO method in `SKILL.md` (bring-your-own model) |
| **Hosted** (pro) | `PAIBAO_LICENSE_KEY` | `scripts/generate.sh` calls the engine; returns html + markdown + jsonld grounded in your dynamic knowledge base |

## Install (Claude Code / agent skills)

Drop this folder where your agent loads skills (e.g. a plugin's `skills/` directory), or copy
`SKILL.md` into your skills path. The agent activates it by description match.

## Hosted usage

```bash
export PAIBAO_LICENSE_KEY=...   # https://paibao.ai/operator
scripts/generate.sh "how to choose axle configuration for a fuel tanker trailer" en "West Africa"
```

Returns JSON with `drafts[].{html, markdown, jsonld}` ready for any CMS.

## Files

- `SKILL.md` — the activatable skill (method + mode routing)
- `references/method.md` — full GEO dimension + structure checklist
- `references/jsonld.md` — Article/FAQPage/Organization schema templates
- `scripts/generate.sh` — hosted-mode client (license key)

## License

GPL-2.0-or-later.
