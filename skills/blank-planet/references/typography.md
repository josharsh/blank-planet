# Typography: Banned Defaults, Pairings, and Voice

Typography is the highest-leverage decision in any design. A page with average everything else but distinctive type reads as confident; a page with great everything else but default type reads as AI-generated.

This file gives you:
1. **Banned defaults** — fonts that scream "AI made this"
2. **30 curated pairings** — by tone, ready to use
3. **A voice taxonomy** — how to pick a tone deliberately
4. **Implementation patterns** — for web

---

## Banned defaults

These fonts are excellent. They are also the AI-modal choices. Using any of them as the primary type for a project that wants to feel distinctive is an instant tell. Reach for the alternatives.

### Banned (sans-serif body/display)

| Banned | Why | Use instead |
|---|---|---|
| **Inter** | The AI default since 2022. Every Vercel/Tailwind site. | Geist, IBM Plex Sans, Söhne, Aeonik, Untitled Sans |
| **Roboto** | Material Design ubiquity | Inter (yes, ironic), Outfit, Space Grotesk |
| **Open Sans** | Pre-2018 web default | Public Sans, IBM Plex Sans, Manrope |
| **Lato** | Mid-2010s WordPress era | Outfit, Mulish, Plus Jakarta Sans |
| **Poppins** | 2020 trendy geometric | Plus Jakarta Sans, Outfit, GT Walsheim |
| **Montserrat** | 2018-era startup font | Geist, Söhne, Aeonik |
| **Geist** | Newer but already AI-default | IBM Plex Sans, Pangram Sans, Söhne |
| **DM Sans** | v0/shadcn default | Hanken Grotesk, Söhne, IBM Plex Sans |
| **Space Grotesk** | Used by every AI tool, every artist portfolio | Söhne Breit, GT Walsheim, Untitled Sans |

### Banned (serif)

| Banned | Why | Use instead |
|---|---|---|
| **Playfair Display** | Wedding-invitation default | Tiempos Headline, Editorial New, GT Sectra, Söhne Schmal |
| **Cormorant** | Same | Canela, Tiempos Headline, Söhne Schmal |
| **Lora** | Medium.com default | Tiempos Text, Source Serif, IBM Plex Serif |
| **Merriweather** | WordPress blog default | Tiempos Text, Source Serif, Charter |
| **Crimson** | Default editorial pick | Tiempos Text, Source Serif Pro, Lyon |
| **Fraunces** | Once novel, now AI-loved | GT Sectra, Editorial New, Canela |
| **PT Serif** | Older default | Source Serif, IBM Plex Serif, Tiempos |

### Banned (mono)

| Banned | Why | Use instead |
|---|---|---|
| **JetBrains Mono** | The AI dev-tool default | Geist Mono, Berkeley Mono, IBM Plex Mono, Söhne Mono |
| **Fira Code** | Pre-2022 dev default | Berkeley Mono, Commit Mono, MD IO |
| **Source Code Pro** | Mid-2010s Adobe default | Geist Mono, IBM Plex Mono |

---

## The 30 pairings, by tone

Each pairing has a display family (for headings) and a body family. Some use a single family with weight variation; some use a pair. Each line includes source: `[G]` Google Fonts (free), `[F]` Fontshare (free), `[P]` paid foundry, `[S]` system.

### Editorial-Serious — for op-eds, manifestos, documentation
| Display | Body | Notes |
|---|---|---|
| GT Sectra `[P]` | Söhne `[P]` | Reference: The Drift magazine, NYT Magazine |
| Editorial New `[F]` | IBM Plex Sans `[G]` | Free pairing close to GT Sectra + Söhne |
| Tiempos Headline `[P]` | Tiempos Text `[P]` | Reference: Klim Type's house pairing — bulletproof |
| Source Serif Pro `[G]` | Source Sans Pro `[G]` | Free, restrained, government-document feel |
| Pampatype Pancho `[F]` | Hanken Grotesk `[F]` | Underused free duo with editorial weight |

### Editorial-Warm — for personal sites, essays, blogs
| Display | Body | Notes |
|---|---|---|
| Canela `[P]` | Söhne `[P]` | Reference: Are.na, OpenAI's old blog |
| Editorial New `[F]` | Hanken Grotesk `[F]` | Free duo with warmth |
| GT Alpina `[P]` | GT America `[P]` | Klim/Grilli range, refined |
| Lyon Text `[P]` | Söhne Mono `[P]` | Mono for body — unusual, strong |
| Söhne Schmal `[P]` | Söhne `[P]` | Tall display + standard body, single foundry |

