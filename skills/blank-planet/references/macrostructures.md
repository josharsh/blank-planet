# Macrostructures: 18 Named Page Shapes

A macrostructure is the *skeleton* of a page — the sequence and proportions of its sections, before any visual styling. AI tools default to one macrostructure (hero → 3 features → CTA → footer) because it's the training-distribution mode. Two pages with different content but the same macrostructure look like the same site.

This file names 18 alternative macrostructures, each appropriate to specific genres and analogs. **Pick by name** before generating. If you don't pick, you'll default to the AI template.

**The rule:** if you cannot say *which* macrostructure you chose and *why*, you're using the default. Restart and pick consciously.

---

## How to use

1. Read the project (Phase 1) and identify the genre (see [[genres]]).
2. Look at the macrostructure list and pick the one that fits the analog's character and the genre's conventions.
3. Generate the page using that macrostructure as the skeleton.
4. Validate against the macrostructure's "what it isn't" list before shipping.

If the project doesn't fit cleanly into one, **blend two** — but say which two. Don't fall back to the default by accident.

---

## The catalog

### 1. The Manifesto

**Shape.** Giant statement of belief at the top, taking ~80vh. Below: a long-form essay-style scroll of supporting points. No nav. Minimal CTA at the very bottom (or none — the manifesto is the conversion).

**When to use.** Mission-driven products, polemical positioning, founder-led brands, anything where the *idea* matters more than the feature list.

**Analogs that fit.** Op-ed page, museum manifesto wall, broadside, pamphlet, sermon, dissertation defense.

**What it isn't.** Not a marketing page with extra words. The Manifesto commits to telling a single story; no features grid, no pricing card, no testimonial trio.

**Skeleton:**
```
[hero: one statement, display type, 80-100vh]
[essay paragraph 1: 60-70ch column, 18px body]
[essay paragraph 2]
[pull quote, 32-40px, off the body grid]
[essay continues]
[essay continues]
[essay continues]
[signature line + single CTA or contact]
```

---

### 2. The Long Document

**Shape.** Like a technical paper or legal contract. Top: title, subtitle, abstract. Below: numbered or named sections, each substantial. Table of contents on the side (sticky) or at the top. No marketing chrome.

**When to use.** Documentation, specs, RFCs, transparency reports, security disclosures, research summaries. Anywhere the reader is doing serious reading.

**Analogs that fit.** Academic paper, courtroom brief, government white paper, RFC, lab notebook.

**Skeleton:**
```
[title + subtitle + metadata: author, date, version]
[abstract / one-paragraph summary]
[ToC: left rail or top]
[section 1: heading + body, possibly with subsections]
[section 2]
...
[appendix / footnotes]
[footer: minimal, citation-style]
```

---

### 3. The Stat-Led

**Shape.** Opens with ONE giant number that represents the moat. Everything else exists to contextualize the number. The number is the headline.

**When to use.** When the product has a singular, falsifiable claim. Performance tools, cost-savings tools, anything with a measurable advantage.

**Analogs that fit.** Speedometer, stadium scoreboard, blood pressure monitor, atomic clock readout.

**What it isn't.** Not the 4-column stat bar. ONE number, not four.

**Skeleton:**
```
[the number, 200-400px tall, monospaced, with one-line claim beside it]
[the methodology: how we measured this, in a paragraph]
[the proof: a chart, table, or comparison]
[the story: why this number matters, in 2-3 paragraphs]
[the product: brief explanation of what makes the number possible]
[CTA]
```

---

### 4. The Workbench

**Shape.** Tool-forward layout. Most of the page is the tool itself (or a high-fidelity demo of it). Minimal chrome around the tool. Supporting context wraps tightly.

**When to use.** Products where the *interaction* is the value (editors, calculators, configurators, generators, design tools).

**Analogs that fit.** Workshop, lab bench, cockpit, studio, control room.

**Skeleton:**
```
[minimal header: name + one-line tagline]
[the tool: 60-80% of viewport, immediately interactive]
[short caption: what just happened, why it matters]
[brief featurette: 2-4 things the tool can do, terse]
[footer: who made it, links to docs/blog]
```

---

### 5. The Magazine

**Shape.** Editorial layout with multiple article-style entries. Mixed column widths, varied image treatments, headlines with their own personality. Browse-driven.

**When to use.** Content-led sites (blogs, publications, agency portfolios with case studies), product lines with multiple distinct offerings, anything where the reader is exploring.

**Analogs that fit.** Newspaper, glossy magazine, gallery wall, exhibition catalog.

**Skeleton:**
```
[masthead: publication identity, navigation by section]
[featured article: large, dominant]
[secondary articles: 2-3 cards of varied sizes]
[section divider]
[third tier: list of more entries]
[footer]
```

---

### 6. The Specimen

