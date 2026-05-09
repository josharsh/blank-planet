# blank-planet

A Claude Code skill for designing products from first principles using structural analogy. No copying, no mood boards, no "make it look like Stripe."

## The Premise

You're the only designer on Earth. You just landed on a blank planet. You must design something professional without copying anything you've seen. All you have is the science of why things work and the ability to draw parallels from the physical world.

## Install

In Claude Code, run:

```
/plugin marketplace add josharsh/blank-planet
```

Or manually:

```bash
mkdir -p ~/.claude/skills/blank-planet
curl -sL https://raw.githubusercontent.com/josharsh/blank-planet/main/skills/blank-planet/SKILL.md \
  -o ~/.claude/skills/blank-planet/SKILL.md
```

## What It Does

Most design processes start with "find inspiration" — which means opening Dribbble and copying something. This skill starts with the STRUCTURE of your product and derives every visual decision from a physical-world analog.

**The method:**

1. **Structural Identity** — Define your product on six dimensions (temporal mode, decision gravity, information density, user relationship, emotional register, interaction mode). These are structural, not visual.

2. **Find the Analog** — A non-digital physical space that shares your product's structural DNA. A real-time monitoring dashboard maps to an air traffic control tower. A journaling app maps to a Japanese garden. A code editor maps to a watchmaker's workshop.

3. **The Transfer** — Derive every design decision from the analog's physical properties. The control tower is dark because operators need to see bright instruments against it. Therefore your dashboard is dark. The garden has asymmetric balance and negative space as the primary element. Therefore your journaling app breathes.

4. **Universal Constants** — Validate against neuroscience: contrast ratios, pre-attentive processing, Gestalt proximity, spacing systems, type scales. These override the analog when they conflict.

5. **Restraint Pass** — Remove everything that doesn't earn its place. Every element must justify its existence through the lens of the analog. Bouncy animations on a surgical dashboard? The analog says no.

6. **Coherence Audit** — Check for the uncanny valley: are ALL elements at the same level of polish? Mixed fidelity is worse than consistently rough.

## Commands

| Command | What it does |
|---------|-------------|
| `/blank-planet` | Full flow: discover product, find analog, derive design direction |
| `/blank-planet analog` | Just the structural analog exercise (creative reframing) |
| `/blank-planet audit` | Audit existing design for coherence and structural alignment |
| `/blank-planet why` | Explain WHY a design decision works, grounded in science |

## The Science Behind It

Three converging fields make this work:

- **Structure-Mapping Theory** (Gentner, 1983) — Creative design is mapping structural relations from one domain to another. Not copying surfaces — transferring logic.
- **Processing Fluency** (Reber et al., 2004) — The brain perceives things as more beautiful when they're easier to process. Consistency, hierarchy, and familiar proportions trigger reward responses.
- **Pre-Attentive Processing** — The visual cortex processes size, color, position, and shape in under 250ms. Design that aligns with these channels feels natural. Design that fights them feels wrong.

## Example

**Product:** DevOps monitoring dashboard, used 8 hours/day, downtime costs money.

**Structural Identity:** Real-time, high-stakes, multi-stream, daily power users, alerting.

**Analog:** Maritime navigation bridge at night.

**Transfer:**
- Light (dim, focal) → Dark UI, bright data points, muted surfaces
- Sound (quiet vigilance) → Subtle transitions (150ms), no bounce
- Movement (stationary scanning) → Single-page, everything visible
- Materials (matte, anti-glare) → Flat surfaces, no gradients
- Density (packed but ordered) → 8px spacing, compact components
- Attention (green=clear, red=danger) → Strict semantic color
- Tools (precision switches) → Sharp corners, keyboard shortcuts

The result is a design direction that's coherent because everything flows from ONE source — not a patchwork of trends.

## Pairs With

- [`/font-matchmaker`](https://github.com/josharsh/font-matchmaker) — select specific typefaces matching the direction
- [`/design-system`](https://github.com/josharsh/design-system) — generate tokens and component recommendations

These three skills form a pipeline: blank-planet finds the direction, font-matchmaker selects typography, design-system generates the tokens.

## License

MIT