### Technical-Clinical — for dev tools, infrastructure, dashboards
| Display | Body | Notes |
|---|---|---|
| IBM Plex Sans `[G]` | IBM Plex Mono `[G]` | Reference: IBM's whole system — engineered |
| Söhne `[P]` | Berkeley Mono `[P]` | Cool sans + warm mono, very strong |
| Pangram Sans `[F]` | JetBrains Mono `[G]` | Pangram Sans is the underused alternative to Söhne |
| Aeonik `[P]` | Geist Mono `[F]` | Clean modernist |
| Untitled Sans `[P]` | Söhne Mono `[P]` | Klim's "no-personality on purpose" pair |

### Technical-Warm — for AI tools, developer-creative
| Display | Body | Notes |
|---|---|---|
| GT America `[P]` | Berkeley Mono `[P]` | Reference: Linear, several AI startups |
| Inter Display `[G]` | Berkeley Mono `[P]` | Inter pushed into display sizes pairs better than expected |
| Manrope `[G]` | Geist Mono `[F]` | All free, warm geometric |
| Hanken Grotesk `[F]` | Commit Mono `[F]` | All free, distinctive without trying |
| MD IO `[P]` | MD IO `[P]` | Single mono throughout — committed, brutalist |

### Brutalist-Loud — for tabloids, manifestos, art
| Display | Body | Notes |
|---|---|---|
| Söhne Breit `[P]` | Söhne `[P]` | Extra-wide display + standard body |
| GT Pressura `[P]` | GT Pressura `[P]` | Single bold mono — magazine cover energy |
| Migra Italic `[F]` | Inter `[G]` | Wild headline + functional body |
| Boogy Brut `[F]` | Söhne `[P]` | Display drips with personality |
| Druk `[P]` | Söhne `[P]` | Tall heavy condensed — Sports Illustrated cover |

### Playful-Warm — for consumer, kids, casual
| Display | Body | Notes |
|---|---|---|
| Cabinet Grotesk `[F]` | Satoshi `[F]` | Both free Fontshare — friendly |
| Author `[P]` | Söhne `[P]` | Slightly quirky pairing |
| Recoleta `[F]` | Manrope `[G]` | Rounded serif display + clean body |
| Outfit `[G]` | Outfit `[G]` | Single family, lots of weights, friendly |
| GT Walsheim `[P]` | GT Walsheim `[P]` | All-one-family, warm geometric |

### Editorial-Severe — for high-design portfolios, agencies
| Display | Body | Notes |
|---|---|---|
| Söhne Schmal `[P]` | Söhne Buch `[P]` | Compressed display + booklike body |
| ABC Diatype `[P]` | ABC Diatype Mono `[P]` | Dinamo foundry — extreme polish |
| GT Sectra Display `[P]` | GT America Mono `[P]` | Editorial + monospace tension |
| Right Grotesk `[P]` | Söhne `[P]` | Right Grotesk's spiky alternate gives bite |
| Reckless `[P]` | Söhne `[P]` | High-contrast serif display, modernist body |

---

## The voice taxonomy

When you're not sure which tone to pick, work through these questions:

### How serious is the product?
- **Operationally critical** (medical, financial, infra) → Editorial-Serious or Technical-Clinical
- **Professional but human** (creative tools, B2B) → Technical-Warm or Editorial-Warm
- **Consumer-friendly** (chat apps, content) → Playful-Warm or Editorial-Warm
- **Brand-forward** (fashion, art, agencies) → Editorial-Severe or Brutalist-Loud

### How dense is the page?
- **Text-heavy** (essays, docs) → Editorial-Warm or Editorial-Serious (these pair well at body sizes)
- **UI-heavy** (apps, dashboards) → Technical-Clinical or Technical-Warm
- **Visual-heavy** (galleries, products) → Editorial-Severe or Brutalist-Loud

### Where is the reader's attention?
- **Long-form reading** → serif body or warm sans body (Tiempos Text, Söhne, Hanken Grotesk)
- **Scanning** → geometric sans body (IBM Plex Sans, Aeonik)
- **Glancing** → display-only (the headline IS the content)

---

## Type scale: the modular system

Pick a ratio. Stick to it. Every size is a step on the scale.

### Common ratios

| Ratio | Use case | Steps from 16px base |
|---|---|---|
| 1.125 (Major 2nd) | Subtle hierarchy — long documents | 14, 16, 18, 20, 23, 26, 29, 32 |
| 1.200 (Minor 3rd) | Practical web — most sites | 13, 16, 19, 23, 28, 33, 40 |
| 1.250 (Major 3rd) | Balanced — dashboards, marketing | 13, 16, 20, 25, 31, 39, 49, 61 |
| 1.333 (Perfect 4th) | Distinctive — brand-forward | 12, 16, 21, 28, 38, 50, 67, 89 |
| 1.500 (Perfect 5th) | Dramatic — editorial, manifesto | 11, 16, 24, 36, 54, 81, 122 |

**The rule:** for body text 16px, pick a ratio, generate the scale, and forbid any size not on the scale. The scale is the type system.

For display sizes above the scale's natural top, use `clamp()` with the scale step as the maximum:

