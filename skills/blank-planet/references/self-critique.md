# Self-Critique: 6-Axis Pre-Emit Scoring

Before showing any generated UI to the user, score it against six axes. Each axis is 1–5. Any axis below **3** triggers a revision pass — do not ship the output. Add the scores as a comment block in the source so the next iteration has visibility into the judgment.

This is the most load-bearing single addition to the blank-planet method. Without it, the model generates whatever it generates and ships. With it, the model is forced to look at its own work and apply discriminating judgment before the user sees it.

This is structurally similar to Hallmark's self-critique. The axes are tuned to blank-planet's specific failure modes.

---

## The six axes

### 1. Philosophy (1–5)
*Does the output express the structural analog clearly, or could it be from any other product?*

**5 — Embodied.** The analog is visible in every choice. A reader who knows the analog can see it without being told.

**4 — Clear.** The analog is the obvious driver; minor elements feel generic.

**3 — Implicit.** The analog informed *some* decisions; others reverted to defaults.

**2 — Vestigial.** The analog was named but barely shows up in the output.

**1 — Absent.** The output is generic; you could swap the analog and nothing about the design would change.

**Score below 3 → revision.** Go back to the Transfer Map (Phase 4) and re-derive specific visual decisions from the analog. The most common cause of a low Philosophy score is jumping from analog → "dark UI with green accent" without doing the channel-by-channel mapping.

---

### 2. Hierarchy (1–5)
*Does a first-time reader instantly know what to look at, in what order, and why?*

**5 — Inevitable.** The eye lands on the right element first, every time. The flow of attention matches the meaning of the page.

**4 — Strong.** Clear primary focal point; secondary elements ranked correctly.

**3 — Adequate.** The most important thing is identifiable, but the second-most-important is muddy.

**2 — Flat.** Multiple elements compete for attention with no winner.

**1 — Inverted.** Decoration outweighs content; the user looks at the wrong thing first.

**Score below 3 → revision.** Apply the "two pre-attentive channels" rule: the primary element must differ from its surroundings in at least TWO of (size, weight, color, position, contrast). Demote secondary elements aggressively. Most low Hierarchy scores come from too many elements at the same visual weight.

---

### 3. Execution (1–5)
*How crafted does the output feel? Is it production-grade or sketch-grade?*

**5 — Bespoke.** Visible care in every detail: type pairing, micro-spacing, hover states, focus rings, edge cases. Looks like it shipped from a team that ships for a living.

**4 — Polished.** Most details considered; one or two areas feel default.

**3 — Functional.** The page works. The polish is uneven — some areas considered, others off-the-shelf.

**2 — Sketchy.** Multiple visible gaps: missing hover states, awkward spacing, generic components.

**1 — Slop.** Reads as a wireframe with color applied. No micro-care visible.

**Score below 3 → revision.** Specific things to add for craft: working hover/focus states, considered transitions (120–200ms), real OG image or favicon mention, dark/light mode if appropriate, real spacing rhythm (not random px values), a single bespoke element that stands out.

---

### 4. Specificity (1–5)
*Could the page be selling/serving any other product, or is it unambiguously THIS product?*

**5 — Unique.** Every claim, number, screenshot, and copy line is specific to this product. The page couldn't apply to anyone else.

**4 — Mostly specific.** Headlines and major copy are specific; some body copy is generic.

**3 — Half-and-half.** Major sections are specific; structural copy is template.

**2 — Mostly generic.** A few specifics; most copy could swap to a competitor's page.

**1 — Generic.** Vague benefit copy throughout; could be any of 1000 similar products.

**Score below 3 → revision.** Find every vague claim ("modern teams", "the future of X", "move faster") and replace with a concrete falsifiable statement. If you don't know the specifics, ask the user — don't invent placeholder vagueness.

---

### 5. Restraint (1–5)
*Does every element earn its place, or is there decoration without function?*

**5 — Disciplined.** Nothing on the page is decoration. Every element pulls weight; removing any one would degrade the page.

**4 — Mostly tight.** One or two elements are decorative but defensible (atmospheric).

**3 — Acceptable.** Some decorative drift; the page would be slightly better with cuts.

**2 — Loose.** Visible chart-junk: unnecessary icons, duplicate labels, ornamental gradients.

**1 — Cluttered.** Decoration overpowers content; the page is fighting itself.