**Shape.** A single artifact (product, design, piece) shown in detail. Multiple angles, contexts, details. Like a museum object display.

**When to use.** Single-product launches, design system documentation, portfolio pieces, case studies of one thing.

**Analogs that fit.** Museum vitrine, type specimen page, watch catalog, gallery monograph.

**Skeleton:**
```
[the specimen: large image or interactive, the entire above-fold]
[caption: name, brief description, metadata]
[detail view 1: zoom into one aspect, paragraph of context]
[detail view 2]
[detail view 3]
[context: where this fits in the broader work]
[next/prev navigation or single CTA]
```

---

### 7. The Catalog

**Shape.** Browsable index of items. Each item has its own preview tile, sized consistently. Sort, filter, search affordances.

**When to use.** Storefronts, app stores, template libraries, model gardens, anything with N comparable items where the reader picks.

**Analogs that fit.** Library card catalog, hardware-store aisle, seed catalog, paint chip wall.

**Skeleton:**
```
[header: identity, search bar, filters]
[grid: uniform-tile catalog, 4-6 columns desktop, infinite or paginated]
[per-tile: thumbnail, name, one-line description, primary metadata]
[detail view: click-through to per-item page]
[footer: site-wide nav]
```

---

### 8. The Showcase

**Shape.** Hero-led but with the work itself as the hero — large media (image, video, animation) above the fold, supporting context below.

**When to use.** Studio sites, photographer portfolios, design tool examples, "look what we made" pages.

**Analogs that fit.** Concert hall lobby, fashion lookbook, film festival program.

**Skeleton:**
```
[the showcase media: full-bleed image/video, 80-100vh]
[caption + credit: who/what/when]
[context: paragraph explaining the work]
[gallery: 2-4 supporting pieces]
[about: short bio of maker]
[CTA: get in touch, view more]
```

---

### 9. The Story

**Shape.** Narrative scroll. Page reads top-to-bottom like a chapter — opening, rising action, turn, resolution. Visuals and copy advance the story.

**When to use.** Brand storytelling, founder narratives, case studies as journey, mission-driven sites.

**Analogs that fit.** Short story, comic strip, slide deck, oral history.

**Skeleton:**
```
[scene 1: the situation before — image + paragraph]
[scene 2: the problem emerges — image + paragraph]
[scene 3: the discovery / decision — image + paragraph]
[scene 4: the resolution — image + paragraph + outcome]
[the moral / what's next — paragraph + CTA]
```

---

### 10. The Bento

**Shape.** Multi-size card grid where card size reflects content weight. One or two large cards, several medium, several small. Reads like a dashboard or app launcher.

**When to use.** Products with multiple distinct features that have *different weights*. Use the bento ONLY if some features genuinely deserve more space.

**Analogs that fit.** Airport departure board, app home screen, real Japanese bento box.

**What it isn't.** A wallpaper of equally-sized cards. If all the cards are the same size, use a uniform grid instead.

**Skeleton:**
```
[header: name + tagline]
[bento grid: 12-col CSS grid, asymmetric]
  - one large card (col-span-6, row-span-2): the moat feature
  - two medium (col-span-3, row-span-2): secondary features
  - four small (col-span-3, row-span-1): tertiary features
[supporting context below the grid]
[CTA]
```

---

### 11. The Tabloid

**Shape.** Loud, dense, opinionated. Big headlines, oversized typography, deliberately busy. Style is the message.

**When to use.** Brands with strong personality (consumer, fashion, music, agencies), brutalist or expressive design directions.

**Analogs that fit.** Tabloid newspaper, punk zine, club flyer, protest poster.

**Skeleton:**
```
[masthead: oversized wordmark]
[headline: 200px display type, maybe rotated or set off-grid]
[supporting deck: 30-50px secondary headline]
[image: full-bleed or pasted-on]
[body: dense columns]
[overlay element: callout, sticker, badge — deliberately busy]
[footer: also loud]
```

---

### 12. The Index

**Shape.** Mostly text. A long list of links/items with minimal visual treatment. Type-driven navigation.

**When to use.** Personal sites, link directories, project listings, reading lists.

**Analogs that fit.** Yellow Pages, dictionary entry, table of contents, ledger.

**Skeleton:**
```
[name + one-line context]
[section heading]
[list of items: each one line, just text]
[section heading]
[list of items]
[footer: minimal]
```

---

### 13. The Atlas

**Shape.** Map or chart as the primary navigation. Reader explores spatially. Other content emerges from interaction with the map.

**When to use.** Geographic products, data visualizations, network/graph products, multi-region offerings.

**Analogs that fit.** Wall map, subway diagram, star chart, family tree.

**Skeleton:**
```
[minimal chrome: header, legend]
[the map/chart: dominant, full-bleed or 70% viewport]
[detail panel: appears on interaction, slides in from edge]
[caption + sources]
[footer]
```

