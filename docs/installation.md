# JorelTX ON V5 — Installation Guide

This guide explains how to install, activate, deactivate and troubleshoot **JorelTX ON V5** on Linux using vkBasalt.

---

## 📋 Requirements

JorelTX ON V5 was primarily developed and tested with:

* Linux
* Vulkan
* vkBasalt
* Sober
* Fedora Linux
* KDE Plasma
* X11
* NVIDIA graphics

The project was developed using an NVIDIA RTX 3070 with the proprietary NVIDIA driver.

Other Linux distributions, GPUs, drivers, desktop environments and display systems may work, but they have not been the primary development target.

---

# 📦 1. Install the required software

## vkBasalt

JorelTX ON V5 requires vkBasalt.

On Fedora:

```bash
sudo dnf install vkBasalt
```

Verify that vkBasalt is available:

```bash
vkbasalt --help
```

The JorelTX ON installer also checks whether `vkbasalt` is available in your `PATH`.

> The JorelTX ON scripts do not install or modify the vkBasalt system package.

---

## Sober

JorelTX ON V5 was designed for Roblox running through Sober on Linux.

Follow the official Sober installation instructions:

https://sober.vinegarhq.org/

After installing Sober, make sure Roblox can launch normally before configuring JorelTX ON.

---

# 📥 2. Clone the repository

Clone the JorelTX ON repository:

```bash
git clone https://github.com/dadafa23/JorelTX-ON.git
cd JorelTX-ON
```

You can also download the repository as a ZIP file from GitHub.

---

# 🧩 3. Install the JorelTX ON shaders

Make the installation script executable:

```bash
chmod +x scripts/install.sh
```

Run the installer:

```bash
./scripts/install.sh
```

The installer checks that all JorelTX ON shader files are present and copies them to:

```text
~/.config/vkBasalt/shaders/JorelTX-ON/
```

The following files are installed:

```text
Curves.fx
Tonemap.fx
Vibrance.fx
ReShade.fxh
ReShadeUI.fxh
```

The installer also checks whether `vkbasalt` is available.

### Important

`install.sh` **does not activate JorelTX ON V5**.

It also does **not modify your current**:

```text
~/.config/vkBasalt/vkBasalt.conf
```

Installation and activation are separate steps.

---

# ⚠ 4. External shader dependencies

JorelTX ON V5 uses two external shaders that are **not redistributed by this repository**:

```text
BloomingHDR.fx
Clarity.fx
```

These shaders are third-party components and remain subject to their respective licenses and copyrights.

JorelTX ON does not include modified or redistributed copies of these shaders.

See:

```text
THIRD-PARTY-LICENSES.md
```

for additional information.

---

## Automatic shader detection

When `activate.sh` is executed, JorelTX ON searches for the required external shaders in several locations.

The search includes:

```text
~/.config/vkBasalt/shaders/
~/.local/share/reshade/
~/.local/share/reshade-shaders/
```

If the shaders are found, their paths are automatically used in the generated configuration.

---

## Manual shader paths

If automatic detection does not find a required shader, you can specify its path manually.

### BloomingHDR

```bash
export JORELTX_BLOOMINGHDR="/path/to/BloomingHDR.fx"
```

### Clarity

```bash
export JORELTX_CLARITY="/path/to/Clarity.fx"
```

Then run the activation script:

```bash
./scripts/activate.sh
```

Both environment variables only affect the current shell session unless you explicitly add them to your shell configuration.

---

# 🎛 5. Activate JorelTX ON V5

After installing the JorelTX ON shaders and the required external dependencies, run:

```bash
./scripts/activate.sh
```

The activation process performs the following steps:

1. Checks that the JorelTX ON shaders are installed.
2. Searches for `BloomingHDR.fx`.
3. Searches for `Clarity.fx`.
4. Creates a temporary V5 configuration.
5. Creates a backup of the current `vkBasalt.conf`.
6. Installs the new V5 configuration.
7. Enables the JorelTX ON V5 effect chain.

The active configuration is stored at:

```text
~/.config/vkBasalt/vkBasalt.conf
```

