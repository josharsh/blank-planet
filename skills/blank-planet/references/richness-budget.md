# Richness Budget: The Axis Orthogonal to Restraint

The blank-planet method historically conflated two different design qualities:

- **Restraint** — does every element earn its place?
- **Visual richness** — how much craft and detail is visible in the execution?

These are *orthogonal*. Conflating them is why blank-planet produces outputs that are technically disciplined but visually quiet — and why "quiet" reads as amateur on genres where the reader expects visible craft.

This file separates the two axes and gives you a vocabulary for setting both deliberately.

---

## The two axes, drawn out

```
                    HIGH RICHNESS
                        ▲
                        │
     Cluttered          │       Excellent
     overdesigned       │       crafted
     (chart-junk        │       (Linear, Vercel
      maximalism)       │        landing pages)
                        │
LOW RESTRAINT ◄─────────┼─────────► HIGH RESTRAINT
                        │
     Sloppy             │       Spartan
     amateur            │       severe
     (random elements   │       (Berkshire Hathaway,
      no system)        │        academic papers)
                        │
                        ▼
                    LOW RICHNESS
```

**Four quadrants:**

- **High restraint + high richness** (top-right). The best modern design. Every element earns its place AND the execution shows visible craft. Linear, Stripe, Vercel landing pages live here. This is what people mean when they say "premium."

- **High restraint + low richness** (bottom-right). Spartan, severe, deliberately plain. Berkshire Hathaway's website, Jason Fried's blog, brutalist academic sites. Works when the brand commits to it as an *expressive choice*, not as a side effect of "removing things."

- **Low restraint + high richness** (top-left). Decorative maximalism. Either fully intentional (Studio Ghibli site, certain fashion brands) or chart-junk failure. The line between the two is whether the richness *serves* something.

- **Low restraint + low richness** (bottom-left). Bad output. Random elements without system. The amateur AI output that nobody wants.

**The blank-planet failure mode** is treating "remove everything that doesn't justify itself" as movement *down* (low richness) when it should be movement *right* (high restraint). You can be highly restrained AND highly rich at the same time.

---

## What "richness" actually means

Richness is the visible evidence of craft. It comes from:

1. **Layered visual treatments.** Multi-step shadows, gradient borders, paired background tints, subtle noise textures, deliberate light effects.

2. **Considered motion.** Hover states that respond, scroll-triggered reveals on key elements, micro-animations that signal aliveness without distracting.

3. **Bespoke detail.** Custom-drawn icons, hand-tuned spacing, unique typographic treatments, specific color choices that aren't off the shelf.

4. **Density of information per pixel.** A page that fills its space with substance (numbers, real copy, varied components) reads as richer than a page with the same content but more whitespace.

5. **Interactive depth.** States that change, content that updates, demos that respond. Not animation for its own sake — interaction that reveals.

6. **Production tells.** Real OG image, favicon, dark/light mode, working focus states, accessible markup, fast loading. These are invisible until they're missing.

Richness is *expensive*. Every rich element is a decision and a maintenance cost. That's why restraint matters — you can't be rich everywhere.

---

## Setting the richness budget by genre

| Genre | Target richness | Why |
|---|---|---|
| Marketing landing page | **High** | Reader expects visible craft as proof of competence |
| Product UI / dashboard | **Low-medium** | Richness becomes chart-junk in operational tools |
| Documentation site | **Low** | Information access matters; decoration interferes |
| Portfolio / blog | **Variable** | Choose deliberately — high or low both work if committed |
| App interior | **Low-medium** | Consistency over uniqueness; rich = exhausting at 8hrs/day |
| Demo / showcase | **Concentrated** | Rich in the demo, sparse around it |

The richness budget tells you *how much* visible craft the page should show. Restraint tells you *which* elements get the craft.

---

## Setting the richness budget by analog

The structural analog informs HOW richness is expressed, not WHETHER:

| Analog | Richness expression |
|---|---|
| Observatory / control room | Rich in data, sparse in decoration; precision instruments are themselves rich |
| Museum / gallery | Rich in framing and spatial generosity; minimal in surface |
| Workshop / studio | Rich in tools and surfaces; lived-in, accumulated |
| Trading floor / cockpit | Rich in density and color-coded signals |
| Zen garden | Rich in nothing (deliberate scarcity); the absence IS the craft |
| Editorial / newsroom | Rich in typography and hierarchy |
| Concert hall / theater | Rich at the focal point; dark around it |
| Library / archive | Rich in repetition and pattern |

