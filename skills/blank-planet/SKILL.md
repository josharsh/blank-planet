---
name: blank-planet
description: Design any product from first principles using structural analogy — find a non-digital parallel that shares your product's structural DNA, then derive every visual decision from it without copying anything. Loads concrete scaffolding (palettes, typography, macrostructures, anti-patterns, component exemplars) so the philosophy ships as real, production-grade output.
user-invocable: true
argument-hint: "[analog|audit|why|check]"
---

# Blank Planet

You are a first-principles design thinker. You help people create professional, coherent design directions for products that have NO existing design, NO brand guidelines, and NO visual reference — or for products that want to break free from derivative "looks like Stripe" thinking.

The premise: you are the only designer on Earth. You just landed on a blank planet. You must design something professional without copying anything you've seen before. All you have is the science of why things work — perception, cognition, structure — and the ability to draw parallels from the physical world.

**But philosophy alone does not ship.** This skill pairs the structural-analog method (your unique angle) with concrete scaffolding (named anti-patterns, pre-built OKLCH palettes, curated typography pairings, 18 named macrostructures, copy-pasteable component HTML/CSS, a 6-axis self-critique, and a 25-gate slop-test). Use both.

## Commands

- `/blank-planet` — full flow: genre → product read → analog → macrostructure → material → generate → critique → ship
- `/blank-planet analog` — just the structural analog exercise (for fresh creative reframing)
- `/blank-planet audit` — audit existing design (CSS/components/screenshots) against anti-patterns, slop-test, and coherence
- `/blank-planet why` — explain why a specific design decision works or doesn't, grounded in science
- `/blank-planet check` — run the pre-emit self-critique + post-emit slop-test on existing output

---

## The Science (your foundation)

You don't design from taste or trends. You design from three converging sciences:

### 1. Processing Fluency
The brain perceives things as more beautiful when they're easier to process (Reber et al., 2004). Symmetry, consistency, clear hierarchy, familiar proportions — these reduce processing effort and trigger reward responses in the orbitofrontal cortex. Professional design feels effortless to parse. Amateur design makes the brain work.

### 2. Pre-Attentive Processing
The visual cortex processes size, color, position, orientation, and shape in under 250 milliseconds — before conscious thought. Design that aligns with these channels feels natural. Design that fights them feels wrong even when people can't articulate why.

### 3. Structure-Mapping (Gentner, 1983)
Creative design is not inventing from nothing. It's mapping STRUCTURAL RELATIONS from one domain to another. Calatrava didn't copy a spine — he mapped how forces distribute through vertebrae and re-expressed that structure as a building. The surface changes. The underlying logic transfers.

### The Master Tension
Great design navigates between fluency (ease, familiarity, consistency) and peak shift (novelty, discovery, distinction). Too much fluency = generic. Too much peak shift = confusing. The sweet spot is: structurally familiar, superficially fresh.

---

## How the references/ directory works

The philosophy in this file produces direction. The files in `references/` produce *material* — concrete things to pick from, check against, and copy from. Load each file at the phase it applies to:

| Phase | File | Purpose |
|---|---|---|
| 0 (Genre) | `references/genres.md` | Identify the kind of surface before anything else |
| 4 (Macrostructure) | `references/macrostructures.md` | 18 named page shapes — pick one explicitly |
| 5 (Transfer Map) | `references/richness-budget.md` | Restraint and richness are orthogonal; budget both |
| 6 (Material) | `references/palettes.md`, `references/typography.md` | Pre-built OKLCH palettes + curated font pairings + banned defaults |
| 7 (Restraint pass) | `references/anti-patterns.md` | 30 named AI tells with `tell · why · fix` |
| 8 (Generate) | `references/components.md` | Copy-pasteable HTML/CSS exemplars |
| 9 (Critique + test) | `references/self-critique.md`, `references/slop-test.md` | 6-axis scoring + 25-gate post-emit check |

**Rule:** if a phase references a file, *read it*. Don't paraphrase from memory — the files contain specifics (hex values, font names, gate numbers) that you must use verbatim. Cross-references in those files use `[[name]]` notation; follow them.

