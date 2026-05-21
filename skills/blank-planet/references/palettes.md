# Palettes: 12 Pre-Built Color Systems

Don't derive a palette from the analog. Pick a pre-built palette that matches the analog's character, then optionally tune one or two values. Deriving from scratch leads to defaulting to Tailwind's `slate` or `neutral` — the AI-modal palette.

All palettes use **OKLCH**. OKLCH is perceptually uniform — equal-distance lightness steps look equal-distance, unlike HSL/RGB. Most modern design systems (Linear, Vercel, Tailwind v4) have moved to OKLCH for this reason.

**The rule:** every palette has the same role structure. You can swap any palette into any layout without rewiring tokens. The role names are:

- `paper` — base background
- `paper-2` — slightly raised surface
- `paper-3` — most raised surface (cards on cards)
- `rule` — borders, dividers
- `ink` — primary text
- `ink-2` — secondary text
- `ink-3` — tertiary text / labels
- `accent` — primary CTA / focus
- `accent-strong` — hover / active accent
- `accent-tint` — accent-tinted backgrounds (10% opacity equivalent)
- `success` — positive semantic
- `warn` — caution semantic
- `danger` — negative semantic

---

## Light palettes

### 1. Paper Warm
**Vibe.** Like a sun-bleached art book. Off-white pages, warm wooden rules. Editorial without being cold.

**Best with.** Editorial / Manifesto / Letter / Long Document. Analogs: library, museum monograph, art book, café.

```css
:root {
  --paper:        oklch(98%  0.008 80);   /* warm cream */
  --paper-2:      oklch(96%  0.010 80);
  --paper-3:      oklch(93%  0.012 80);
  --rule:         oklch(85%  0.015 80);
  --ink:          oklch(18%  0.020 60);   /* warm near-black */
  --ink-2:        oklch(38%  0.020 60);
  --ink-3:        oklch(58%  0.015 60);
  --accent:       oklch(54%  0.180 35);   /* rust */
  --accent-strong:oklch(46%  0.200 30);
  --accent-tint:  oklch(94%  0.040 35);
  --success:      oklch(50%  0.140 145);  /* forest */
  --warn:         oklch(72%  0.150 75);   /* honey */
  --danger:       oklch(50%  0.180 25);   /* clay red */
}
```

---

### 2. Paper Cool
**Vibe.** Cold architectural drafting paper. Blue-gray neutrals, electric accent. Precision instrument feel.

**Best with.** Workbench / Specimen / Long Document. Analogs: drafting table, lab, observatory.

```css
:root {
  --paper:        oklch(98%  0.005 240);  /* paper with hint of blue */
  --paper-2:      oklch(96%  0.008 240);
  --paper-3:      oklch(93%  0.012 240);
  --rule:         oklch(84%  0.015 240);
  --ink:          oklch(20%  0.020 250);
  --ink-2:        oklch(40%  0.020 250);
  --ink-3:        oklch(60%  0.015 250);
  --accent:       oklch(55%  0.220 255);  /* electric blue */
  --accent-strong:oklch(48%  0.240 255);
  --accent-tint:  oklch(95%  0.040 255);
  --success:      oklch(56%  0.150 155);
  --warn:         oklch(72%  0.150 75);
  --danger:       oklch(55%  0.200 25);
}
```

---

### 3. Newsprint
**Vibe.** Real newspaper print. Slightly off-white, deep neutral grays, one classified-ad red. Stark, news-room.

**Best with.** Magazine / Tabloid / Long Document. Analogs: newsroom, op-ed page, broadside.

```css
:root {
  --paper:        oklch(96%  0.006 90);   /* newsprint cream */
  --paper-2:      oklch(93%  0.008 90);
  --paper-3:      oklch(90%  0.010 90);
  --rule:         oklch(70%  0.012 90);   /* sharp visible lines */
  --ink:          oklch(15%  0.005 90);   /* near-black */
  --ink-2:        oklch(38%  0.005 90);
  --ink-3:        oklch(58%  0.005 90);
  --accent:       oklch(50%  0.200 25);   /* classified red */
  --accent-strong:oklch(42%  0.220 25);
  --accent-tint:  oklch(92%  0.040 25);
  --success:      oklch(45%  0.130 145);
  --warn:         oklch(65%  0.150 75);
  --danger:       oklch(50%  0.200 25);
}
```

