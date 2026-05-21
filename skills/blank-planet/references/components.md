# Component Exemplars: Copy-Pasteable HTML/CSS

Concrete component snippets you can adapt. Few-shot beats zero-shot by 15–40% on generation tasks — these examples are why.

Every snippet uses the OKLCH token system from [[palettes]]. Swap palette tokens to change the look without touching structure.

**Rule:** use these as a starting *shape*, not a literal copy. The point is to show what production-grade HTML/CSS looks like at this level so the model has a reference for "good." Then adapt the structure to the specific brief.

---

## Heroes

### H1 — Manifesto hero (statement-led)
Best for: Manifesto, Letter macrostructures. Analogs: op-ed page, broadside.

```html
<section class="hero-manifesto">
  <p class="hero-meta">A statement of intent · May 2026</p>
  <h1 class="hero-statement">
    Reliability is not a feature.<br/>
    It's a contract.
  </h1>
  <p class="hero-sub">— Arclight Systems</p>
</section>
```

```css
.hero-manifesto {
  min-height: 88dvh;
  display: grid;
  align-content: end;
  padding: clamp(2rem, 6vw, 5rem);
  background: var(--paper);
  color: var(--ink);
}
.hero-meta {
  font-family: var(--font-mono);
  font-size: 13px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--ink-3);
  margin-bottom: clamp(2rem, 8vw, 5rem);
}
.hero-statement {
  font-size: clamp(3.5rem, 11vw, 9rem);
  line-height: 0.92;
  letter-spacing: -0.04em;
  font-weight: 600;
  margin: 0;
  max-width: 18ch;
}
.hero-sub {
  font-size: clamp(1rem, 1.5vw, 1.25rem);
  color: var(--ink-2);
  margin-top: 2rem;
}
```

---

### H2 — Stat-led hero (single hero number)
Best for: Stat-Led macrostructure. Analogs: scoreboard, atomic clock, blood pressure cuff.

```html
<section class="hero-stat">
  <div class="hero-stat__num">
    <span class="hero-stat__digit">17</span><span class="hero-stat__unit">s</span>
  </div>
  <div class="hero-stat__claim">
    <h1>Mean time to resolution.</h1>
    <p>Down from 23 minutes. Across 1,200+ incidents at 12 production teams.</p>
    <a href="#proof" class="link-inline">See the methodology →</a>
  </div>
</section>
```

```css
.hero-stat {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: clamp(2rem, 5vw, 4rem);
  padding: clamp(3rem, 8vw, 6rem) clamp(1.5rem, 4vw, 3rem);
  align-items: center;
  min-height: 80dvh;
  background: var(--paper);
  color: var(--ink);
}
@media (min-width: 900px) {
  .hero-stat { grid-template-columns: minmax(0, 1.2fr) minmax(0, 1fr); }
}
.hero-stat__num {
  font-family: var(--font-mono);
  line-height: 0.85;
  letter-spacing: -0.05em;
  display: flex;
  align-items: flex-start;
}
.hero-stat__digit {
  font-size: clamp(8rem, 24vw, 22rem);
  font-weight: 500;
  color: var(--ink);
}
.hero-stat__unit {
  font-size: clamp(3rem, 8vw, 7rem);
  color: var(--ink-3);
  margin-left: 0.2em;
  margin-top: 0.1em;
}
.hero-stat__claim h1 {
  font-size: clamp(1.75rem, 3vw, 2.75rem);
  line-height: 1.1;
  margin: 0 0 1rem;
  letter-spacing: -0.02em;
}
.hero-stat__claim p {
  font-size: 1.125rem;
  line-height: 1.5;
  color: var(--ink-2);
  max-width: 40ch;
}
.link-inline {
  display: inline-block;
  margin-top: 1.5rem;
  color: var(--accent);
  border-bottom: 1px solid currentColor;
  padding-bottom: 2px;
}
```

---

### H3 — Workbench hero (tool-as-hero, minimal chrome)
Best for: Workbench, Demo-Forward. Analogs: cockpit, lab bench, studio.

