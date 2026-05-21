# Anti-Patterns: Named AI Design Tells

When AI generates UI without restraint, it converges on the same handful of patterns. These patterns aren't *wrong* in isolation — they're wrong because every AI-generated page uses them, which makes anything that uses them look AI-generated.

Each tell is named so you can recognize it in your own output before you ship.

**How to use this file:**
- Before generating, scan the list and pre-commit to avoiding the ones that apply to your genre.
- After generating, run through the list. If you used three or more, throw the draft out and restart.
- The fix is never "remove the element." The fix is always "do the thing the element was trying to do, but with a different form."

---

## Macro structure tells

### 1. The hero → 3 features → CTA → footer template
**The tell.** Page opens with a big headline + subheadline + two buttons; then a 3-column grid of icon+title+blurb; then a final "Get started" band; then a footer with 4 link columns.

**Why it reads as AI.** This is the modal output of every AI design tool from 2023–2026. The model has seen this structure so often it generates it by default, regardless of brief. Two pages built with this structure look like the same site.

**The fix.** Pick a different macrostructure (see [[macrostructures]]). The Manifesto, Specimen, Workbench, Long Document, and Stat-Led shapes all communicate the same things without the template.

---

### 2. The eyebrow on every section
**The tell.** Every `<section>` has a tiny uppercase mono label above the heading: `01 / OVERVIEW`, `02 / FEATURES`, `03 / PRICING`.

**Why it reads as AI.** This started as a Stripe-era technique to give long pages typographic rhythm. AI now applies it indiscriminately, including to short pages where it serves no orientation purpose. Three eyebrows in a row become decoration, not structure.

**The fix.** Use an eyebrow *only* where there's a navigational purpose — long documents, multi-step processes, content with a real numbering. If you're using it because "sections should have labels," remove it. The heading is the label.

---

### 3. The marquee logo strip
**The tell.** "TRUSTED BY" + horizontally-scrolling row of company names in muted text, often with fake Unicode glyphs (◇ ⌬ ◉) standing in for logos.

**Why it reads as AI.** Real companies use real logos. AI uses Unicode squares because it can't generate SVG logos. The presence of placeholder glyphs is a 100%-reliable AI signature.

**The fix.** If you have real logos, use them. If you don't, *cut the section*. A row of made-up squares is worse than no social proof at all. An alternative: a single named customer quote with a real-sounding role and company stage ("Director of SRE · Series C fintech") communicates more credibility than five fake logos.

---

### 4. The 4-column stat bar
**The tell.** Below the hero: a horizontal band with four stats: `87% MTTR reduction · 2.4M spans/sec · <90s response · 99.99% uptime`. Each number is large, monospaced, with a small label underneath.

**Why it reads as AI.** It's the template. Real products either lead with *one* big number (the actual moat) or skip stats entirely until later in the page. Four stats in a row is performative — it signals "we have impressive numbers" without forcing any one of them to do work.

**The fix.** Pick the single most surprising number. Make it the headline or a 100px display element with the rest of the claim wrapped around it. Or move stats into the body of a story ("In the first month, Priya's team cut overnight pages by 78%") where they earn context.

---

### 5. The pricing 3-card with middle highlighted
**The tell.** Three pricing cards in a row, middle one has a subtle gradient background and a "Most popular" badge poking out the top.

**Why it reads as AI.** The structure is fine — the *uniformity* is the tell. Every AI pricing section looks like this because the model has been trained on Stripe/Linear/Vercel pricing pages. The "Most popular" badge especially is a copy-paste convention now.

**The fix.** Try a two-card layout (Self-serve + Enterprise) or a single-card layout with a tier-toggle. If you must do three cards, vary their visual treatment more dramatically — different heights, different content density, different button styles. Or kill the badge entirely; let the visual hierarchy do the work.

---

### 6. The testimonial trio
**The tell.** A 3-card grid of quotes, each with a circular avatar, a name, a title, and a one-line attribution. Often with a giant decorative quote mark in the top-left of each card.

