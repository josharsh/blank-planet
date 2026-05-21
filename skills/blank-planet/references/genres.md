# Genres: What Kind of Surface Are You Designing?

The blank-planet method derives visual decisions from a structural analog. But the analog alone is not enough: a *landing page* selling an observatory and the *observatory itself* are two different kinds of artifact with two different genre conventions.

This file names the six genres a designer is most likely to be working in, and what changes about the rest of the blank-planet method depending on which genre applies.

**Use this file as Phase 0**: before reading the project, decide which genre you're in. Then run the analog method *with that genre's baseline expectations layered on top*.

---

## The six genres

### 1. Marketing landing page
**What it is.** A single-purpose page selling a product, service, or idea. The reader arrives cold; you have 5 seconds to communicate value; the goal is a single conversion event (sign-up, demo, download).

**Conventions.** Loud display typography, a hero with a clear pitch, social proof, a demonstration of the product (screenshot, video, or interactive demo), pricing if applicable, a CTA. Density: low-to-medium. Visual richness: high. Animation: noticeable.

**What "professional" looks like here.** Premium typography, generous spacing, a strong visual anchor (product preview), confident copy, restrained color, deliberate motion on one or two elements. The page can be *visually rich* without being chart-junk.

**How the analog applies.** The analog informs the *register* (formal vs casual, technical vs warm, urgent vs contemplative). It does NOT override the genre's structural conventions. An "observatory" landing page is still a landing page — it just has the visual vocabulary of an observatory.

**What to avoid.** Don't apply pure-restraint guidance (drop shadows, kill gradients, no animation) here. Marketing pages need the visual vocabulary that signals "this is a real product, made by people who care." A dashboard's restraint becomes a landing page's amateurism.

**Density target.** ~7-12 sections. Page height: 4-6× viewport.

---

### 2. Product UI / dashboard
**What it is.** The actual operational surface of a tool. Used by people doing a job. Repeated daily, possibly for hours.

**Conventions.** Dense data, clear hierarchy, persistent navigation, immediate feedback on interaction, minimal decoration. Density: high. Visual richness: low. Animation: functional only.

**What "professional" looks like here.** Information at glance, every pixel earns its place, semantic color (red = bad, green = good), keyboard navigation, fast loading, no marketing copy, no celebration of itself. The tool gets out of the way.

**How the analog applies.** The analog drives every visual decision. Air traffic control tower, surgical operating room, watchmaker's workshop — these are the kinds of analogs that produce the right register. The Phase 6 restraint pass *should* be aggressive here. Drop the shadows, kill the gradients, strip decoration.

**What to avoid.** Marketing-page tropes are *poison* here. No giant hero. No "trusted by" strip. No glassmorphic cards. No purple gradients. No 4-column stat bar (unless the bar is the actual data display). No CTA buttons soliciting actions you've already taken.

**Density target.** Information-per-viewport should match the user's expertise level and usage frequency. Power users (8 hours a day) can handle very high density. First-time users need restraint.

---

### 3. Documentation site
**What it is.** Reference material for using a product, API, or codebase. Reader is doing a task and wants to find the answer fast.

**Conventions.** Two- or three-column layout (nav + content + on-page TOC), monospace code blocks, deep page hierarchy, search-first, persistent navigation, anchor links.

**What "professional" looks like here.** Body type at 16-18px, generous line-height (1.6-1.8), code blocks that look like code (mono font, syntax highlighting, copy button), a search box that works, sidebar always visible, prev/next navigation at page bottom.

**How the analog applies.** The analog drives tone (encyclopedia vs cookbook vs lab notebook), but the genre dictates the structure. Documentation that ignores documentation conventions is unusable, regardless of how beautiful the analog is.

**What to avoid.** No hero. No animation on scroll. No marketing copy. No gradient text. No "Get started for free" button at the bottom of every page. No three-card feature grid pretending the API is a product launch.

**Density target.** Body text 65-75 characters wide. Code blocks full content-width. Nav sidebar 240-280px. Content column 720-820px.

---

### 4. Personal site / portfolio / blog
**What it is.** A site that *is* the brand. A writer, designer, founder, artist showing work or ideas. The reader is curious about the person.

**Conventions.** Strong personal voice, typography as identity, often editorial register (long-form text, large display type, generous margins). Density: variable. Visual richness: can go either direction (very restrained or very expressive).

**What "professional" looks like here.** Type-driven design (the typography IS the brand), a strong viewpoint reflected in the visual choices, real content (not lorem ipsum), and *idiosyncrasy*. A portfolio that looks like every other portfolio is not a portfolio — it's a template.

**How the analog applies.** The analog should be unusual here. Editorial parallel — a literary journal, a museum monograph, a wine label, a small-press book — produces more interesting design than the SaaS analogs that dominate AI output.