```html
<section class="hero-workbench">
  <header class="workbench-bar">
    <span class="workbench-name">soundlab</span>
    <span class="workbench-status">
      <span class="dot"></span> ready
    </span>
    <button class="btn-quiet">sign in</button>
  </header>
  <main class="workbench-stage" id="stage">
    <!-- The actual tool renders here -->
    <div class="workbench-canvas">[interactive surface]</div>
    <div class="workbench-controls">
      <button class="btn-tool">record</button>
      <button class="btn-tool">slice</button>
      <button class="btn-tool">mix</button>
    </div>
  </main>
  <footer class="workbench-caption">
    Try it. No sign-up required. Your audio stays in the browser.
  </footer>
</section>
```

```css
.hero-workbench {
  display: grid;
  grid-template-rows: auto 1fr auto;
  min-height: 100dvh;
  background: var(--paper);
  color: var(--ink);
}
.workbench-bar {
  display: flex;
  align-items: center;
  gap: 1.5rem;
  padding: 1rem 1.5rem;
  border-bottom: 1px solid var(--rule);
  font-family: var(--font-mono);
  font-size: 13px;
}
.workbench-name {
  font-weight: 600;
  letter-spacing: -0.01em;
  margin-right: auto;
}
.workbench-status {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  color: var(--ink-2);
}
.dot {
  width: 6px; height: 6px;
  border-radius: 50%;
  background: var(--accent);
}
.btn-quiet {
  background: transparent;
  border: 1px solid var(--rule);
  padding: 0.4rem 0.8rem;
  font: inherit;
  color: var(--ink);
  cursor: pointer;
  border-radius: 2px;
}
.workbench-stage {
  display: grid;
  grid-template-rows: 1fr auto;
  gap: 1rem;
  padding: 2rem;
}
.workbench-canvas {
  background: var(--paper-2);
  border: 1px solid var(--rule);
  display: grid;
  place-items: center;
  color: var(--ink-3);
  min-height: 60vh;
}
.workbench-controls {
  display: flex;
  gap: 0.5rem;
  justify-content: center;
}
.btn-tool {
  background: var(--paper-2);
  border: 1px solid var(--rule);
  padding: 0.6rem 1.2rem;
  font: inherit;
  font-family: var(--font-mono);
  font-size: 13px;
  color: var(--ink);
  cursor: pointer;
  border-radius: 2px;
}
.btn-tool:hover { background: var(--paper-3); }
.workbench-caption {
  padding: 1rem 1.5rem;
  border-top: 1px solid var(--rule);
  font-size: 13px;
  color: var(--ink-3);
  text-align: center;
}
```

---

### H4 — Editorial split hero (two-column, text-led)
Best for: Magazine, Specimen, Side-by-Side macrostructures.

```html
<section class="hero-split">
  <div class="hero-split__left">
    <p class="kicker">Issue 04 · The Quiet Tools</p>
    <h1>What we built in the months no one was watching.</h1>
    <p class="hero-split__sub">A field report on the eight pieces of software that quietly carried the year.</p>
  </div>
  <figure class="hero-split__right">
    <img src="/cover-04.jpg" alt="" />
    <figcaption>Field study, San Francisco, March 2026</figcaption>
  </figure>
</section>
```

```css
.hero-split {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
  padding: clamp(2rem, 5vw, 5rem);
  background: var(--paper);
}
@media (min-width: 900px) {
  .hero-split {
    grid-template-columns: minmax(0, 1fr) minmax(0, 1fr);
    align-items: end;
    min-height: 90dvh;
  }
}
.hero-split__left { display: flex; flex-direction: column; gap: 1.5rem; }
.kicker {
  font-family: var(--font-mono);
  font-size: 12px;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--ink-3);
}
.hero-split h1 {
  font-family: var(--font-serif, var(--font-sans));
  font-size: clamp(2.5rem, 6vw, 5rem);
  line-height: 1.0;
  letter-spacing: -0.03em;
  font-weight: 500;
  margin: 0;
  max-width: 14ch;
}
.hero-split__sub {
  font-size: 1.25rem;
  line-height: 1.45;
  color: var(--ink-2);
  max-width: 38ch;
}
.hero-split__right img {
  width: 100%;
  aspect-ratio: 4 / 5;
  object-fit: cover;
  filter: grayscale(1);
}
.hero-split__right figcaption {
  margin-top: 0.75rem;
  font-size: 13px;
  font-style: italic;
  color: var(--ink-3);
}
```