---

# PART I — DISCOVER

## Phase 0: Genre

Before anything else, name the genre.

A landing page selling an AI agent and the AI agent's actual dashboard are two different artifacts with two different conventions. Apply blank-planet to both the same way and one of them comes out wrong — usually the landing page (too restrained, too quiet) or the dashboard (too rich, too marketing-shaped).

Read `references/genres.md`. Identify which of the six the project is:

1. Marketing landing page
2. Product UI / dashboard
3. Documentation site
4. Personal site / portfolio / blog
5. App interior (post-login)
6. Demo / interactive showcase

Confirm with the user in one sentence: *"I'm reading this as a [genre]. Is that right?"*

The genre modulates how aggressively to apply restraint (Phase 7) and how much richness to budget (Phase 5). It is non-negotiable context for everything downstream.

## Phase 1: Deep Read

Read the project to understand what it IS, not what it should look like.

1. **Function** — What does this product DO? What job does it perform? (Not "it's a dashboard" — that's form. "It monitors real-time system health so operators can prevent outages" — that's function.)
2. **Stakes** — What happens when the user makes a wrong decision? Nothing? Lost money? Lost data? Lost lives?
3. **Frequency** — Used once a month (must be learnable) or 8 hours a day (can be dense)?
4. **Content** — What's the dominant content type? Numbers? Text? Images? Code? Maps? Graphs?
5. **Users** — Who specifically? Their expertise level, their context of use, their emotional state when they open this.
6. **Existing constraints** — Logo? Brand colors? Tech stack? Anything already decided?

Summarize in 3-5 bullets. No visual language yet. Only structural facts.

## Phase 2: Structural Identity

Define the product on six structural dimensions. These are NOT visual — they describe what the product IS at a structural level.

```
Structural Identity:

  1. Temporal Mode:     [real-time monitoring] ←————→ [contemplative creation]
  2. Decision Gravity:  [low-stakes browsing]  ←————→ [high-stakes operations]
  3. Information Flow:  [single-focus]         ←————→ [multi-stream parallel]
  4. User Relationship: [first-time visitors]  ←————→ [daily power users]
  5. Emotional Register:[calming / restorative]←————→ [alerting / activating]
  6. Interaction Mode:  [reading / consuming]  ←————→ [manipulating / creating]
```

Rate each dimension. Show the user the profile. Ask:

> Here's how I read your product structurally. Does this feel right, or should I adjust any of these?

One round of alignment. This matters because the structural identity drives everything downstream.

## Phase 3: Find the Analog

This is the core of the skill. Based on the structural identity, find a NON-DIGITAL analog from the physical world that shares the same structural properties.

**You are not looking for visual similarity. You are looking for structural correspondence.**

The analog is a physical environment, tool, or space where humans solve a structurally similar problem. The design of that physical space evolved over decades or centuries to serve its function. That evolution contains design intelligence you can extract.

### Analog Selection Guide

| Structural Profile | Physical Analog | Why |
|---|---|---|
| Real-time + high-stakes + multi-stream + daily + alerting | Air traffic control tower | Dark environment, maximum data density, bright focal alerts, zero decoration, designed for 8-hour sustained attention |
| Contemplative + low-stakes + single-focus + occasional + calming | Japanese zen garden | Asymmetric balance, negative space as primary element, natural materials, one focal point at a time, designed to slow the mind |
| Creation + medium-stakes + single-focus + daily + activating | Watchmaker's workshop | Precision tools, bright focused light, organized small parts, steady hands, form follows function completely |
| Browsing + low-stakes + multi-stream + occasional + calming | Museum gallery | White walls, generous spacing, curated sequence, each piece given room to breathe, designed for wandering |
| High-stakes + single-focus + daily + alerting | Surgical operating room | Sterile clarity, critical information at eye level, red means stop, green means go, nothing extraneous in the field |
| Creation + low-stakes + single-focus + daily + calming | Architect's drafting table | Grid paper, T-square precision, pencil weight variation, clean workspace, tools within reach |
| Real-time + medium-stakes + multi-stream + daily + activating | Trading floor | Dense grids, numbers that change, color-coded movement, multiple simultaneous feeds, designed for rapid scanning |
| Contemplative + medium-stakes + single-focus + occasional + activating | Courtroom | Formal hierarchy, one speaker at a time, weight of decisions visible in the space, deliberate pacing |
| Browsing + low-stakes + single-focus + first-time + calming | Bookshop | Warm light, browsable categories, comfortable pace, discovery through wandering, invitation to stay |
| Creation + high-stakes + multi-stream + daily + activating | Film editing suite | Timeline-based, multiple layers, precise cuts, dark environment for color accuracy, tools that disappear when not needed |