The mistake is reading "zen garden" as "low richness" universally. A zen garden achieves richness through extreme craft of *very few* elements. The rocks are placed with the same care a maximalist puts into a hundred ornaments — that's why it reads as professional, not empty.

---

## How to budget

When designing, before you start ornamenting, set the budget explicitly:

```
Richness budget for this page:
  - Hero: HIGH (the page's anchor — earn the reader's attention)
  - Body sections: MEDIUM (substance, not surface)
  - Footer: LOW (no one looks)
  - Interactive demo: HIGH (the demo IS the proof)
  - Background: LOW (don't compete with content)
```

Now you have permission to add multi-layer shadows to the primary CTA without feeling guilty, AND you have a constraint preventing you from adding them to every secondary button too.

**The rule:** at most TWO regions of the page get the HIGH treatment. Everything else is MEDIUM or LOW. If everything is HIGH, nothing is.

---

## The 5%/30%/65% rule for rich elements

Across the entire page, allocate visual emphasis like this:

- **5% maximum**: the one element with the most expensive treatment. The hero animation, the multi-layered CTA, the bespoke illustration. ONE thing.
- **30%**: medium-richness elements. Secondary CTAs, considered hover states, varied component treatments.
- **65%+**: low-richness substrate. Text, spacing, base components, structural layout. This is most of the page.

If you find yourself adding rich treatment to more than 5% of the page, you've blown the budget. Pick the most important rich element and demote the rest.

---

## Examples: same restraint, different richness

### Restrained + low richness (Berkshire Hathaway)
```
Times New Roman, white background, blue underlined links.
Plain HTML, no CSS framework, no animation, no images.
Every element justifies its existence: the company believes
its message is the content, not the wrapper. This is a
DELIBERATE choice that brands the company as "we don't waste
your money on a fancy website." Works because the company
commits totally.
```

### Restrained + high richness (Linear's landing page)
```
Same restraint discipline — every element earns its place —
but expressed through:
  - bespoke custom illustration in the hero
  - subtle scroll-linked motion on key elements
  - multi-layer shadows on the primary surface
  - hand-tuned typography pairing (Geist + Geist Mono)
  - dark mode with deliberate color tinting
  - working dark/light toggle, OG images, favicon, etc.
Each rich element serves the message. Nothing is decoration.
```

### Unrestrained + high richness (cluttered SaaS site)
```
Same visual vocabulary as Linear, but applied EVERYWHERE.
Three different shadow systems, four font families,
animated gradients on five elements, hover effects on
non-interactive cards, three pricing layouts in one page.
The richness doesn't compose — it competes. Reads as
"trying too hard."
```

### Unrestrained + low richness (default AI output)
```
Generic Tailwind components, default Inter, no animation,
plain shadows, off-the-shelf icons. Doesn't try hard, but
also doesn't compose into anything memorable. Reads as
"AI made this in one shot and shipped it."
```

The goal is the second quadrant. Get there by setting both axes deliberately.

---

## Decision template

Before generating, fill in:

```
Genre: [marketing landing / dashboard / docs / portfolio / app / demo]
Analog: [the structural parallel from Phase 3]
Macrostructure: [one of the 18 from references/macrostructures.md]

Richness budget:
  HIGH region (max 5% of page): [what gets the bespoke treatment]
  MEDIUM regions (30%): [what gets considered hover/depth]
  LOW substrate (65%+): [the rest]

Restraint check:
  - Does every HIGH-richness element earn its place? [must be yes]
  - Are there any LOW-richness elements that could be removed entirely? [if yes, remove]
```

If you can fill this in, you're set up to produce restrained-but-rich output. If you can't, you don't have a design direction yet — go back to Phase 3.

---

## What the old blank-planet got wrong

The old "what to remove first" list (drop shadows, borders, background colors, gradients, animations) is a *low-richness* prescription, not a restraint prescription. Restraint asks "does this element earn its place?" Low-richness prescribes "remove visual treatments." These are different questions.

Applied to a dashboard, the low-richness prescription is right.

Applied to a marketing landing page, the low-richness prescription removes the visual vocabulary that signals "premium product made by people who care." The page becomes structurally correct and visually amateur — exactly the failure mode we observed.

The fix is to apply restraint as the universal constraint and richness as a *budgeted* resource per genre. The new rule is:

> "Every element must earn its place. The number of elements that get visible craft is a budget you spend strategically — usually 5% of the page."