---

## Navigation

### N1 — Minimal nav (single row, no overengineering)
```html
<nav class="nav-minimal">
  <a href="/" class="nav-brand">arclight</a>
  <a href="#docs" class="nav-link">docs</a>
  <a href="#access" class="nav-cta">request access →</a>
</nav>
```

```css
.nav-minimal {
  display: flex;
  align-items: center;
  gap: 2rem;
  padding: 1.25rem clamp(1.5rem, 4vw, 3rem);
  border-bottom: 1px solid var(--rule);
  font-size: 14px;
}
.nav-brand {
  font-weight: 600;
  letter-spacing: -0.01em;
  color: var(--ink);
  text-decoration: none;
}
.nav-link {
  color: var(--ink-2);
  text-decoration: none;
  margin-right: auto;
}
.nav-link:hover { color: var(--ink); }
.nav-cta {
  color: var(--accent);
  text-decoration: none;
  font-weight: 500;
}
```

### N2 — Sidebar nav (for docs / app)
```html
<aside class="nav-sidebar">
  <a href="/" class="nav-brand">docs</a>
  <nav>
    <p class="nav-section">Getting started</p>
    <ul>
      <li><a href="#install" class="active">Install</a></li>
      <li><a href="#first-call">Your first call</a></li>
      <li><a href="#auth">Authentication</a></li>
    </ul>
    <p class="nav-section">Concepts</p>
    <ul>
      <li><a href="#agents">Agents</a></li>
      <li><a href="#tools">Tools</a></li>
    </ul>
  </nav>
</aside>
```

```css
.nav-sidebar {
  width: 260px;
  padding: 1.5rem;
  border-right: 1px solid var(--rule);
  background: var(--paper);
  font-size: 14px;
  position: sticky; top: 0;
  height: 100vh;
  overflow-y: auto;
}
.nav-sidebar .nav-brand {
  font-weight: 600;
  font-size: 16px;
  color: var(--ink);
  text-decoration: none;
  display: block;
  margin-bottom: 2rem;
}
.nav-section {
  font-family: var(--font-mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--ink-3);
  margin: 1.5rem 0 0.5rem;
}
.nav-sidebar ul { list-style: none; padding: 0; margin: 0; }
.nav-sidebar li a {
  display: block;
  padding: 0.4rem 0.6rem;
  margin-left: -0.6rem;
  color: var(--ink-2);
  text-decoration: none;
  border-radius: 4px;
}
.nav-sidebar li a:hover { background: var(--paper-2); color: var(--ink); }
.nav-sidebar li a.active { background: var(--accent-tint); color: var(--accent-strong); font-weight: 500; }
```

---

## Buttons

### B1 — Primary button (one earned moment of richness)
```html
<a href="#cta" class="btn-primary">Request access</a>
```

```css
.btn-primary {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.25rem;
  background: var(--accent);
  color: var(--paper);
  border-radius: 4px;
  font-weight: 500;
  font-size: 14px;
  text-decoration: none;
  box-shadow:
    0 1px 0 oklch(100% 0 0 / 0.15) inset,
    0 4px 16px -4px oklch(from var(--accent) l c h / 0.4);
  transition: background 140ms cubic-bezier(0.2, 0.8, 0.2, 1), box-shadow 140ms;
}
.btn-primary:hover {
  background: var(--accent-strong);
  box-shadow:
    0 1px 0 oklch(100% 0 0 / 0.15) inset,
    0 6px 24px -4px oklch(from var(--accent) l c h / 0.55);
}
.btn-primary:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 3px;
}
```

### B2 — Secondary / ghost button
```html
<a href="#docs" class="btn-ghost">Read the docs</a>
```

```css
.btn-ghost {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.25rem;
  background: transparent;
  color: var(--ink);
  border: 1px solid var(--rule);
  border-radius: 4px;
  font-weight: 500;
  font-size: 14px;
  text-decoration: none;
  transition: background 140ms, border-color 140ms;
}
.btn-ghost:hover {
  background: var(--paper-2);
  border-color: var(--ink-3);
}
```

---

