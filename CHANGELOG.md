# Changelog

<!--
  AUDIENCE: end users of the app, NOT maintainers. This file is published as
  the release notes users read. Write only changes a user can SEE or DO
  differently — new/changed/fixed behaviour, features, examples, devices.
  Do NOT mention code internals, refactors, file names, build/CI plumbing,
  API/URL-encoding details, repo structure, or anything invisible in the app.
  Each release adds one "## v<tag> — <date>" section with ### Added / Changed /
  Fixed sub-headings, phrased from the user's point of view.
-->

## v1.2.3 — 2026-06-04
### Changed
- The example projects and device library are now installed into your
  Documents folder (under *Varquon CYGVEUM*) the first time you run the app,
  instead of being loaded from a temporary location. Installing a newer version
  of the app refreshes them to that version's set.

### Added
- A setup window now appears while the examples and device library are being
  installed, and progress windows are shown while they load or update, so you
  can always see what the app is doing instead of it appearing to wait.

## v1.2.2 — 2026-06-04
### Fixed
- "Update Device Library + Examples" now works for every example, including
  ones whose names contain spaces (such as *Common-Source Amplifier*), which
  previously failed to download.

### Added
- While an update runs, a window now shows its progress and what is currently
  being downloaded, so it is clear the app is working rather than frozen.

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
