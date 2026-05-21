# Slop Test: 25 Post-Emit Gates

Run this checklist on every generated UI **after** generation, **before** shipping. Each gate is a binary yes/no question. Any "yes" in the first 20 (the AI-tell gates) requires a fix or a deliberate justification logged with the output. Any "yes" in the last 5 (the constants gates) is a hard fail — fix before shipping.

This list catches concrete failures that abstract principles miss. It is not a replacement for the design method; it's the safety net after.

**Score the page in one pass.** If you find yourself rationalizing (*"well, the gradient is fine because…"*), the gate caught a real issue. Fix it.

---

## Section A: Macrostructure tells (gates 1–5)

### Gate 1: The AI structural fingerprint
Is the page shape `hero → 3-feature grid → CTA → footer`?

If **yes**, you used the AI template. Restart with a different macrostructure from [[macrostructures]].

### Gate 2: Three-card pattern
Is there a 3-column grid of icon + title + 1-2 sentence cards *anywhere* on the page?

If **yes**, was the count of 3 driven by the data, or by the layout? If the data has 4, 5, or 7 items, you forced 3 to fit the template. Restructure as a list, a column, or a different grid.

### Gate 3: Marquee logo strip with fake logos
Does the page have a horizontally-scrolling row of "TRUSTED BY" company names using Unicode glyphs (◇ ⌬ ◉) or generic placeholder shapes?

If **yes**, remove the strip entirely. Replace with one real testimonial or nothing.

### Gate 4: The 4-stat horizontal bar
Below the hero or as a section divider: 4 stats in a row, each with a large monospaced number?

If **yes**, demote 3 of them and feature the strongest stat as a single hero element, or move all stats into body copy where they earn context.

### Gate 5: Pricing 3-card with middle highlight
Three pricing tiers in a row, middle has gradient background and "Most popular" badge poking out the top?

If **yes**, vary the visual treatment dramatically or use a different layout (2-card, single card with tier toggle, table-style comparison).

---

## Section B: Visual tells (gates 6–12)

### Gate 6: Aurora-blob background
Hero contains 2+ large blurred radial gradients positioned absolutely (purple/pink/blue blobs at 0.2-0.4 opacity)?

If **yes**, remove all but one, or replace with a subtle grid backdrop / noise texture.

### Gate 7: Gradient headline text
Does any heading use `background-clip: text` with a multi-color gradient (especially purple→pink, blue→purple, orange→red)?

If **yes**, replace with a single solid accent color, applied to **one word** only — or no color emphasis at all.

### Gate 8: Glassmorphism on multiple surface types
Is `backdrop-filter: blur(...)` used on more than one surface type (e.g., nav AND cards AND modals)?

If **yes**, pick ONE surface for blur. Use a different elevation treatment (border, tint, shadow) for the others.

### Gate 9: Card-in-card nesting
Are there cards inside cards inside cards? (3 or more levels of background tint with their own borders/radii)

If **yes**, flatten. Use sections + cards, not cards + cards + cards.

### Gate 10: Hero with fake terminal mockup
Does the hero include a "terminal" with macOS chrome (red/yellow/green dots), staggered fade-in log lines, and color-coded timestamps?

If **yes**, replace with one of: a real static screenshot, an actual interactive demo, a real Slack/GitHub UI mockup, or no media at all.

### Gate 11: Default-attractor sameness
Is the page's overall vibe "dark UI + neon green accent + Inter + monospace + glassmorphic cards"?

If **yes**, you defaulted to the modal dev-tool aesthetic. Pick a different palette (see [[palettes]]) and a different typographic pairing (see [[typography]]).

### Gate 12: Hover effect on non-interactive cards
Do informational cards (not links, not buttons) scale, lift, or border-glow on hover?

If **yes**, remove. Hover effects belong only on interactive elements.

---

## Section C: Typography tells (gates 13–16)

### Gate 13: Inter as the primary font
Is the page's primary font Inter (or Roboto, Open Sans, Lato, Poppins, Montserrat, Geist, DM Sans, Space Grotesk)?

If **yes**, swap to a less-defaulted pairing from [[typography]]. The font alone changes 40% of the perceived quality.

### Gate 14: Two-line button at 375px
At a 320–375px viewport width, does any primary or secondary CTA button wrap to two lines?

If **yes**, shorten the button text (≤14 chars) or reduce padding.

### Gate 15: Three vertical typographic registers under the H1
Is there a stack: `<h1>` (large) + subheading (24-32px) + body paragraph (16px), all centered, all stacked under each other above the fold?

If **yes**, this is the AI hero stack. Cut one. Usually the subheading is redundant with either the H1 or the body paragraph.