## Cards (use sparingly)

### C1 — Specimen card (single focused item)
For Specimen / Catalog macrostructures.

```html
<article class="card-specimen">
  <img src="/item.jpg" alt="" />
  <header>
    <h3>Field Notes 04</h3>
    <p class="card-meta">Letterpress · 96pp · 2026</p>
  </header>
  <p>An object documenting the small tools, materials, and gestures of a working studio.</p>
  <a href="/items/field-notes-04" class="card-link">View specimen →</a>
</article>
```

```css
.card-specimen {
  display: grid;
  grid-template-rows: auto auto auto;
  gap: 1rem;
  padding: 0;
  background: transparent;
}
.card-specimen img {
  width: 100%;
  aspect-ratio: 3 / 4;
  object-fit: cover;
}
.card-specimen h3 {
  font-size: 1.25rem;
  font-weight: 500;
  margin: 0 0 0.25rem;
  letter-spacing: -0.01em;
}
.card-meta {
  font-family: var(--font-mono);
  font-size: 12px;
  letter-spacing: 0.05em;
  color: var(--ink-3);
  margin: 0;
}
.card-specimen p {
  font-size: 15px;
  line-height: 1.55;
  color: var(--ink-2);
  margin: 0;
}
.card-link {
  font-size: 14px;
  color: var(--ink);
  text-decoration: none;
  border-bottom: 1px solid var(--ink);
  padding-bottom: 1px;
  width: fit-content;
}
```

---

## Pull quote (for editorial / story)

```html
<figure class="pull-quote">
  <blockquote>
    Reliability is the only feature you have to keep paying for after you've built it.
  </blockquote>
  <figcaption>
    <span>Priya Mehta</span>
    <span class="cite">Director of SRE, Plate</span>
  </figcaption>
</figure>
```

```css
.pull-quote {
  margin: clamp(3rem, 8vw, 6rem) 0;
  padding: 0;
  max-width: 24ch;
}
.pull-quote blockquote {
  font-family: var(--font-serif, var(--font-sans));
  font-size: clamp(2rem, 4vw, 3.5rem);
  line-height: 1.1;
  letter-spacing: -0.02em;
  font-weight: 400;
  margin: 0;
  color: var(--ink);
}
.pull-quote figcaption {
  margin-top: 1.5rem;
  font-size: 14px;
  display: flex;
  flex-direction: column;
  gap: 0.15rem;
}
.pull-quote figcaption span { color: var(--ink); font-weight: 500; }
.pull-quote .cite { color: var(--ink-3); font-weight: 400; }
```

---

## Long-form prose styling

For Long Document, Letter, Manifesto macrostructures.

```html
<article class="prose">
  <p>It started, as these things often do, with a complaint about logs.</p>
  <p>The team had been chasing a particular kind of incident for weeks…</p>
  <h2>The first observation</h2>
  <p>We noticed that the alerts weren't wrong, exactly…</p>
</article>
```

```css
.prose {
  max-width: 65ch;
  margin: 0 auto;
  padding: 0 clamp(1rem, 4vw, 2rem);
  font-size: 18px;
  line-height: 1.7;
  color: var(--ink);
}
.prose p {
  margin: 0 0 1.5em;
}
.prose p + p { text-indent: 1.5em; margin-top: -0.75em; }
.prose h2 {
  font-size: 1.75rem;
  font-weight: 500;
  margin: 2.5em 0 0.75em;
  letter-spacing: -0.01em;
}
.prose a {
  color: var(--ink);
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 3px;
  text-decoration-color: var(--ink-3);
}
.prose a:hover { text-decoration-color: currentColor; }
```

---

## Footer

### F1 — Minimal footer (one line)
```html
<footer class="footer-minimal">
  <span>© 2026 Arclight Systems</span>
  <nav>
    <a href="/security">Security</a>
    <a href="/docs">Docs</a>
    <a href="mailto:hi@arclight.com">hi@arclight.com</a>
  </nav>
</footer>
```

```css
.footer-minimal {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  padding: 2rem clamp(1.5rem, 4vw, 3rem);
  border-top: 1px solid var(--rule);
  font-size: 13px;
  color: var(--ink-3);
}
.footer-minimal nav { display: flex; gap: 1.5rem; }
.footer-minimal a {
  color: var(--ink-2);
  text-decoration: none;
}
.footer-minimal a:hover { color: var(--ink); }
```

