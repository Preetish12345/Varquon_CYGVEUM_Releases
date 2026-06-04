# Varquon CYGVEUM

An all-in-one IDE for **FPAA** (Field-Programmable Analog Array) design —
a schematic editor, compiler, and device programmer in one application.

> **Draw a circuit ▸ Compile ▸ Program a real chip**

You sketch an analog circuit on screen, press **Compile** to turn it into a
configuration the chip understands, and press **Program** to send it to a
device plugged into your USB port. No command line, no toolchain to set up.

<p align="center">
  <a href="../../releases/latest"><strong>⬇️&nbsp; Download Varquon CYGVEUM</strong></a>
  &nbsp;·&nbsp; Windows · macOS · Linux
</p>

---

## Contents

- [New to FPAAs? Start here](#new-to-fpaas-start-here)
- [Download & install](#download--install)
- [Your first 5 minutes](#your-first-5-minutes)
- [How it works](#how-it-works)
- [The schematic editor](#the-schematic-editor)
- [Anatomy of a project](#anatomy-of-a-project)
- [Example projects](#example-projects)
- [Keeping the device library up to date](#keeping-the-device-library-up-to-date)
- [Troubleshooting & FAQ](#troubleshooting--faq)
- [Glossary](#glossary)
- [Support](#support)

---

## New to FPAAs? Start here

An **FPAA** is the analog cousin of an FPGA. Instead of programming digital
logic, you reconfigure a grid of analog building blocks — transistors,
resistors, and the wires between them — by flipping electronic switches
inside the chip. The same physical chip can become an inverter today and a
filter tomorrow; nothing is soldered, you just reprogram it.

Varquon CYGVEUM is the software that lets you do that **visually**:

1. You draw the circuit you want.
2. The app works out which internal switches to close to build it.
3. It writes that switch pattern to the chip over USB.

If you've used industry-standard electronic design software, the
draw-a-schematic-then-build flow will feel familiar — only here "build"
reconfigures a real chip.

---

## Download & install

No installation, no setup. Just download and run.

1. Go to the [**Releases**](../../releases) page.
2. Download the file for your operating system and unzip it:

   | Your system | Download | After unzipping, run |
   |-------------|----------|----------------------|
   | **Windows** | `varquon-cygveum-windows.zip` | `varquon-cygveum.exe` |
   | **macOS**   | `varquon-cygveum-macos.zip`   | `Varquon CYGVEUM.app` |
   | **Linux**   | `varquon-cygveum-linux.zip`   | `varquon-cygveum` |

3. Double-click it. That's it.

### First-run security warning

Because the app is not code-signed, your system may warn you the first
time you open it. This is normal for independent software and only happens
once:

- **Windows** — "Windows protected your PC". Click **More info**, then
  **Run anyway**.
- **macOS** — "cannot be opened because it is from an unidentified
  developer". Right-click the app, choose **Open**, then **Open** again.
- **Linux** — make it executable first if needed:
  `chmod +x varquon-cygveum`, then run it.

---

## Your first 5 minutes

The fastest way to see what the app does is to open a finished example
instead of starting from a blank page.

1. **Get the examples.** Download this repository (green **Code** button ▸
   **Download ZIP**) and unzip it, or clone it with git. The
   [`examples/`](examples/) folder contains ready-made projects.
2. **Open the app**, then **File ▸ Open Project...** and pick
   [`examples/Inverter/Inverter.fpaa`](examples/Inverter/Inverter.fpaa).
3. You'll see a CMOS **inverter** drawn in the schematic editor — an input
   pin, an output pin, and a logic-gate symbol between them.
4. Press **Compile**. The app reports something like
   *"Compile succeeded: 6 switches."* and writes the result into the
   project's `output/` folder.
5. Plug in a device and press **Program** to send it to the chip. (No
   device yet? You can still explore everything up to this step.)

Once that makes sense, try **File ▸ New Project...** to start your own.

---

## How it works

The app has three stages. You move left to right; you can go back and edit
at any time.

```
   Schematic              Compile                Program
  ┌──────────┐          ┌──────────┐          ┌──────────┐
  │  draw    │   ───▶   │  switch  │   ───▶  │  send to │
  │  circuit │          │  list    │          │  chip    │
  └──────────┘          └──────────┘          └──────────┘
   top.sch            switches.txt / out.hex     USB / serial
```

| Stage | What you do | What the app produces |
|-------|-------------|-----------------------|
| **Schematic** | Place components and wire them together. | A saved schematic (`schematics/top.sch`). |
| **Compile** | Press **Compile**. | A human-readable switch list (`output/switches.txt`) and the binary the chip is programmed with (`output/out.hex`). |
| **Program** | Connect a device and press **Program**. | The chip is reconfigured to match your circuit. |

Every stage writes a timestamped log into the project's `logs/` folder, so
you can always see what happened and when.

---

## The schematic editor

You build a circuit out of **components** joined by **wires**. The building
blocks available on this device include:

- **Transistors** — NMOS and PMOS, with adjustable width and length.
- **Resistors** — fixed values provided by the chip.
- **Power** — `VDD` (supply) and `Ground`.
- **Pins** — connection points that map to the board's external pins, so
  your circuit can talk to the outside world.
- **Labels** — give a wire a net name (e.g. `Input`, `out`). Two wires with
  the same label are connected even without a drawn wire between them.
- **Symbols** — reusable blocks (`.sym` files) such as the `inv` gate used
  in the Inverter example. You can build a circuit once and drop it into
  bigger designs as a single symbol.

A few things worth knowing:

- **Wires** snap to a grid and connect components pin-to-pin.
- **Labels are connections.** Naming two points the same net wires them
  together — handy for keeping a schematic tidy.
- The app only lets you build what the **target chip can actually
  implement**. If a circuit can't be mapped to the chip's switch grid,
  Compile will tell you instead of producing an invalid program.

---

## Anatomy of a project

When you create a project, the app makes a self-contained folder. Here's the
Inverter example, annotated:

```
Inverter/
├── Inverter.fpaa          ← the project file you open (double-click in the app)
├── schematics/
│   └── top.sch            ← your circuit
├── symbols/
│   └── inv.sym            ← reusable symbol used by the schematic
├── config/
│   ├── ic/                ← the target chip definition for this project
│   ├── boards/            ← the target board definition
│   └── workspace/         ← editor layout & preferences
├── output/
│   ├── switches.txt       ← compiled switch list (human-readable)
│   └── out.hex            ← binary sent to the chip
└── logs/
    ├── schematic.logs     ← when the schematic was saved
    ├── mapping.logs       ← compile results
    └── programming.logs   ← what was sent to the device
```

The whole folder is portable — zip it up and share it, and someone else can
open it and reproduce your design. The `config/` folder pins the exact chip
and board the project targets, so a project always compiles for the device
it was designed for.

---

## Example projects

The [`examples/`](examples/) folder has complete, working projects you can
open, compile, and learn from:

| Project | What it is |
|---------|------------|
| [Inverter](examples/Inverter/) | A CMOS inverter built from a reusable `inv` symbol — the smallest end-to-end example. |
| [project_example](examples/project_example/) | A bare-bones project showing the default folder layout. |

See the [examples index](examples/README.md) for more.

---

## Keeping the device library up to date

The app ships knowing about the available ICs and boards (the **device
library**). It keeps these definitions current automatically:

- It checks for updates on startup.
- You can refresh any time with **Tools ▸ Update Device Library**.

You don't normally need to touch this — it just means the chips and boards
you can target stay in sync without reinstalling the app.

---

## Troubleshooting & FAQ

**The app won't open / my OS blocked it.**
See [First-run security warning](#first-run-security-warning) above. The app
isn't code-signed, so the warning is expected the first time only.

**"Permission denied" when programming on Linux.**
Serial ports are restricted by default. Run this once in a terminal:

```bash
sudo usermod -aG dialout $USER
```

Then **log out and log back in**. This permanently gives your user account
access to serial ports — you only need to do it once.

**Compile failed — what now?**
Compile fails when a circuit can't be mapped onto the chip's switch grid.
Check the message and the `logs/mapping.logs` file in your project. Common
causes are unconnected pins, or using more of a resource than the chip has.

**My device doesn't show up when I press Program.**
Make sure it's connected over USB, that no other program is using the serial
port, and (on Linux) that you've done the `dialout` step above. Unplug and
replug the device, then try again.

**Can I move or rename a project folder?**
Yes — the project is self-contained. Move the whole folder and open the
`.fpaa` file inside it.

**Where do my compiled outputs go?**
Into the project's `output/` folder: `switches.txt` (readable) and
`out.hex` (what's sent to the chip).

---

## Glossary

| Term | Meaning |
|------|---------|
| **FPAA** | Field-Programmable Analog Array — a chip whose analog circuit can be reconfigured in software. |
| **IC** | The analog chip itself (e.g. `ic_tt_v1`). |
| **Board** | The PCB the chip sits on, which routes the chip's pins to external connectors (e.g. `pcb_tt_v1`). |
| **Schematic** | Your circuit diagram (`.sch` file). |
| **Symbol** | A reusable circuit block you can place like a single component (`.sym` file). |
| **Net / Label** | A named electrical connection; wires sharing a net name are connected. |
| **Compile / Mapping** | Turning your schematic into the set of switches the chip must close to build it. |
| **Switch list** | The compiled result — which of the chip's internal switches are on. |
| **Program** | Writing the switch configuration to a physical chip over USB/serial. |

---

## Support

Found a problem or have a question? Open an
[**Issue**](../../issues) — include your OS and, if it's a compile or
programming problem, the relevant file from your project's `logs/` folder.