---

### 14. The Pitch

**Shape.** Linear deck-like flow. Each "slide" (section) advances one argument. Designed for serial reading. Optionally has slide numbers.

**When to use.** Investor decks made into web pages, sales presentations, hiring pitches, anything with a structured argument.

**Analogs that fit.** Slide deck, defense brief, sales presentation.

**Skeleton:**
```
[slide 1 (title): big statement, who/what]
[slide 2 (problem): what's broken in the world today]
[slide 3 (insight): the unique observation]
[slide 4 (solution): what you built]
[slide 5 (proof): why it works]
[slide 6 (ask): what you want from the reader]
```

---

### 15. The Demo-Forward

**Shape.** Page IS the demo. Almost no marketing copy. The reader interacts with the product immediately upon landing.

**When to use.** Tools where the product is its own best pitch. AI playgrounds, code editors, generators.

**Analogs that fit.** A piano on the showroom floor, a test-drive parking lot, a fitting room.

**Skeleton:**
```
[barely-there header: name + sign-up link]
[the demo: 100vh, immediately interactive, no instructions needed]
[in-context CTAs: appear after first interaction]
[brief explanation: only AFTER the user has tried it]
[footer]
```

---

### 16. The Conversation

**Shape.** Chat/dialogue UI as the page metaphor. Q&A format, alternating speaker bubbles, or a single thread the reader follows.

**When to use.** AI products, FAQ-style content, products that *are* conversational, support pages.

**Analogs that fit.** Chat app, interview transcript, Socratic dialogue.

**Skeleton:**
```
[header: name + brief context]
[message 1 (the prompt or question)]
[message 2 (the response or feature explanation)]
[message 3]
[message 4]
[input field at bottom: invitation to try it]
```

---

### 17. The Side-by-Side Split

**Shape.** Page is divided vertically into two regions, each holding its own content. Often: marketing copy on one side, product preview on the other.

**When to use.** When you have two equally-weighted parallel narratives. Auth pages, product comparisons, before/after.

**Analogs that fit.** Diptych, courtroom (prosecution / defense), split screen.

**Skeleton:**
```
[left half (50vw): scrollable copy / form / story]
[right half (50vw): sticky preview / image / demo]
[no traditional sections — the split IS the structure]
```

---

### 18. The Letter

**Shape.** Personal address to the reader. Written voice. Signed. Has a sender and a recipient implied.

**When to use.** Founder messages, mission statements, announcement posts, transparency communications.

**Analogs that fit.** Letter from the editor, founder's note, open letter, memo.

**Skeleton:**
```
[salutation: who this is to]
[opening: the situation]
[body: the message, in 3-5 paragraphs]
[turn: the ask or commitment]
[closing: signature, role, date]
[postscript or single CTA]
```

---

## Variety enforcement

When generating multiple pages within the same project or across consecutive runs:

**The rule.** Two successive outputs MUST use different macrostructures. If the last page was a Stat-Led, the next page is something else — not "Stat-Led with different colors."

**Why.** AI converges on whichever macrostructure it was last successful with. Forcing variety prevents the convergence and produces pages that look like a real designer made deliberate different choices.

**How to track.** If implementing as a skill, write a `.blank-planet/log.json` file recording the last 3 macrostructures used. Refuse to repeat any of them unless the project genuinely calls for the same shape.

---

## Macrostructure → analog fit

Not every macrostructure fits every analog. Some pairings are natural:

| Analog | Natural macrostructures |
|---|---|
| Observatory / control room | Stat-Led, Workbench, Atlas |
| Watchmaker / studio | Specimen, Showcase, Workbench |
| Museum / gallery | Specimen, Magazine, Catalog, Story |
| Library / archive | Long Document, Index, Atlas |
| Newsroom / trading floor | Magazine, Bento, Tabloid |
| Zen garden / meditation hall | Manifesto, Letter, Long Document |
| Workshop / lab | Workbench, Demo-Forward, Specimen |
| Stage / theater | Showcase, Story, Side-by-Side |
| Marketplace / bazaar | Catalog, Magazine, Bento |
| Cockpit / bridge | Stat-Led, Workbench, Atlas |
| Dialogue / interview | Conversation, Letter, Pitch |
| Manifesto wall | Manifesto, Tabloid, Letter |

If the analog and macrostructure don't fit naturally, either change the analog or change the macrostructure. They have to support each other.

---

## What NOT to do

- Don't generate without picking a macrostructure first. The default will reassert itself.
- Don't pick a macrostructure that doesn't fit the genre (e.g., Tabloid for a dashboard).
- Don't mix macrostructures within a single page. Pick one and execute it cleanly.
- Don't repeat the same macrostructure on consecutive runs.
- Don't use the Bento just because it's trendy. Bento works when content weights are genuinely uneven.
