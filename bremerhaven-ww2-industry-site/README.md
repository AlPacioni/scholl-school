# Bremerhaven Maritime Industry Website

## Scope
Professional multi-page website on Bremerhaven's shipyard and port industry before, during, and after World War II.

## Pages
- `index.html` overview
- `before.html` pre-war era
- `during.html` wartime era
- `after.html` post-war era
- `timeline.html` filterable timeline
- `sources.html` references and image credits
- `methodology.html` evidence and source method
- `glossary.html` maritime terms
- `about.html` contact and project details

## Features implemented
- Side-image layouts on major section pages
- Breadcrumbs, active nav state, skip link, keyboard focus styles
- EN/DE UI toggle, dark mode toggle, reduced motion support
- Footnotes, documented/inferred evidence labels, APA-style source list
- Timeline filters, comparison table, map schematic, chart and infographic sections
- Lightbox image zoom
- SEO essentials: descriptions, OG/Twitter tags, canonical links, favicon
- `robots.txt` and `sitemap.xml`
- Print stylesheet
- Local privacy-friendly visit counter + optional Plausible analytics hook

## Tooling
- `npm run lint` -> basic HTML/CSS quality checks via `scripts/lint.ps1`
- `npm run build` -> creates minified assets via `scripts/build.ps1`

## Run
Open `index.html` in a browser.