```css
:root {
  /* 1.25 scale from 16px base */
  --t-13: 13px;
  --t-16: 16px;
  --t-20: 20px;
  --t-25: 25px;
  --t-31: 31px;
  --t-39: 39px;
  --t-49: 49px;
  --t-61: 61px;
  --t-76: 76px;
  --t-96: 96px;

  /* Display: clamp from mobile to desktop */
  --t-display: clamp(var(--t-49), 8vw, var(--t-96));
}
```

---

## Weight + style as hierarchy (not size alone)

Hierarchy needs to differ in at least TWO pre-attentive channels (Phase 5 universal constant). Don't rely on size alone.

### Common weight palettes (use 3-4, not all)

For Söhne or similar:
- **Buch (400)** — body
- **Kräftig (500)** — emphasis
- **Halbfett (600)** — UI labels, small caps
- **Dreiviertelfett (700)** — display

For Geist or Inter:
- **Regular (400)** — body
- **Medium (500)** — UI labels
- **Semibold (600)** — emphasis, small headings
- **Bold (700)** — large headings

**The rule:** 3-4 weights max. More creates uniform noise. The weight contrast IS the hierarchy.

---

## Tracking (letter-spacing)

Almost always negative for display, neutral for body, positive for small caps.

| Size | Tracking |
|---|---|
| Display (60px+) | `letter-spacing: -0.03em` to `-0.04em` |
| H1 (40-60px) | `letter-spacing: -0.02em` |
| H2-H3 (24-40px) | `letter-spacing: -0.01em` |
| Body (16-20px) | `letter-spacing: 0` |
| Labels / small caps (10-14px) | `letter-spacing: 0.05em` to `0.18em`, uppercase |

---

## Line-height by use

| Type | Line-height |
|---|---|
| Display headlines | 0.95 to 1.1 (tight) |
| Section headings | 1.15 to 1.25 |
| Body short (UI, labels) | 1.3 to 1.4 |
| Body long (paragraphs) | 1.5 to 1.7 |
| Long-form essay body | 1.6 to 1.8 |
| Code | 1.5 to 1.65 |

---

## Measure (line length)

| Use | Characters per line |
|---|---|
| Body (essay) | 60-75 ch |
| Body (UI / scanning) | 45-65 ch |
| Display headlines | 12-30 ch (wider feels weak) |
| Code | 80-110 ch |

Enforce via CSS:
```css
.essay-body { max-width: 65ch; }
.ui-body { max-width: 55ch; }
.headline { max-width: 20ch; }
```

---

## What about Inter + JetBrains Mono?

You'll be tempted. Don't. Specifically: don't use **Inter + JetBrains Mono** as the default — this is the modal AI dev-tool combo (it's exactly what raw Claude used in the "Sentri" output). Picking it makes your output indistinguishable from every other AI-generated dev tool page.

**If you really want this energy:** swap to **Söhne + Berkeley Mono** (paid), **IBM Plex Sans + IBM Plex Mono** (free), or **Pangram Sans + Geist Mono** (free). Same vibe, not the modal default.

---

## Implementation pattern

```html
<!-- Pick from one foundry where possible (cohesion) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&family=IBM+Plex+Mono:wght@400;500&display=swap" rel="stylesheet">
```

```css
:root {
  --font-sans: 'IBM Plex Sans', system-ui, sans-serif;
  --font-mono: 'IBM Plex Mono', ui-monospace, monospace;
  /* No --font-serif unless you're using one */
}

body {
  font-family: var(--font-sans);
  font-feature-settings: 'cv11', 'ss03'; /* only if you can point to a use */
}

code, .mono {
  font-family: var(--font-mono);
}
```

**Rules:**
- Two font families max (sans + mono, or sans + serif). Three is almost never right.
- `display: swap` so text appears immediately, not after font load.
- Only enable `font-feature-settings` you can point to a specific use case for.
- No font-display: block (causes invisible text on slow connections).

---

## Quick picker

| If the analog is... | Reach for |
|---|---|
| Observatory / control room | IBM Plex Sans + IBM Plex Mono (free), or Söhne + Berkeley Mono |
| Library / museum / archive | Tiempos Text + Söhne, or Source Serif + Source Sans (free) |
| Studio / workshop / lab | Söhne + Söhne Mono, or Pangram Sans + Geist Mono (free) |
| Newsroom / op-ed page | GT Sectra + Söhne, or Editorial New + IBM Plex Sans (free) |
| Gallery / monograph | Canela + Söhne, or Editorial New + Hanken Grotesk (free) |
| Cabaret / fashion / art opening | Reckless + Söhne, or Migra + Inter (free) |
| Protest poster / brutalist | GT Pressura, or Söhne Breit + Söhne |
| Letter / personal / warm | Cabinet Grotesk + Satoshi (free) |