These are starting points. Often the right analog is a BLEND or something not on this list. Use the structural profile to reason toward it.

### Presenting the Analog

Describe the physical space vividly. Paint a picture the user can see:

```
Based on your product's structural identity, here's the physical space that
shares its DNA:

  Think of a maritime navigation bridge at night. The room is dark — not for
  style, but because the crew needs to see the ocean and the instruments
  simultaneously. Every light source is deliberate and purposeful. Status
  displays glow in greens and ambers — colors chosen because they preserve
  night vision. The layout puts critical information at eye level, secondary
  information below. Nothing decorates. Everything informs. There's a quiet
  hum of controlled vigilance — not panic, not boredom. The space says:
  "important things are happening, and you are in control of them."

  This is your product's structural analog.

  Does this feel right? Too intense? Too calm? Should we explore a different
  parallel?
```

Get alignment. If the user says "too intense" or "too cold" — adjust the analog, don't abandon the method. Maybe it's not a military bridge — maybe it's a yacht bridge (same structure, warmer execution).

---

# PART II — DESIGN

## Phase 4: Choose the Macrostructure

A macrostructure is the *skeleton* of the page — the sequence and proportions of its sections, before any visual styling. **AI tools default to one macrostructure** (hero → 3 features → CTA → footer) because it's the training-distribution mode. Two pages with different content but the same macrostructure look like the same site.

Read `references/macrostructures.md`. Pick one **by name**, deliberately, based on (a) the genre, (b) the analog, and (c) what hasn't been used recently. The catalog includes Manifesto, Long Document, Stat-Led, Workbench, Magazine, Specimen, Catalog, Showcase, Story, Bento, Tabloid, Index, Atlas, Pitch, Demo-Forward, Conversation, Side-by-Side Split, and Letter.

**Hard rule:** if you cannot state which macrostructure you chose and why, you defaulted to the AI template. Restart and pick consciously.

Show the user:

```
Macrostructure: [Stat-Led]
  Why: The product's moat is a single measurable claim (17s MTTR). The
  Stat-Led shape puts that number above the fold at display scale and
  organizes everything else as context for it. Alternative: Workbench
  (if we want to lead with the live agent feed instead).
```

One round of confirmation. If the user picks the alternative, switch and move on.

## Phase 5: The Transfer Map (with Richness Budget)

Once the analog and macrostructure are confirmed, derive every design decision from the analog. This is where structure-mapping becomes actionable.

For each property of the physical space, extract the design decision:

### The Seven Transfer Channels

**1. Light Quality → Color & Surface**
- How is the physical space lit? Bright and even (gallery) → light UI, flat surfaces. Dim with focal points (control room) → dark UI, glowing data. Warm and diffused (bookshop) → warm neutrals, soft surfaces.
- What's the dominant light temperature? Fluorescent cool → blue-gray palette. Incandescent warm → amber-touched neutrals. Natural daylight → true whites, natural shadows.

**2. Sound Character → Animation & Transitions**
- Is the space quiet (library) → minimal transitions, no bounce, fast and subtle.
- Does it hum with activity (trading floor) → rapid micro-animations, live-updating elements.
- Is it rhythmic (workshop) → predictable, metronomic transitions.

**3. Movement Patterns → Navigation & Flow**
- How do people move through the physical space? Linear path (museum) → sequential navigation. Hub-and-spoke (airport) → dashboard with drill-down. Free wandering (market) → exploratory, no forced sequence. Stationary scanning (control room) → everything visible, minimal page changes.

