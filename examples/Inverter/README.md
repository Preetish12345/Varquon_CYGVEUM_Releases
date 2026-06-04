# Inverter

A Varquon CYGVEUM example project: a **CMOS inverter** built from a reusable
`inv` symbol (an NMOS/PMOS pair). Input goes in one pin, the inverted signal
comes out the other.

- **Target IC:** `ic_tt_v1`
- **Board:** `pcb_tt_v1`

## Open it

In the app, **File ▸ Open Project...** and choose `Inverter.cyv`.

## Try it

1. Press **Compile** — the app maps the circuit to the chip's switches and
   writes [`output/switches.txt`](output/switches.txt) and
   [`output/out.hex`](output/out.hex).
2. Connect a device and press **Program** to load it onto a real chip.
3. Double-click the `inv` symbol in the editor to see how it's built from
   individual transistors.

See the [examples index](../README.md) and the
[main README](../../README.md) for more.