---

### 4. Bone
**Vibe.** Gallery white walls. Pure neutral. Almost no chroma anywhere. Severe minimalism.

**Best with.** Specimen / Showcase / Manifesto. Analogs: gallery, monograph, white cube space.

```css
:root {
  --paper:        oklch(99%  0.002 100);  /* near-white */
  --paper-2:      oklch(96%  0.003 100);
  --paper-3:      oklch(93%  0.004 100);
  --rule:         oklch(86%  0.005 100);
  --ink:          oklch(15%  0.003 100);
  --ink-2:        oklch(40%  0.003 100);
  --ink-3:        oklch(62%  0.003 100);
  --accent:       oklch(20%  0.005 100);  /* near-black accent */
  --accent-strong:oklch(10%  0.005 100);
  --accent-tint:  oklch(93%  0.005 100);
  --success:      oklch(50%  0.120 150);  /* deeply muted */
  --warn:         oklch(65%  0.130 80);
  --danger:       oklch(50%  0.160 25);
}
```

---

### 5. Olive Field
**Vibe.** Warm sage and olive. Calm, agrarian, but not earthy-twee. Considered organic.

**Best with.** Story / Letter / Catalog. Analogs: greenhouse, farmer's market, herbarium.

```css
:root {
  --paper:        oklch(97%  0.018 110);  /* warm green-cream */
  --paper-2:      oklch(94%  0.022 110);
  --paper-3:      oklch(90%  0.026 110);
  --rule:         oklch(80%  0.030 110);
  --ink:          oklch(22%  0.030 110);  /* olive-near-black */
  --ink-2:        oklch(40%  0.030 110);
  --ink-3:        oklch(58%  0.025 110);
  --accent:       oklch(45%  0.130 130);  /* deep moss */
  --accent-strong:oklch(38%  0.140 130);
  --accent-tint:  oklch(92%  0.040 130);
  --success:      oklch(50%  0.150 145);
  --warn:         oklch(70%  0.150 70);
  --danger:       oklch(52%  0.180 30);
}
```

---

## Dark palettes

### 6. Observatory
**Vibe.** Astronomer's working environment. Deep navy base, off-white text, phosphor signal color. Quiet, vigilant, technical.

**Best with.** Workbench / Stat-Led / Atlas dashboards. Analogs: observatory, control room, navigation bridge.

```css
:root {
  --paper:        oklch(15%  0.025 250);  /* deep navy */
  --paper-2:      oklch(19%  0.025 250);
  --paper-3:      oklch(23%  0.025 250);
  --rule:         oklch(30%  0.020 250);
  --ink:          oklch(95%  0.012 90);   /* warm off-white */
  --ink-2:        oklch(72%  0.010 90);
  --ink-3:        oklch(52%  0.010 90);
  --accent:       oklch(85%  0.180 145);  /* phosphor green */
  --accent-strong:oklch(78%  0.200 145);
  --accent-tint:  oklch(28%  0.060 145);
  --success:      oklch(80%  0.170 145);
  --warn:         oklch(82%  0.150 80);   /* amber */
  --danger:       oklch(70%  0.180 25);   /* signal red */
}
```

---

### 7. Studio Dark
**Vibe.** Music studio at night. Warm-tinted dark, amber accent, restful. Less clinical than Observatory.

**Best with.** Magazine / Story / Showcase. Analogs: jazz club, recording studio, cinema lobby.

```css
:root {
  --paper:        oklch(15%  0.015 60);   /* warm-tinted dark */
  --paper-2:      oklch(19%  0.018 60);
  --paper-3:      oklch(24%  0.018 60);
  --rule:         oklch(32%  0.020 60);
  --ink:          oklch(94%  0.015 80);   /* warm cream */
  --ink-2:        oklch(70%  0.015 80);
  --ink-3:        oklch(52%  0.015 80);
  --accent:       oklch(75%  0.150 60);   /* amber */
  --accent-strong:oklch(68%  0.170 55);
  --accent-tint:  oklch(28%  0.050 60);
  --success:      oklch(72%  0.150 145);
  --warn:         oklch(75%  0.150 60);
  --danger:       oklch(65%  0.180 25);
}
```