### Gate 16: Eyebrow on every section
Does every `<section>` have a small uppercase mono label (`01 / OVERVIEW`, `02 / FEATURES`, etc.) above its heading?

If **yes**, the eyebrows are decoration, not navigation. Keep them only where they serve a real ordering purpose; remove from the rest.

---

## Section D: Color & content tells (gates 17–20)

### Gate 17: Pure black or pure white
Does the CSS use `#000`, `#000000`, `#fff`, `#ffffff`, or `rgb(0,0,0)`/`rgb(255,255,255)` anywhere as a background or text color?

If **yes**, swap to tinted equivalents: `oklch(10% 0.005 90)` and `oklch(98% 0.008 90)`. Pure values render harshly and break perceptual softness.

### Gate 18: Accent color above 5% of any viewport
On any single viewport (above-fold, mid-page, or footer), does the accent color cover more than ~5% of total pixel area (including filled buttons, accent backgrounds, accent borders, accent text)?

If **yes**, the accent is overused. Demote secondary uses to neutral. The accent should be a punctuation mark, not a wallpaper.

### Gate 19: Vague benefit copy
Does the page contain any of: "modern teams", "the future of [X]", "reimagine your [Y]", "move faster, ship better", "built for [vague group]"?

If **yes**, replace with concrete, falsifiable claims. Specifics > superlatives.

### Gate 20: NDA-attributed testimonials
Is there a testimonial attributed to "VP at [series stage] [vague industry], under NDA" or similar?

If **yes**, delete the testimonial. Replace with a real attribution, a falsifiable metric, or nothing.

---

## Section E: Universal constants (gates 21–25) — HARD FAIL

These five gates must all return "no" or the page does not ship.

### Gate 21: Body text contrast below 4.5:1
Does any body text fail WCAG AA contrast (4.5:1 against its background)?

Check: white-on-dark needs at least `oklch(78%+)` on a `oklch(20%-)` background. Borderline pairings fail.

If **yes**, **HARD FAIL.** Fix contrast.

### Gate 22: Mixed elevation models
Within the same page, are elevations represented inconsistently — some via shadow, some via border, some via tonal background?

If **yes**, **HARD FAIL.** Pick one elevation model and apply it consistently.

### Gate 23: Off-scale type sizes
Is there any text size that isn't on the modular type scale defined in [[typography]]? (e.g., a stray 17px or 22px when the scale is 13/16/20/25/31)

If **yes**, **HARD FAIL.** Snap every size to the scale.

### Gate 24: Off-grid spacing
Is there any margin or padding that isn't a multiple of the base unit (4px or 8px)?

If **yes**, **HARD FAIL.** Snap every spacing value to the unit.

### Gate 25: Mid-render token improvisation
Are there inline `style=` attributes or arbitrary hex values (`#3a7f9d`) anywhere in the markup that aren't from the design tokens?

If **yes**, **HARD FAIL.** Every color/spacing/size must come from the token system.

---

## Scoring rubric

| Gates triggered | Action |
|---|---|
| 0 in A, 0 in B, 0 in C, 0 in D, 0 in E | Ship. |
| 1–2 in A/B/C/D, 0 in E | Fix the offenders. Re-run gates. |
| 3+ in A/B/C/D, 0 in E | The output is AI-shaped. Restart with a different macrostructure, palette, and typography. |
| Any 1 in E | **HARD FAIL.** Fix and re-test before any other consideration. |

---

## Stamp the score

When the slop-test passes, embed the result as a CSS comment in the output stylesheet so it's visible in source:

```css
/* slop-test passed: 0/20 AI tells, 0/5 constant failures */
/* macrostructure: Stat-Led | palette: Observatory | typography: IBM Plex Sans + IBM Plex Mono */
```

This is not for production — it's for the next iteration. When the user critiques the output, you can immediately see which choices were made.

---

## Why a checklist works where principles fail

The Phase 5 universal constants in `SKILL.md` say things like "use a consistent spacing system" and "maintain 4.5:1 contrast." These are abstract principles. They are correct, but they don't catch concrete failures unless they're applied as concrete checks.

The slop-test converts each principle into a yes/no gate against actual output. The principle is the design philosophy; the gate is the QA pass. You need both.

**Empirically observed:** AI tools (including Claude itself) generate output that violates these principles ~40% of the time on the first pass, even when the system prompt explicitly forbids the violations. The principles need a post-emit check or they don't take effect.

---

## When to run

Run the gates **after** generation, **before** showing the output to the user. Don't show output that hasn't passed the gates — fix or restart first.

If the output passes the gates, mention briefly in your reply which macrostructure, palette, and typography you chose, so the user can validate the structural decisions, not just the surface.