**Why it reads as AI.** Three is the AI default for everything. Real testimonial sections usually feature *one* hero quote (with weight) plus a long list of small mentions. The 3-card grid implies you have exactly three testimonials, which reads as "I asked Claude to write three quotes."

**The fix.** One large pull-quote at 32–48px, displayed as a figure with real attribution. Or a column of short testimonials (5–10) without avatars, more like a press strip than a card grid.

---

### 7. The full-viewport centered hero
**The tell.** `<h1>` centered, max-width ~700px, subhead below, two buttons below that — all stacked vertically, taking up 100vh.

**Why it reads as AI.** Visual centering is a low-decision-cost default. The hero communicates nothing about the brand because every brand uses it. It also wastes the most valuable real estate on the page.

**The fix.** Try a left-aligned hero with the headline + product preview on the right (split layout). Or an asymmetric grid where the headline anchors the left column and supporting elements stack down the right. Or — radically — start the page with content instead of a marketing pitch (the Manifesto shape).

---

### 8. The AI nav
**The tell.** Wordmark on the left, 4–5 horizontal links in the center, a "Sign in" link and a primary CTA button on the right. Sticky, with backdrop blur.

**Why it reads as AI.** Literally every SaaS product has this nav. There's nothing distinctive about it. It's the dictionary entry for "modern SaaS navigation."

**The fix.** Move the nav off-axis: vertical sidebar (for app-y products), bottom-aligned tabs (for mobile-first), or a sliding command-bar that only appears on scroll. For marketing pages, consider *no nav at all* on the home — the brand is in the headline; navigation belongs deeper.

---

### 9. The AI footer
**The tell.** 4–5 columns: Product / Company / Resources / Legal — each with 4–6 vertical links. Bottom row: small wordmark + copyright + social icons + cookie banner.

**Why it reads as AI.** It's the carbon copy of every Tailwind UI template. The information architecture is performative — most of the links go to placeholder pages.

**The fix.** A single horizontal row of 6–10 links, no columns. Or a long-form footer with actual content (recent blog posts, current openings, a real address). Or two lines: copyright + a single email. The columns exist because the page felt empty; usually it isn't.

---

## Visual / aesthetic tells

### 10. The aurora-blob background
**The tell.** Hero section has 2–4 large blurred radial gradients (purple, pink, blue) positioned absolutely, opacity 0.3, behind the content. Sometimes animated.

**Why it reads as AI.** This was the 2023 Vercel/Linear visual signature. AI tools learned it and now apply it to everything. By 2026 it reads as "AI from 18 months ago."

**The fix.** A single deliberate accent — one off-canvas glow that anchors the hero, or none at all. If you want atmospheric depth, use a subtle grid backdrop, noise texture, or a single low-contrast illustration. Multiple blurred blobs are over.

---

### 11. The purple-pink gradient hero
**The tell.** Headline uses `background-clip: text` with a `linear-gradient(135deg, #a855f7, #ec4899)` (or any purple→pink, blue→purple, orange→red).

**Why it reads as AI.** Gradient text was a 2022 trick that AI tools learned and now apply by default. It reduces readability, signals "I want to look exciting without committing to a real visual idea," and matches a thousand other AI sites.

**The fix.** A single solid accent color, applied to *one* word in the headline (not the whole headline). Or no color emphasis at all — let the typography do the work via weight and size. If you must use a gradient, use it on a non-typographic element (a divider, a button, a border).

---

### 12. Glassmorphism-as-default
**The tell.** Cards, nav, modals — everything has `backdrop-filter: blur(20px)` + semi-transparent white background + thin border.

**Why it reads as AI.** Apple shipped this in 2020; AI copied it; now it's the default surface treatment regardless of brand. Used on everything, it stops communicating elevation and starts communicating "I picked a surface treatment without thinking."