---

### 8. Forest Floor
**Vibe.** Deep green-black, sage accents. Organic dark mode. Calming, considered.

**Best with.** Letter / Manifesto / Story. Analogs: woodland clearing at dusk, library reading room.

```css
:root {
  --paper:        oklch(15%  0.020 145);  /* deep green-near-black */
  --paper-2:      oklch(18%  0.022 145);
  --paper-3:      oklch(22%  0.024 145);
  --rule:         oklch(30%  0.022 145);
  --ink:          oklch(94%  0.012 110);
  --ink-2:        oklch(72%  0.012 110);
  --ink-3:        oklch(52%  0.012 110);
  --accent:       oklch(72%  0.130 145);  /* sage */
  --accent-strong:oklch(65%  0.140 145);
  --accent-tint:  oklch(26%  0.040 145);
  --success:      oklch(75%  0.140 145);
  --warn:         oklch(75%  0.150 80);
  --danger:       oklch(65%  0.180 25);
}
```

---

### 9. Pure Slate
**Vibe.** Cool minimal dark. Pure neutral grays, single color accent. The least personality of any dark palette here — use when the brand IS the typography, not the color.

**Best with.** Long Document / Index / Pitch. Analogs: dossier, archive, executive briefing.

```css
:root {
  --paper:        oklch(15%  0.005 250);
  --paper-2:      oklch(19%  0.005 250);
  --paper-3:      oklch(23%  0.005 250);
  --rule:         oklch(30%  0.005 250);
  --ink:          oklch(95%  0.003 250);
  --ink-2:        oklch(72%  0.003 250);
  --ink-3:        oklch(52%  0.003 250);
  --accent:       oklch(70%  0.160 240);  /* clean blue */
  --accent-strong:oklch(62%  0.180 240);
  --accent-tint:  oklch(28%  0.060 240);
  --success:      oklch(70%  0.150 145);
  --warn:         oklch(75%  0.150 80);
  --danger:       oklch(65%  0.180 25);
}
```

---

### 10. Plum
**Vibe.** Saturated dark purple-magenta. Late-night creative tools. Editorial dark mode with attitude.

**Best with.** Magazine / Tabloid / Showcase. Analogs: cabaret, art opening, fashion week.

```css
:root {
  --paper:        oklch(15%  0.040 320);  /* deep plum */
  --paper-2:      oklch(19%  0.045 320);
  --paper-3:      oklch(23%  0.050 320);
  --rule:         oklch(32%  0.045 320);
  --ink:          oklch(96%  0.015 340);
  --ink-2:        oklch(74%  0.018 340);
  --ink-3:        oklch(54%  0.018 340);
  --accent:       oklch(75%  0.180 350);  /* hot pink-magenta */
  --accent-strong:oklch(68%  0.200 350);
  --accent-tint:  oklch(28%  0.080 340);
  --success:      oklch(75%  0.150 145);
  --warn:         oklch(80%  0.150 75);
  --danger:       oklch(65%  0.200 25);
}
```

---

## Bicolor / mood palettes

### 11. Salmon & Ink
**Vibe.** Editorial off-white + warm coral accent + ink-black text. Print-publication energy.

**Best with.** Magazine / Letter / Manifesto. Analogs: literary journal, indie press, café menu card.

```css
:root {
  --paper:        oklch(97%  0.012 60);   /* warm cream */
  --paper-2:      oklch(94%  0.015 60);
  --paper-3:      oklch(90%  0.018 60);
  --rule:         oklch(80%  0.020 60);
  --ink:          oklch(15%  0.005 60);   /* deep ink */
  --ink-2:        oklch(38%  0.005 60);
  --ink-3:        oklch(58%  0.005 60);
  --accent:       oklch(72%  0.170 30);   /* coral */
  --accent-strong:oklch(65%  0.190 25);
  --accent-tint:  oklch(94%  0.050 30);
  --success:      oklch(55%  0.150 145);
  --warn:         oklch(72%  0.150 75);
  --danger:       oklch(50%  0.200 25);
}
```