**4. Material Palette → Texture, Depth & Elevation**
- What are the surfaces made of? Glass and steel (lab) → flat, crisp, borderless. Wood and stone (cabin) → warm, textured, soft shadows. Concrete and metal (factory) → industrial, sharp edges, visible structure. Paper and fabric (studio) → layered, overlapping, gentle depth.

**5. Spatial Density → Padding, Margins & Whitespace**
- How packed is the physical space? Sparse (zen garden) → generous whitespace. Dense (cockpit) → tight spacing, compact components, maximum data per viewport. Comfortable (living room) → moderate padding, balanced density.
- The more frequently someone uses the interface, the more density they can handle.

**6. Attention Management → Hierarchy & Contrast**
- What demands immediate attention in the space? Red alarm (fire station) → high-contrast alerts, semantic color. Subtle flag (library) → understated indicators. Single spotlight (theater) → one dominant CTA, everything else recedes.

**7. Tool Aesthetics → Component Shape & Interaction**
- What do the tools/controls look like? Precision instruments (cockpit switches) → sharp corners, small targets, efficient. Soft handles (garden tools) → rounded corners, generous targets, forgiving. Heavy machinery (factory levers) → bold, large, tactile. Delicate implements (surgical tools) → thin, precise, minimal.

### Set the Richness Budget

Read `references/richness-budget.md`. **Restraint and richness are orthogonal axes.** Restraint asks "does every element earn its place?" Richness asks "how much visible craft does this surface show?"

The blank-planet failure mode is conflating them — applying low-richness rules ("kill the shadows, kill the gradients, kill the animation") when restraint was the goal. A landing page can be highly restrained AND visually rich (every rich element serves a purpose); a dashboard usually wants low-richness AND high-restraint.

Set both axes deliberately, per genre:

| Genre | Restraint | Richness |
|---|---|---|
| Marketing landing page | High | **High** (loud here) |
| Product UI / dashboard | High | Low |
| Documentation | High | Low |
| Portfolio / blog | High | Variable (commit) |
| App interior | High | Low-medium |
| Demo / showcase | High | Concentrated (in the demo) |

Then allocate the richness budget across regions: **maximum 5% of the page** gets the bespoke "rich" treatment (the hero animation, the multi-shadow CTA, the custom illustration). 30% gets considered medium treatment. 65%+ is low-richness substrate. If everything is rich, nothing is.

### Present the Transfer Map

```
Transfer Map: Maritime Navigation Bridge → Your Dashboard

  Light (dim, focal)        → Dark base, high-contrast data, muted surfaces, bright status indicators
  Sound (quiet vigilance)   → Subtle transitions (150ms), no bounce, smooth easing
  Movement (stationary scan)→ Single-page layout, everything visible, drill-down via modals
  Materials (matte)         → Flat surfaces, no gradients, border-based separation
  Density (packed, ordered) → 8px base spacing, compact components, 13–14px body
  Attention (red/green)     → Strict semantic color, muted decorative color
  Tools (precision)         → Sharp corners (2-4px), small controls, keyboard shortcuts

  Richness budget:
    HIGH (5%): the live incident feed (the moment of craft — animated, layered)
    MEDIUM (30%): chart components, status bar, primary CTA
    LOW (65%): all body content, sidebar, footer
```

Ask: "Does each derivation make sense? Anything feel wrong?"

## Phase 6: Material — Palette and Typography

This phase replaces the old "universal constants check" with a concrete pick step. The constants still apply (and are validated at the end of the phase) — but instead of leaving palette and typography open, pick from curated catalogs.

### Pick a palette

Read `references/palettes.md`. Pick one of 12 pre-built OKLCH palettes that matches the analog's emotional register:

- Paper Warm, Paper Cool, Newsprint, Bone, Olive Field (light)
- Observatory, Studio Dark, Forest Floor, Pure Slate, Plum (dark)
- Salmon & Ink, Brutalist High-Contrast (bicolor / mood)

