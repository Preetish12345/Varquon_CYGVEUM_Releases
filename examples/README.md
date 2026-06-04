# Example projects

These are complete, ready-to-open Varquon CYGVEUM projects. They're the
fastest way to learn the app — open one, look at the schematic, press
**Compile**, and inspect what lands in the `output/` folder.

## How to open one

1. Open Varquon CYGVEUM.
2. **File ▸ Open Project...**
3. Pick the `.fpaa` file inside the project folder (e.g.
   `Inverter/Inverter.fpaa`).

> Each folder is self-contained — schematic, symbols, the target chip/board
> definition, and the last compiled output all travel together. You can copy
> a folder anywhere and it will still open and compile.

## What's here

| Project | What it shows |
|---------|---------------|
| [Inverter](Inverter/) | A CMOS inverter built from a reusable `inv` symbol. The smallest complete example: input pin → gate → output pin, with `VDD` and `Ground`. Good first thing to open. |
| [project_example](project_example/) | A minimal project demonstrating the default folder layout, using the built-in default chip and board. |

## Things to try

- Open **Inverter**, press **Compile**, then open
  [`Inverter/output/switches.txt`](Inverter/output/switches.txt) to see the
  switch list the app generated.
- Double-click the `inv` symbol to see how a reusable block is built from
  individual transistors.
- Use **File ▸ New Project...** and compare your fresh project's folder to
  these examples.

See the [main README](../README.md) for the full walkthrough.