---

### 12. Brutalist High-Contrast
**Vibe.** Pure white, pure black, one shocking color (electric yellow). Brutalist commitment. Use ONLY if you mean it.

**Best with.** Tabloid / Manifesto / Showcase. Analogs: protest poster, punk zine, gallery announcement.

```css
:root {
  --paper:        oklch(99%  0.000 0);    /* nearly pure white */
  --paper-2:      oklch(96%  0.000 0);
  --paper-3:      oklch(92%  0.000 0);
  --rule:         oklch(10%  0.000 0);    /* sharp black rules */
  --ink:          oklch(10%  0.000 0);    /* near-pure black */
  --ink-2:        oklch(30%  0.000 0);
  --ink-3:        oklch(50%  0.000 0);
  --accent:       oklch(92%  0.200 105);  /* electric yellow */
  --accent-strong:oklch(85%  0.220 105);
  --accent-tint:  oklch(96%  0.080 105);
  --success:      oklch(55%  0.180 150);
  --warn:         oklch(85%  0.200 95);
  --danger:       oklch(50%  0.220 25);
}
```

---

## Choosing a palette

### Step 1: Light or dark?
- **Dashboards, dev tools, long-session products** → dark (Observatory, Studio Dark, Pure Slate)
- **Editorial, documentation, content-led** → light (Paper Warm, Paper Cool, Bone)
- **Marketing landing** → either, picked deliberately

### Step 2: Match the analog's emotional register
- **Cold / clinical / precise** → Paper Cool, Pure Slate, Observatory
- **Warm / inviting / human** → Paper Warm, Studio Dark, Salmon & Ink
- **Editorial / typographic** → Newsprint, Bone, Salmon & Ink
- **Organic / restful / agrarian** → Olive Field, Forest Floor
- **Loud / expressive / committed** → Plum, Brutalist High-Contrast, Salmon & Ink

### Step 3: Tune ONE thing if needed
You may swap the accent hue (the H value in `oklch(L C H)`) to match a brand. Keep L and C the same — they were tuned for contrast and balance.

```css
/* Original Observatory accent: oklch(85% 0.180 145) — green */
/* Switched to blue:            oklch(85% 0.180 250) — same energy, different hue */
/* Switched to amber:           oklch(85% 0.180 75) — same energy, different hue */
```

Do NOT freely tune L (lightness) and C (chroma) — those values are what make the palette feel coherent. The H (hue) is the only safely-swappable axis.

---

## Banned defaults

When generating palettes, NEVER reach for:

- `#000` / `#ffffff` — use `oklch(10% 0.005 90)` and `oklch(98% 0.008 90)` instead. Pure values fight rendering and look harsh.
- Tailwind `gray`, `slate`, `zinc`, `neutral` defaults — they're the AI-modal palette. Use a tinted neutral from above.
- Bright `#22C55E` Vercel green as the accent — it's been done. Use a less-saturated green (Observatory's phosphor) or pick a different hue entirely.
- Purple-to-pink gradients (`#a855f7 → #ec4899`) — the most-tagged AI tell.
- `#3b82f6` Tailwind blue as the only color — use a more specific blue (oklch tunes available above).

---

## The 60/30/10 distribution

Every palette should follow:

- **60% paper / paper-2 / paper-3** — most surface area
- **30% ink / ink-2 / ink-3 + rule** — text and structural lines
- **10% accent and semantic colors combined** — used sparingly enough that the eye returns to them

Specifically: the accent color should appear on no more than **5% of any single viewport**. If you find your accent everywhere, demote some elements to `ink-2` or `rule` colors.

---

## Implementation note

These palettes are presented as CSS custom properties for portability. If your project uses Tailwind, define them in the theme config:

```js
// tailwind.config.js (Tailwind v3) or @theme block (v4)
theme: {
  colors: {
    paper:        'oklch(98% 0.008 80)',
    'paper-2':    'oklch(96% 0.010 80)',
    // ...etc
  }
}
```

OKLCH is supported in all evergreen browsers (Chrome 111+, Safari 15.4+, Firefox 113+). For older browser support, use a build-time tool like postcss-oklch-function to compile to rgb fallbacks.