Backups are stored at:

```text
~/.config/vkBasalt/backups/JorelTX-ON/
```

---

# 💾 6. Backups

JorelTX ON V5 is designed to preserve the user's previous vkBasalt configuration before activation.

When activating V5, the current configuration is copied to a timestamped backup:

```text
vkBasalt.conf.YYYYMMDD-HHMMSS
```

For example:

```text
vkBasalt.conf.20260921-001933
```

The original configuration is preserved before the V5 configuration replaces it.

---

# 🎮 7. Launch Roblox

After activating JorelTX ON V5, launch Roblox through Sober using your normal setup.

The visual effects are applied through the vkBasalt Vulkan layer.

JorelTX ON does not replace Roblox, Sober or the Vulkan driver.

If the effects do not appear, verify that vkBasalt is correctly loaded by your Sober/Vulkan environment.

---

# ✨ 8. V5 effect chain

The default JorelTX ON V5 configuration uses:

```text
BloomingHDR
      ↓
Vibrance
      ↓
Clarity
      ↓
Tonemap
      ↓
Curves
      ↓
SMAA
      ↓
CAS
```

SMAA and CAS are effects provided by vkBasalt itself.

JorelTX ON does not redistribute separate `SMAA.fx` or `CAS.fx` files.

---

# 🎨 9. V5 configuration values

The V5 release uses the following tuned values:

```text
BloomingHDR
Bloom Intensity & Bloom Opacity = 0.12 / 0.60

Clarity
ClarityRadius = 2
ClarityStrength = 0.12
ClarityDarkIntensity = 0.05

Curves
Contrast = 0.12

Tonemap
Gamma = 1.02
Exposure = 0.03
Saturation = 0.02

Vibrance
Vibrance = 0.10

CAS
Sharpness = 0.60
```

These values represent the configuration used for the JorelTX ON V5 release.

---

# 🔄 10. Deactivate JorelTX ON V5

To restore the previous vkBasalt configuration, run:

```bash
./scripts/deactivate.sh
```

The deactivation script:

1. Searches for the most recent standard JorelTX ON backup.
2. Preserves the currently active configuration.
3. Restores the selected previous configuration.
4. Leaves the backup files available for inspection.

The restored configuration is written to:

```text
~/.config/vkBasalt/vkBasalt.conf
```

The currently active configuration is preserved with a filename similar to:

```text
vkBasalt.conf.before-deactivate.YYYYMMDD-HHMMSS
```

This allows the V5 configuration to remain available even after deactivation.

---

# 🧪 11. Verifying the installation

You can verify that the JorelTX ON shaders were installed with:

```bash
find ~/.config/vkBasalt/shaders/JorelTX-ON -maxdepth 1 -type f -printf '%f\n' | sort
```

The expected files are:

```text
Curves.fx
ReShade.fxh
ReShadeUI.fxh
Tonemap.fx
Vibrance.fx
```

You can verify that vkBasalt is available with:

```bash
command -v vkbasalt
```

You can inspect the active configuration with:

```bash
cat ~/.config/vkBasalt/vkBasalt.conf
```

---

# 🛠 12. Troubleshooting

## `BloomingHDR.fx` was not found

If activation reports:

```text
ERRO: BloomingHDR.fx não foi encontrado.
```

make sure the shader is installed and accessible.

Alternatively, specify its location manually:

```bash
export JORELTX_BLOOMINGHDR="/path/to/BloomingHDR.fx"
```

Then run:

```bash
./scripts/activate.sh
```

---

## `Clarity.fx` was not found

If activation reports:

```text
ERRO: Clarity.fx não foi encontrado.
```

specify its location manually:

```bash
export JORELTX_CLARITY="/path/to/Clarity.fx"
```

Then run:

```bash
./scripts/activate.sh
```

---

## The JorelTX ON shaders were not found

If activation reports that an installed shader is missing, run:

```bash
./scripts/install.sh
```

Then try activation again:

```bash
./scripts/activate.sh
```

---

## vkBasalt was not found

If the installer reports:

```text
AVISO: vkBasalt não foi encontrado no PATH.
```

