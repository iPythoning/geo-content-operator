# JSON-LD templates (entity disambiguation)

Emit these as `<script type="application/ld+json">` in `<head>`. They tell AI engines exactly
what entity the article is about — the single biggest lever for being *cited* vs. ignored.

Escape `<` as `<` before injecting, so a stray `</script>` can't break out of the tag.

## Article + Organization

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "<title, <=110 chars>",
  "description": "<meta description, <=155 chars>",
  "inLanguage": "<en|zh|ru|ar|...>",
  "mainEntityOfPage": "<canonical URL>",
  "author":    { "@type": "Organization", "name": "<company>", "url": "<site>" },
  "publisher": { "@type": "Organization", "name": "<company>", "url": "<site>" }
}
```

## FAQPage (from the buyer FAQs)

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question",
      "name": "<buyer question>",
      "acceptedAnswer": { "@type": "Answer", "text": "<fact-dense answer>" } }
  ]
}
```

Emit both as a top-level JSON **array** `[ {Article…}, {FAQPage…} ]` in one script tag, or as
two separate script tags. Keep the company name + product naming **identical** to the article
body (one canonical entity).
