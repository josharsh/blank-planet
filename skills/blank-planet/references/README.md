# Blank-Planet References

Concrete scaffolding loaded by the blank-planet skill at the appropriate phase. The SKILL.md defines the *method*; these files supply the *material* the method operates on.

The split exists because LLMs produce better visual output when given concrete exemplars (banned defaults, named anti-patterns, pre-built palettes, copy-pasteable snippets) than when given pure principles. Few-shot beats zero-shot by 15–40% on generation tasks; this directory is the few-shot payload.

## Load order

Reference files map to specific phases of the skill:

| Phase | File | Purpose |
|---|---|---|
| 0 — Genre detection | `genres.md` | Identify the kind of surface before reading the project |
| 3 — Find the analog | (no ref; SKILL.md handles) | Structural analog selection |
| 4 — Transfer map | `richness-budget.md` | Set visible-craft budget per region |
| 5 — Universal constants | `palettes.md`, `typography.md` | Pre-built color systems and font pairings |
| 6 — Restraint pass | `anti-patterns.md` | 30 named AI tells to check against |
| 7 — Macrostructure choice | `macrostructures.md` | 18 named page shapes — pick one explicitly |
| 8 — Generation | `components.md` | Copy-pasteable HTML/CSS exemplars |
| 9 — Pre-emit critique | `self-critique.md` | 6-axis scoring; <3 forces revision |
| 10 — Post-emit gates | `slop-test.md` | 25 yes/no checks; some are hard fails |

## The files

- **anti-patterns.md** — 30 named AI design tells (the purple-gradient hero, AI nav, marquee logo strip, etc.), each with `tell · why · fix`.
- **genres.md** — 6 surface genres (marketing / dashboard / docs / portfolio / app / demo) with how the method shifts for each.
- **macrostructures.md** — 18 named page shapes (Manifesto, Stat-Led, Workbench, etc.) as alternatives to the AI-default hero→features→CTA template.
- **richness-budget.md** — The axis orthogonal to restraint. How to be both restrained AND visually rich.
- **palettes.md** — 12 pre-built OKLCH palettes with consistent role tokens (paper/ink/accent/etc).
- **typography.md** — Banned default fonts, 30 curated pairings by tone, voice taxonomy, modular scales.
- **components.md** — Copy-pasteable HTML/CSS for heroes, navs, footers, cards, forms. The few-shot payload.
- **self-critique.md** — 6-axis pre-emit scoring (Philosophy/Hierarchy/Execution/Specificity/Restraint/Variety, 1–5 each).
- **slop-test.md** — 25 post-emit binary gates. Some are AI-tell warnings; 5 are hard-fail universal constants.

## Cross-references

Files link to each other with `[[name]]` (e.g., `[[palettes]]`, `[[macrostructures]]`). When following a reference, load the named file from this directory.