**The fix.** Pick one elevation model and stick to it: shadows OR borders OR tonal backgrounds OR blur. Mixing breaks coherence. If you choose blur, use it for *one* surface type (e.g., sticky nav) and use a different treatment for cards.

---

### 13. Card-in-card
**The tell.** A card with `bg-surface` containing a smaller card with `bg-surface-2`, sometimes containing a third card. Each has its own border and padding.

**Why it reads as AI.** AI loves nesting because each component "should be a card." Real designs use cards *or* sections *or* dividers — not all three nested. Three levels of background tint means three levels of border-radius means three levels of padding means visual noise.

**The fix.** Flatten. The outer card can be a section with no background. The inner card can be the actual component. If you need visual hierarchy inside a card, use spacing and typography, not nested backgrounds.

---

### 14. The terminal mockup as hero
**The tell.** Hero right-column is a fake terminal window with macOS chrome (red/yellow/green dots), staggered log lines fading in, color-coded timestamps. The product is a developer tool, so "let's show terminal output."

**Why it reads as AI.** Every dev-tool landing page does this now. The macOS chrome is the giveaway — it's the same SVG everyone copies. The staggered fade-in animation is the same `animation-delay: 0.4s, 0.9s, 1.4s` pattern.

**The fix.** If the product is a CLI, show the real CLI in a static screenshot — no chrome, no animation. If it's an agent, show the actual interaction surface (Slack message, PR comment, GitHub check). If you want motion, animate one *real* thing (a value updating, a status changing) instead of fake "typing" animations.

---

### 15. The "Inter everywhere" stack
**The tell.** Font stack is `Inter` for body and headings. Maybe `JetBrains Mono` for code. That's it.

**Why it reads as AI.** Inter is the default. It is excellent but ubiquitous. A page in Inter could be any of 10,000 SaaS sites built in the last four years. There's no typographic personality.

**The fix.** Reach for less-defaulted families: **Geist, IBM Plex Sans, Söhne, Aeonik, GT America, Untitled Sans, Pangram Sans, Söhne Mono, JetBrains Mono, Fraktur, Editorial New, Tiempos Headline, Söhne Breit**. Or pair a serif headline with a sans body (Tiempos + IBM Plex Sans, Söhne + Söhne Mono). One sans-serif body + one display family changes the entire feel.

See [[typography]] for the banned-defaults list and a curated set of pairings.

---

### 16. The 60% gray palette
**The tell.** Background `#0a0a0a`, surface `#171717`, border `#262626`, text `#a3a3a3`. All achromatic. The only color is the accent (often green or blue).

**Why it reads as AI.** Tailwind's default `neutral` / `zinc` / `slate` palette is what AI reaches for when "make it dark." Achromatic grayscale + one accent is the modal AI dark palette. It's safe and it's everywhere.

**The fix.** Tint your grays. Use OKLCH with non-zero chroma on the neutrals: `oklch(15% 0.02 250)` (cool slate), `oklch(15% 0.015 80)` (warm taupe), `oklch(15% 0.025 120)` (forest neutral). The page gains personality without ever looking "colored." See [[palettes]] for pre-built tinted palettes.

---

### 17. The neon-green accent
**The tell.** Dark UI, body text in white, accent color is `#22C55E` or `#7CFF8F` or `#10B981` — bright phosphor green. Used for CTAs, success states, and status indicators.

**Why it reads as AI.** Vercel green became the "developer tool" accent in 2022. Every AI dev-tool page now uses some variation of it.

**The fix.** Pick a less-defaulted accent for the same vibe: amber, salmon, rust, cyan, magenta, violet, sage, ochre. If green is structurally correct (success/go semantics), pick an unusual green: chartreuse, olive, jade, malachite, sea-green.

---

### 18. The kitchen-sink shadow stack
**The tell.** Primary button has 3-layer box-shadow: inset highlight + outer glow + drop shadow. Cards have `shadow-2xl`. The page has shadows everywhere.

