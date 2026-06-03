# Varquon CYGVEUM

A Vivado-style IDE for **FPAA** (Field-Programmable Analog Array) design —
a schematic editor, compiler, and device programmer in one application.

> **Schematic ▸ Compile ▸ Program**

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
time you open it:

- **Windows** — "Windows protected your PC". Click **More info**, then
  **Run anyway**.
- **macOS** — "cannot be opened because it is from an unidentified
  developer". Right-click the app, choose **Open**, then **Open** again.
- **Linux** — make it executable first if needed:
  `chmod +x varquon-cygveum`, then run it.

This is normal for independent software and only happens once.

---

## Using the app

1. **File ▸ New Project...** — a wizard creates a project folder, asking
   you to choose a target IC and board.
2. Draw your circuit in the schematic editor.
3. **Compile** turns the schematic into an IC switch list.
4. **Program** sends it to a connected device over USB/serial.

The app keeps its IC and board definitions up to date automatically —
it checks on startup, and you can refresh any time with
**Tools ▸ Update Device Library**.

### Linux — serial port permission

On Linux, serial ports are restricted by default. If you get a
"Permission denied" error when programming a device, run this once
in a terminal:

```bash
sudo usermod -aG dialout $USER
```

Then **log out and log back in**. You only need to do this once —
it permanently gives your user account access to serial ports.

---

## Support

Found a problem or have a question? Open an
[**Issue**](../../issues).