**Score below 3 → revision.** Apply the "remove one thing" exercise from Phase 6. Specifically:
- Cut icons that duplicate text labels
- Remove background colors on elements that work without them
- Delete eyebrows on sections that don't need ordering
- Consolidate similar elements (3 testimonials → 1 quote; 4 stats → 1 hero stat)
- Remove the marquee, the second pricing variant, the third aurora blob

**Note:** Restraint is NOT the same as low richness (see [[richness-budget]]). A page can score 5 on restraint while still being visually rich — *if* every rich element is purposeful. Don't confuse "disciplined" with "spartan."

---

### 6. Variety (1–5)
*Compared to the last few pages generated, is this one structurally different, or a color-swap of the previous output?*

**5 — Fresh.** Different macrostructure, different palette family, different typographic pairing, different hierarchy approach. A reader looking at both pages would not guess they came from the same tool.

**4 — Distinct.** Two of the four (macrostructure / palette / typography / hierarchy) differ from the last output.

**3 — Adjacent.** One major differentiator (e.g., palette changed, everything else stayed).

**2 — Similar.** Only surface differences (color tweaks, copy changes, same skeleton).

**1 — Same.** Indistinguishable from the last generated output except for content.

**Score below 3 → revision.** Check `.blank-planet/log.json` (if maintained) for the last 3 outputs' macrostructure / palette / typography. The current output must differ on at least 2 of 3 axes. If you don't have a log, look at your own recent work and force divergence.

This axis is what prevents the model from converging on a "successful" template and repeating it.

---

## How to apply

After generating, *before* showing the user, score yourself in a single pass:

```
SELF-CRITIQUE — scoring my own output

  Axis           Score   Justification
  ─────────────  ─────   ─────────────
  Philosophy     4/5     Observatory analog visible in dark base + phosphor accent; could push harder on dim-lighting metaphor in section transitions
  Hierarchy      4/5     Hero number clearly dominant; secondary CTA could be more demoted
  Execution      3/5     Hover states good; missing focus rings on three buttons — fixing now
  Specificity    5/5     All copy ties to the actual product brief; no vague benefit claims
  Restraint      4/5     One decorative gradient on the divider that doesn't earn place — removing
  Variety        4/5     Different macrostructure from last output (Stat-Led vs prior Manifesto); same palette family
```

Any score below 3 → revise that axis before shipping. Re-score after revising.

---

## Hard rules

- **Score honestly.** Inflating scores to skip revision is the failure mode. If you're not sure between 3 and 4, score 3 and revise.
- **Score in one pass.** Don't iterate scores forever. Score → revise low axes → re-score → ship. Two passes is enough.
- **All six axes count.** Don't cherry-pick. A page that's 5/5/5/5/5/2 still has a problem (variety, in this case).
- **Stamp the result in source.** Add a CSS comment block at the top of the stylesheet with the scores. Helps the user understand the choices and gives the next iteration a baseline.

---

## When to use a different scoring threshold

For high-stakes outputs (the user has explicitly said "this is going live", "this is the brand site"), raise the bar to 4 — any axis below 4 triggers revision.

For exploratory outputs (the user is iterating, throwing ideas around), 3 is the floor. Don't over-polish exploratory work; the user wants to see range, not perfection.

For first-pass / sketch outputs (the user wants something quick to react to), skip the self-critique and ship. Then run it on the next iteration once the direction is confirmed.

---

## Why this works

LLMs are bad at one-shot quality. The same model that produces sloppy output without a self-critique pass produces tight output with one — because the critique forces the model to look at its work as a critic, which is a different cognitive mode than as a generator.

This is empirically validated in prompt engineering: a "generate, then critique, then revise" pipeline beats single-shot generation by a measurable margin on creative tasks. The critique step is where most of the quality gain comes from.

The six axes here are tuned to the specific failure modes of design tasks. The general "critique your output" prompt doesn't surface the right issues; structured axes do.

---

## Connection to the slop-test

The self-critique (this file) is **subjective** — it asks for judgment on each axis.

The slop-test ([[slop-test]]) is **objective** — it asks binary yes/no on specific patterns.

Both are needed. Subjective catches things like "the hierarchy is muddy." Objective catches things like "you used a fake-logo marquee." A page can pass one and fail the other.

Run order: self-critique first (catches structural issues that would invalidate going further), then the slop-test (catches concrete tells), then ship.