**What to avoid.** Don't apply SaaS conventions. No "Hi, I'm [name], a [role]" headline. No 3-column "Skills / Projects / Contact" grid. No animated icon-cards. No "let's work together" CTA at the bottom unless you actually want gig work.

**Density target.** Often deliberately low. Long single-column scroll, large type, generous whitespace.

---

### 5. App interior (post-login)
**What it is.** What users see after signing in. Could be a settings page, an inbox, a list view, a detail page — anything inside the authenticated boundary.

**Conventions.** Persistent shell (nav + topbar), task-focused content, immediate feedback, predictable patterns across screens. Density: medium-high.

**What "professional" looks like here.** Internal consistency over external uniqueness. The shell should be invisible after the first session. Patterns should repeat — same action looks the same everywhere, same status colors mean the same thing, same icons trigger the same expectations.

**How the analog applies.** The analog can shape the visual register, but consistency with established UI patterns (form labels above fields, primary action bottom-right of modals, breadcrumbs at top) overrides analog-inspired novelty.

**What to avoid.** Don't reinvent navigation patterns. Don't apply marketing tropes inside the app. Don't use display typography for UI labels. Don't surprise the user with unexpected interactions.

**Density target.** Match the screen's job. Inbox is dense. Settings is medium. Onboarding flow is sparse.

---

### 6. Demo / interactive showcase
**What it is.** A page whose primary purpose is to *show* something working — a product demo, a generative art piece, an interactive explanation, a launch announcement. The interactivity is the point.

**Conventions.** Large central interactive area, supporting controls, minimal chrome around the demo. Visual richness: depends entirely on what's being shown.

**What "professional" looks like here.** The demo dominates the page. Everything else is supporting cast. Affordances (what's clickable, draggable, interactive) are immediately readable. Performance is non-negotiable — a slow demo undermines whatever it's demonstrating.

**How the analog applies.** The analog shapes the supporting cast (chrome, typography, controls), but the demo itself has its own internal logic. A particle physics simulator doesn't get redesigned because the analog is a museum gallery.

**What to avoid.** Don't bury the demo under explanation. Don't add scroll-reveal animation on top of the interactive content. Don't surround the demo with marketing pitches before the user has had a chance to interact.

**Density target.** Demo takes 60-80% of viewport on first paint. Supporting content compact.

---

## How genre changes the blank-planet method

The eight phases of blank-planet apply to all genres, but specific phases shift in weight depending on genre:

| Phase | Marketing | Product UI | Docs | Portfolio | App interior | Demo |
|---|---|---|---|---|---|---|
| 1: Deep read | Standard | Standard | Standard | Heavily personal | Standard | Standard |
| 2: Structural identity | Standard | **Critical** | Light | Light | Standard | Demo-driven |
| 3: Find analog | Standard | **Critical** | Light | **Critical (unusual)** | Standard | Light |
| 4: Transfer map | **Modulate richness** | Standard | Light | Standard | Standard | Standard |
| 5: Universal constants | Standard | Standard | **Critical** (reading) | Standard | Standard | Standard |
| 6: Restraint pass | **Modulate** (not too aggressive) | **Aggressive** | Standard | Standard | Standard | Apply to chrome only |
| 7: Coherence audit | Standard | **Critical** | Standard | Standard | **Critical** | Standard |
| 8: Design direction | Includes macrostructure | Includes density profile | Includes IA pattern | Includes voice | Includes shell pattern | Includes interaction grammar |

The key insight: **Phase 6 (the restraint pass) is the most genre-sensitive step**.

For dashboards, more restraint is better. For marketing pages, restraint past a certain point starts removing the things that signal "premium product." For portfolios, restraint can either be the whole point (editorial minimal) or completely wrong (expressive maximalist).

The blank-planet skill historically applied uniform restraint everywhere. That's the failure mode. Apply restraint *to the genre's baseline*, not against it.

---

## The richness budget (companion to restraint)

Restraint says: "Remove anything that doesn't earn its place."

Richness budget says: "Within the genre's expectations, how visually rich should this be?"

These are orthogonal. A landing page can be *high-richness* (bento grid, animated demo, multi-layer shadows on one CTA, gradient borders) AND *high-restraint* (every element earns its place, no chart-junk, single accent color).

The failure mode is treating "restraint" and "minimal richness" as the same thing. They aren't. See [[richness-budget]] for the framework.

---

## Quick decision tree

When starting:

1. **Is this a single-page sales pitch?** → Marketing landing page.
2. **Will the user log in and use this for a job?** → Product UI / dashboard or App interior.
3. **Is the primary content a reference for using something else?** → Documentation site.
4. **Is this someone's personal home on the internet?** → Portfolio / blog.
5. **Is the interactivity the main thing?** → Demo / interactive showcase.
6. **None of the above?** → It's probably marketing landing page. Default there.

Confirm the genre with the user before running the rest of the method. One sentence: *"I'm reading this as a [genre]. Is that right?"*