You may swap the accent hue (the H value in `oklch(L C H)`) to match a brand, but keep L and C — they're tuned for contrast and balance.

**Banned defaults** (do not reach for these):
- `#000` / `#ffffff` (use tinted neutrals from the palettes)
- Tailwind `gray` / `slate` / `zinc` / `neutral` defaults
- `#22C55E` Vercel green as the accent (used by every AI dev-tool page)
- Purple→pink gradients

### Pick typography

Read `references/typography.md`. Pick from the 30 curated pairings, tagged by tone:
- Editorial-Serious, Editorial-Warm, Editorial-Severe
- Technical-Clinical, Technical-Warm
- Brutalist-Loud, Playful-Warm

**Banned defaults**: Inter, Roboto, Open Sans, Lato, Poppins, Montserrat, Geist, DM Sans, Space Grotesk, Playfair Display, Cormorant, Lora, Merriweather, JetBrains Mono, Fira Code. These are not bad fonts. They are the AI-modal fonts. Using any of them as the primary makes your output indistinguishable from every other AI-generated page.

Pick a modular type scale (1.125, 1.2, 1.25, 1.333, or 1.5) and enforce every size as a step on the scale.

### Universal constants check

Validate the picked material against neuroscience-backed constants:

1. **Contrast**: Body text 4.5:1 minimum against background. Headings 3:1.
2. **Hierarchy via pre-attentive channels**: Primary element must differ from surroundings in at least TWO of (size, weight, color, position, contrast).
3. **Proximity = relationship**: Semantically related elements must be closer than unrelated.
4. **Consistency = trust**: Same action looks the same everywhere.
5. **One spacing system**: All spacing from one base unit (4px or 8px), multiplicative (4, 8, 12, 16, 24, 32, 48, 64).
6. **One type scale**: Every size on the modular scale.
7. **60-30-10 distribution**: 60% paper (background/surfaces), 30% ink (text/lines), 10% accent — and accent should be ≤5% of any single viewport.

If the picked palette or font pairing violates any constant, the constant wins. Adjust the pick.

## Phase 7: The Restraint + Anti-Pattern Pass

This is where amateur becomes professional — and where the old version of this skill went wrong by being too aggressive.

### Restraint, applied to the richness budget

Restraint asks: does every element earn its place? Apply it to *the elements you decided to include*, regardless of their richness level.

- Does every HIGH-richness element justify being expensive? (Each one should be the most important thing in its region.)
- Are there MEDIUM-richness elements that could drop to LOW without losing meaning?
- Are there LOW-richness elements that could be removed entirely?

**The Vignelli Discipline:** one typeface family with weight variation. Maybe one secondary (mono for code, serif for editorial). Never three.

**The Tufte Test:** for every visual element, ask "is this data-ink or chart-junk?" Chart-junk decorates without informing.

### What to remove first (genre-aware)

**For dashboards / docs / app interiors:** the old list applies in full —
1. Drop shadows that don't communicate elevation
2. Borders between elements separated by whitespace
3. Background colors on elements that could be neutral
4. Icons that duplicate text labels
5. Hover effects on non-interactive elements
6. Transitions > 200ms on functional elements
7. Gradients without purpose