**Why it reads as AI.** Multiple shadow layers were a 2024 polish move. Used selectively (on one button) it adds depth. Used on every elevated surface, it becomes uniform haze — every element shouts the same volume.

**The fix.** One element can have the multi-shadow treatment, and only one. Everything else uses borders or a single subtle shadow. The multi-shadow element should be the thing you want the user to click.

---

### 19. The bento grid for everything
**The tell.** Features section uses a 12-column "bento" grid with cards of varied sizes — a big one in the corner, three medium ones, two small ones. Pioneered by Apple and now default in v0.

**Why it reads as AI.** Bento was novel in 2023. By 2026 it's the AI default for "feature section." Five different-sized cards become five different-sized cards everywhere.

**The fix.** Use bento *only* when the features have genuinely different weights and the layout reflects that. If three features matter equally, give them three equal cards. If one feature is the moat, give it one big card and demote the rest to a list.

---

### 20. The icon-in-rounded-square
**The tell.** Every feature card starts with a 40×40px rounded square (often with a subtle gradient), containing a 20px Lucide icon (often green or blue).

**Why it reads as AI.** This is the Tailwind UI feature card pattern. AI uses it for every list of features. Six of them in a grid become visual wallpaper.

**The fix.** Drop the rounded square. The icon alone, 24px, in the accent color, is enough — or no icon at all, just a numbered list. If icons matter, use larger, more distinctive ones (illustrations, custom glyphs, or oversized monoline icons at 48–64px).

---

## Typography tells

### 21. Two-line buttons at mobile
**The tell.** Primary button reads "Get started for free" — fine at 1280px, wraps to two lines at 375px. The button now has awkward vertical padding.

**Why it reads as AI.** AI generates desktop-first CTAs and never tests mobile wrap. A button breaking to two lines is a 100%-reliable "I never opened this on a phone" signal.

**The fix.** Cap CTA text at 14 characters. "Get started", "Request access", "Start free trial" all fit. Test the button at 320px width before shipping.

---

### 22. The H1 + subhead + paragraph stack
**The tell.** `<h1>` (display size), `<p class="subhead">` (24–32px), `<p class="body">` (16px), all stacked. Three typographic registers in 200px of vertical space.

**Why it reads as AI.** AI loves redundancy. Often the subhead and the body paragraph say the same thing twice.

**The fix.** Pick one: a giant headline alone (Manifesto), or a headline + body, or a kicker + headline. Three is one too many. If you need supporting copy, place it further down the page, not stacked under the H1.

---

### 23. The double-clamp display
**The tell.** Headline uses `clamp(36px, 8vw, 96px)` and the subhead also uses clamp. The fluid type behavior is uncoordinated — at certain viewports the subhead is larger than expected, or both jump together awkwardly.

**Why it reads as AI.** AI applies `clamp()` to make headlines "responsive" without testing the intermediate viewport sizes. Always check 480px, 768px, 1024px, 1440px independently.

**The fix.** Use clamp on the H1 only. Lock the subhead to a fixed size that pairs at the H1's *minimum* (mobile) and *maximum* (desktop). If the relationship breaks in between, use a single media-query step instead of clamp.

---

### 24. Inter Display (the rounded-numbers fix)
**The tell.** Body uses `Inter` but numbers and metric displays use `font-feature-settings: "tnum" "ss01" "cv11"`. The page enables font features it doesn't actually need because "all the cool sites do."

**Why it reads as AI.** AI sees these CSS lines on every Tailwind starter and includes them by reflex. Most pages don't have enough numeric content to benefit, and the features are silently ignored.

**The fix.** Only enable font features you can *point to* — "I'm enabling tabular numbers because the pricing table aligns values." If you can't point to a use, don't enable the feature.

---

## Interaction tells

### 25. Hover-grow on every card
**The tell.** Every card scales up 1.02× and lifts via shadow on hover. Sometimes the border lights up too.