install vkBasalt using your Linux distribution's package manager.

For Fedora:

```bash
sudo dnf install vkBasalt
```

Then verify:

```bash
vkbasalt --help
```

---

## Visual artifacts

Post-processing effects can behave differently depending on the game, GPU, driver and rendering environment.

Possible problems include:

* Excessive sharpening
* Visual artifacts
* Broken transparency
* Distorted UI
* Glitched cursors
* Incorrect colors
* Unexpected rendering behavior
* Performance degradation

If a particular effect causes a problem, disable that effect in the vkBasalt configuration and test again.

Different Roblox experiences may also produce different results.

---

## Performance problems

Post-processing effects consume GPU resources.

If performance decreases significantly, consider testing the effects individually and identifying which effect causes the largest performance impact.

Performance can vary depending on:

* GPU
* GPU driver
* Vulkan implementation
* Roblox experience
* Resolution
* Display configuration
* Sober version
* Other vkBasalt effects

---

# 📁 13. Important file locations

### JorelTX ON repository

```text
JorelTX-ON/
```

### Project shaders

```text
JorelTX-ON/shaders/JorelTX-ON/
```

### Installed shaders

```text
~/.config/vkBasalt/shaders/JorelTX-ON/
```

### Active vkBasalt configuration

```text
~/.config/vkBasalt/vkBasalt.conf
```

### JorelTX ON backups

```text
~/.config/vkBasalt/backups/JorelTX-ON/
```

### Installation script

```text
scripts/install.sh
```

### Activation script

```text
scripts/activate.sh
```

### Deactivation script

```text
scripts/deactivate.sh
```

---

# 🔐 14. Configuration safety

JorelTX ON V5 separates installation from activation.

Running:

```bash
./scripts/install.sh
```

only installs the project's shader files and checks for vkBasalt.

Running:

```bash
./scripts/activate.sh
```

creates a backup before replacing the active vkBasalt configuration.

Running:

```bash
./scripts/deactivate.sh
```

preserves the active configuration before restoring a previous backup.

This design is intended to prevent the user's existing vkBasalt configuration from being silently discarded.

---

# 📜 15. Third-party licenses

JorelTX ON V5 contains original project files as well as references to third-party technologies and external shaders.

Third-party components remain subject to their own licenses.

See:

```text
THIRD-PARTY-LICENSES.md
```

for attribution and licensing information.

JorelTX ON does not claim ownership of third-party shaders.

---

# 🧑‍💻 16. Development environment

The original JorelTX ON V5 development environment was:

```text
Fedora Linux
KDE Plasma
X11
NVIDIA RTX 3070
NVIDIA proprietary driver
Sober
Roblox
vkBasalt
```

The project may work on other configurations, but results can vary.

---

# 🤝 17. Contributing

Contributions are welcome.

Before modifying the project, please read:

```text
CONTRIBUTING.md
```

Useful contributions include:

* Bug reports
* Compatibility testing
* Documentation improvements
* Installation script improvements
* Performance testing
* Shader configuration improvements
* Testing on different GPUs
* Testing on different Linux distributions

---

# 🐛 18. Reporting problems

When reporting a problem, include as much useful information as possible:

```text
Linux distribution:
Desktop environment:
Session type:
GPU:
GPU driver:
Sober version:
vkBasalt version:
Roblox experience:
Resolution:
```

Also describe:

* What you expected to happen
* What actually happened
* Which effects were enabled
* Whether disabling a specific effect fixes the problem

Screenshots are highly appreciated when reporting visual problems.

---

# 📄 License

The original JorelTX ON project files contained in this repository are released under the MIT License.

See:

```text
LICENSE
```

for the complete license text.

Third-party shaders and dependencies are not automatically covered by the JorelTX ON license and remain subject to their own licenses.

---

# 🎮 JorelTX ON V5

JorelTX ON V5 is an independent visual enhancement project for Roblox on Linux.

The project focuses on improving image quality through post-processing effects while keeping installation, activation and deactivation straightforward and reversible.

> Enhance the image. Keep the game yours.