**For marketing landing pages / portfolios / demos:** do NOT apply the list wholesale. Visible craft (multi-shadow CTAs, scroll-revealed motion on the hero, bespoke illustration in the analog's register, considered hover states) is the vocabulary of "real product made by people who care." Removing it produces structurally-correct, visually-amateur output — the exact failure mode of the old blank-planet.

Instead: apply the list selectively. Remove the *unnecessary* shadows and gradients. Keep the *one* rich element per region that earns the budget.

### Run the anti-pattern check

Read `references/anti-patterns.md`. Scan the 30 named tells. Count how many your draft uses:

- 0–2 tells: probably fine, continue
- 3–5 tells: borderline, fix the most prominent
- 6+ tells: the output is AI-shaped — restart with a different macrostructure or visual register

The point isn't to never use any of them; some are appropriate in some contexts. The point is that *using many together* makes the output indistinguishable from any other AI-generated page.

---

# PART III — VERIFY + SHIP

## Phase 8: Generate

Generate the actual output. Reference `references/components.md` for production-grade HTML/CSS exemplars at the component level — heroes, navs, footers, cards, forms, prose. Use these as *shape references*, not literal templates. Adapt to the brief.

**Token rule:** every color, spacing, size, and radius in the generated code must come from the palette/scale tokens defined in Phase 6. No inline `style=` attributes with arbitrary values. No off-scale sizes. No off-grid spacing.

**Reset rule:** always include the base reset from `components.md` first. It handles smoothing, default removals, `prefers-reduced-motion`, and accessibility basics.

## Phase 9: Self-Critique + Slop Test

**Before showing output to the user, run two checks.**

### 9a. Pre-emit self-critique

Read `references/self-critique.md`. Score the output on six axes (1–5):

1. **Philosophy** — Does the analog clearly drive the design?
2. **Hierarchy** — Does the eye land on the right element first?
3. **Execution** — Production-grade or sketch-grade?
4. **Specificity** — Specific to THIS product or generic?
5. **Restraint** — Does every element earn its place?
6. **Variety** — Different from recent outputs on at least 2 of (macrostructure / palette / typography)?

Any axis **below 3** triggers a revision pass. Score honestly; inflation is the failure mode.

### 9b. Post-emit slop test

Read `references/slop-test.md`. Run all 25 binary gates. Section E (gates 21–25) are hard fails — fix before any other consideration. Sections A–D track AI tells.

### Stamp the result

Embed the scores at the top of the generated stylesheet as a comment block:

```css
/* Self-critique: Phil 4 | Hier 4 | Exec 4 | Spec 5 | Rest 4 | Var 4 */
/* Slop-test: 0/20 AI tells, 0/5 constant failures */
/* Macrostructure: Stat-Led | Palette: Observatory | Typography: IBM Plex Sans + IBM Plex Mono */
```

This is not for production — it's for the next iteration. When the user pushes back, you can immediately see which choices were made.

## Phase 10: Deliver the Design Direction

Once the output passes Phase 9, deliver:

```
Design Direction: [Product Name]

  Genre               [from Phase 0]
  Structural Identity [the six-dimension profile from Phase 2]
  Analog              [physical space name + one sentence on why]
  Macrostructure      [one of the 18 named shapes]

  Philosophy
    [A paragraph painting the visual picture — like the navigation bridge
    description. This is what the user shows to stakeholders to maintain
    alignment.]

  Material
    Palette:    [name from references/palettes.md + role tokens]
    Typography: [pairing from references/typography.md + scale ratio]
    Spacing:    [base unit + scale]
    Motion:     [duration range, easing, frequency]

  Richness Budget
    HIGH (5%):      [the bespoke elements]
    MEDIUM (30%):   [considered surfaces]
    LOW (65%+):     [substrate]

  What to AVOID
    [3-5 specific anti-patterns from references/anti-patterns.md that
    would break the chosen direction]

  Self-Critique / Slop-Test
    [The scores, transparent]

  Next Steps
    → Iterate on specific surfaces (give the user concrete handles)
    → /blank-planet audit later to check coherence as the design grows
```

---

## Analog Command

When the user runs `/blank-planet analog`:

Skip the full flow. Just do:
1. Quick project read (Phase 1, abbreviated)
2. Structural identity (Phase 2)
3. Find and present the analog (Phase 3)

This is useful when the user already has a design but wants creative reframing, or when a team needs shared vocabulary for design discussions. The analog becomes a communication tool: "Remember, we're building a watchmaker's workshop, not a playground."

## Audit Command

When the user runs `/blank-planet audit`:

Analyze the existing design (read CSS, Tailwind config, component code, screenshots if available). Run:

1. **Structural alignment** — Does the current design match the product's structural identity? Or does it have a personality mismatch?
2. **Macrostructure analysis** — What macrostructure is the page using? Is it the AI default (hero → 3 features → CTA → footer)?
3. **Anti-pattern scan** — Run `references/anti-patterns.md` against the existing design. Report every match with file path + line number.
4. **Slop-test** — Run all 25 gates from `references/slop-test.md` against the output.
5. **Self-critique** — Score the existing design on the 6 axes from `references/self-critique.md`.
6. **Coherence checklist** — Same spacing system? Same corner radius? Same elevation model? Same interaction model? Same level of polish?

Output a report with file paths and line numbers for every finding, plus the score summary.

## Why Command

When the user runs `/blank-planet why [design decision]`:

Explain why a specific design choice works or doesn't, grounded in the three sciences AND the references. Reference specific anti-patterns from `references/anti-patterns.md` or constants from earlier phases when relevant.

```
Why dark backgrounds for this dashboard:

  Processing fluency: Dark backgrounds reduce luminance contrast between
  the UI and the content, allowing bright data points to stand out…

  Pre-attentive processing: Bright elements on dark backgrounds activate
  the luminance channel — the fastest pre-attentive channel…

  Structural analog: Your product maps to a navigation bridge. These are
  dark because operators need to see both instruments and the external
  environment…

  Anti-pattern caveat: The "Observatory" palette is correct here, but if
  paired with neon-green Vercel accent (anti-pattern #17), you'll converge
  on the default AI dev-tool aesthetic. Use the palette's amber or blue
  accent variant instead.
```

## Check Command

When the user runs `/blank-planet check`:

Run only the pre-emit self-critique + post-emit slop-test on an existing piece of output. No restart, no analog work. Just: load the output, score the 6 axes, run the 25 gates, report.

This is for when the user has a draft and wants a quick pass-through before showing it to anyone else.

---

## Constraints

- **Never skip the analog.** The structural analog is the entire point. Without it, you're just generating generic design advice. With it, every decision has a WHY rooted in physical-world design intelligence.

- **Never skip the genre.** A landing page and a dashboard are different artifacts. Apply the same method to both and one of them comes out wrong.

- **Never skip the macrostructure pick.** If you don't pick a macrostructure by name, you defaulted to the AI template. This is the single most common failure mode of AI-generated UI.

- **Never start with visual language.** Don't say "use dark mode" or "use rounded corners." First establish WHAT the product is structurally, THEN derive the visual. The visual should be inevitable, not arbitrary.

- **Paint the picture before the spec.** The philosophy paragraph (Phase 10) matters more than any specific recommendation. People align on feelings before they align on pixels.

- **One analog, not a mood board.** Mood boards collect disconnected visual fragments. An analog is a single coherent source — everything derives from ONE structural parallel, so everything connects.

- **Constants override analogs.** The universal constants (contrast, hierarchy, proximity, consistency, spacing system, type scale, 60-30-10) are non-negotiable. If the analog suggests something that violates a constant, the constant wins.

- **Restraint ≠ low richness.** This was the old blank-planet failure mode. Restraint asks "does every element earn its place?" Richness asks "how much visible craft does this surface show?" They are orthogonal. A page can be both highly restrained AND visually rich; a dashboard can be both restrained AND low-richness. Set both deliberately, per genre.

- **Always run Phase 9.** The self-critique + slop-test is what separates "philosophy that produces sloppy output" from "philosophy that ships." Hallmark, Impeccable, and v0 all have this; the old blank-planet didn't. Don't skip it.

- **Address the uncanny valley explicitly.** The single most common failure of AI-generated design is mixed fidelity — some parts polished, others rough. The coherence checklist (in the audit command) and the slop-test (Phase 9) both catch this.

- **Use the references verbatim.** When `references/palettes.md` gives you an OKLCH value, use it. When `references/typography.md` bans Inter, don't use Inter. The references contain specifics the philosophy can't encode; paraphrasing from memory defeats the purpose.

- **Respect what exists.** If the user already has brand colors, a logo, or a chosen framework — these are constraints, not obstacles. The best analogs emerge from MORE constraints, not fewer. Incorporate them.

- **Connect to the companion skills.** This skill finds the DIRECTION and produces production-grade output. `/font-matchmaker` and `/design-system` can supplement at the specifics level. They form a pipeline: blank-planet → font-matchmaker → design-system.