**Why it reads as AI.** A 2021 microinteraction trope. Applied to non-interactive cards (informational tiles), it implies clickability that doesn't exist. Applied to clickable cards, it's fine — but distinguishing one from the other matters.

**The fix.** Hover effects belong on interactive elements only. For non-interactive cards, no hover state. For interactive cards, a *single* hover treatment (color shift OR border light OR shadow, not all three).

---

### 26. The scroll-reveal cascade
**The tell.** Every section has `IntersectionObserver` triggering a `translateY(12px)` + opacity fade-in. The whole page is a sequence of "rising into view" animations.

**Why it reads as AI.** Scroll-triggered animation became default polish around 2022. Applied to every section, it slows scanning and signals "I added animation because the page felt static." Real designs use scroll animation on *one* statement element, not everywhere.

**The fix.** If the content can stand on its own typography, no scroll animation. If you must animate, pick one or two specific elements (a stat counting up, a chart drawing in) and let the rest of the page render statically.

---

### 27. The 0.4s ease-in-out everything
**The tell.** All transitions use `transition: all 0.4s ease-in-out`. Buttons, cards, links, hovers, focus rings.

**Why it reads as AI.** It's the lazy default. Real motion design varies duration by element: 100–150ms for buttons (snappy), 200–300ms for cards (felt), 400–600ms for sections (deliberate). One duration for everything reads as one decision avoided.

**The fix.** Use 120–160ms for hover/focus changes. 200–280ms for state transitions (modal open, drawer slide). Save 400ms+ for entrance/exit animations on major elements. Never `transition: all` — name the properties.

---

### 28. The bouncy spring
**The tell.** Buttons or modals use `cubic-bezier(0.68, -0.55, 0.265, 1.55)` or framer-motion `spring` with `stiffness: 400, damping: 10`. Elements overshoot their target and settle.

**Why it reads as AI.** Bounce was a 2020 iOS-inspired trope. Used on a serious business tool, it reads as misjudged personality. ("Why is my SRE dashboard bouncing?")

**The fix.** Bounce belongs only on products with playful brand registers (consumer, kids, casual). For everything else, ease-out curves (`cubic-bezier(0.2, 0.8, 0.2, 1)`) feel quick and confident without overshooting.

---

## Content tells

### 29. The "Trusted by teams at" + fake quote attribution
**The tell.** "We saved $4M in the first quarter." — *Priya Mehta, VP Engineering at Series C fintech (under NDA)*.

**Why it reads as AI.** The "under NDA" or "name redacted" qualifier is what AI generates when it can't make up a real company. Real companies either let you quote them by name or don't appear at all.

**The fix.** If you have real customers, use real names + real companies + a portrait. If you don't, write *no* testimonial. Better: replace the testimonial with a specific, falsifiable claim ("In trials with 12 teams, average MTTR dropped from 23min to 4min").

---

### 30. Vague benefit copy
**The tell.** "Built for modern teams." "Move faster, ship better." "The future of [category]." "Reimagine your workflow."

**Why it reads as AI.** These phrases have no information content. They're filler that signals "I needed words here but had nothing specific to say."

**The fix.** Replace every vague claim with a concrete one. Not "move faster" — "ship the first PR in 47 minutes instead of 4 hours." Not "modern teams" — "for SRE teams running 50+ services." Specifics earn trust; vagueness loses it.

---

## How to use this list

After generating any UI, run through the 30 tells. Count how many you used.

- **0–2 tells**: Probably fine. Ship.
- **3–5 tells**: Borderline. Pick the two most prominent and fix them.
- **6+ tells**: The output is AI-shaped. Throw it out and restart with a different macrostructure and different visual register.

The point is not to never use any of these — some are appropriate in some contexts. The point is that **if you use many of them together, the result is indistinguishable from any other AI-generated page**, and that is the failure mode.

A page can be uncreative *and* technically excellent (every tell well-executed) and still fail because it looks like every other AI page. Distinctiveness comes from breaking the template, not from polishing it harder.
