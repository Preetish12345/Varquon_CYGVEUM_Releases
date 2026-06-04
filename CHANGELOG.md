# Changelog

## v1.2.1 — 2026-06-04
### Added
- Four new example projects, each with its core circuit as an importable
  symbol: Resistance Divider, RC Filter (capacitor off-chip via external
  pins), MOSFET Switch, and Common-Source Amplifier.

### Changed
- The blank `project_example` moved out of the bundled examples (it is a
  developer template, no longer copied into users' example list).

## v1.2.0 — 2026-06-04
### Added
- Symbol pins can now be named freely, and the name is drawn on the symbol
  box. Each pin's position is set with an explicit **Side** (top/bottom/left/
  right) and **Order**, replacing the old `p1_1` / `p2` naming scheme.
- Top-level schematic pins choose their IC external bond from a dropdown
  (`ext_000`…), which hides any external already claimed by another pin.
- Examples can be imported as symbols into the current project (auto-renaming
  on name clashes), in addition to opening one as a brand-new project.
- This CHANGELOG, mirrored into the releases repo and used as the release
  notes for each tag.

### Fixed
- Two symbol pins can no longer share the same name, or the same Side + Order.
- macOS build: skip the unsupported PyInstaller splash screen and convert the
  app icon to `.icns` via Pillow.

---

## v1.1.0 — 2026-06-03
- Rebrand to Varquon **CYGVEUM**; projects use the `.cyv` extension; first-run
  splash screen and app icon.