### F2 — Letterpress footer (long-form, statement)
For Manifesto / Letter / Editorial pages.

```html
<footer class="footer-letter">
  <p class="footer-stmt">Made in San Francisco, by three engineers who got tired of being woken up.</p>
  <p class="footer-sig">— hi@arclight.com · 2026</p>
</footer>
```

```css
.footer-letter {
  padding: clamp(3rem, 8vw, 6rem) clamp(1.5rem, 4vw, 3rem);
  border-top: 1px solid var(--rule);
  text-align: center;
}
.footer-stmt {
  font-family: var(--font-serif, var(--font-sans));
  font-size: 1.5rem;
  line-height: 1.4;
  font-style: italic;
  color: var(--ink-2);
  max-width: 40ch;
  margin: 0 auto 1.5rem;
}
.footer-sig {
  font-family: var(--font-mono);
  font-size: 13px;
  letter-spacing: 0.05em;
  color: var(--ink-3);
}
```

---

## Form: email capture

```html
<form class="form-capture" onsubmit="event.preventDefault(); this.querySelector('.form-success').hidden=false;">
  <label for="email" class="sr-only">Email address</label>
  <input id="email" name="email" type="email" required placeholder="you@company.com" />
  <button type="submit" class="btn-primary">Request access</button>
  <p class="form-success" hidden>On the list. We'll be in touch within an hour.</p>
</form>
```

```css
.form-capture {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  max-width: 480px;
}
.form-capture input {
  flex: 1 1 220px;
  padding: 0.75rem 1rem;
  background: var(--paper);
  border: 1px solid var(--rule);
  border-radius: 4px;
  font: inherit;
  color: var(--ink);
}
.form-capture input::placeholder { color: var(--ink-3); }
.form-capture input:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 0;
  border-color: var(--accent);
}
.form-success {
  flex-basis: 100%;
  font-size: 14px;
  color: var(--accent-strong);
  margin: 0.5rem 0 0;
}
.sr-only {
  position: absolute; width: 1px; height: 1px;
  overflow: hidden; clip: rect(0 0 0 0);
}
```

---

## Reset & base (always include these first)

```css
*, *::before, *::after { box-sizing: border-box; }
html, body { margin: 0; padding: 0; }
html {
  text-size-adjust: 100%;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
img, svg, video { display: block; max-width: 100%; }
button, input, select, textarea { font: inherit; color: inherit; }
button { cursor: pointer; background: none; border: none; padding: 0; }
ul, ol { list-style: none; padding: 0; margin: 0; }
a { color: inherit; text-decoration: none; }

body {
  font-family: var(--font-sans, system-ui, sans-serif);
  font-size: 16px;
  line-height: 1.5;
  color: var(--ink);
  background: var(--paper);
}

@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

---

## What's deliberately missing here

- **Bento grids.** Bento is over-used. If you need one, look it up — but the default should be a uniform grid sized to the content.
- **Glassmorphism cards.** Used everywhere by AI. If you need it, you know why; don't reach for it as the default surface.
- **Gradient hero text.** Banned (see [[anti-patterns]] gate 7).
- **Three-card feature grids.** The AI default. Don't ship it as-is; restructure.
- **Marquee logo strips with fake logos.** Banned (gate 3).
- **Fake terminal mockups in heroes.** Banned (gate 10).

---

## How to use these

1. Pick your macrostructure (from [[macrostructures]]).
2. Pick your palette (from [[palettes]]) and add the OKLCH token block.
3. Pick your typography pairing (from [[typography]]).
4. Pull the relevant snippets above for hero, nav, footer, etc.
5. **Adapt to the brief.** Don't ship these literally — they're shape references, not templates. Change the structure where the project needs different structure.
6. Run the slop-test ([[slop-test]]) and self-critique ([[self-critique]]) before showing the user.

The point of having these snippets is to give the model a concrete target for what "production-grade" looks like at the component level. Without examples, the model defaults to bootstrap-shaped components. With examples, it produces work that matches the level of the examples.
