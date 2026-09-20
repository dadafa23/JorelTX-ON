# JorelTX ON V5

> 🎮 Visual enhancement project for Roblox on Linux using Sober + vkBasalt.

**JorelTX ON V5** is a visual enhancement project created to improve the appearance of Roblox when running on Linux through **Sober** and **vkBasalt**.

The project focuses on image quality, color, clarity, contrast, bloom, anti-aliasing and sharpening while keeping the configuration practical and customizable.

> ⚠️ JorelTX ON does **not** add real-time ray tracing to Roblox. The project uses post-processing effects to create a more enhanced and cinematic image.

---

## ✨ Features

JorelTX ON V5 uses the following visual effects:

* 🌟 Bloom
* 🎨 Vibrance
* 🔍 Clarity
* ☀️ Tonemapping
* 📈 Curves
* 🧹 SMAA anti-aliasing
* ✨ CAS sharpening

The default V5 effect chain is:

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

### CAS

The default CAS sharpening value is:

```text
0.6
```

---

## 🖥️ Compatibility

### Primary target

JorelTX ON V5 was created and tested for:

* Linux
* Sober
* Roblox
* Vulkan
* vkBasalt

The original development environment was:

* Fedora Linux
* KDE Plasma
* X11
* NVIDIA RTX 3070
* NVIDIA proprietary driver
* Sober
* Roblox

Other Linux distributions, GPUs, drivers, desktop environments and Sober versions may behave differently.

### Windows

The current JorelTX ON V5 release is **not a Windows preset**.

The project is designed around **vkBasalt**, which is a Linux Vulkan post-processing layer.

Some individual shaders may be compatible with other shader frameworks such as ReShade, but that does not mean the complete JorelTX ON V5 configuration will work on Windows.

A future Windows/ReShade port would be a separate project or compatibility layer.

### Android / iOS

The current JorelTX ON V5 release is **not compatible with standard Roblox installations on Android or iOS**.

The project depends on the Linux/vkBasalt graphics pipeline.

A mobile version would require a separate implementation for the graphics APIs and rendering environment used on mobile devices.

---

# 📦 Installation

## Requirements

Before installing JorelTX ON V5, you need:

1. A Linux system
2. Roblox running through Sober
3. Vulkan support
4. vkBasalt
5. The required external shader dependencies

---

## 1. Install vkBasalt

Install vkBasalt using the package manager available for your Linux distribution.

For Fedora:

```bash
sudo dnf install vkBasalt
```

You can verify that vkBasalt is available with:

```bash
vkbasalt --help
```

---

## 2. Install Sober

Install Sober using the official Sober installation instructions:

https://sober.vinegarhq.org/

Sober is required because JorelTX ON V5 was developed for the Linux Roblox environment provided by Sober.

---

## 3. Download JorelTX ON

Clone the repository:

```bash
git clone https://github.com/dadafa23/JorelTX-ON.git
cd JorelTX-ON
```

You can also download the repository as a ZIP from GitHub.

---

## 4. Install the JorelTX ON shaders

Run:

```bash
./scripts/install.sh
```

If necessary, make the scripts executable first:

```bash
chmod +x scripts/*.sh
```

Then run:

```bash
./scripts/install.sh
```

The installer places the redistributable JorelTX ON shaders in:

```text
~/.config/vkBasalt/shaders/JorelTX-ON/
```

The installation script does **not** modify your current vkBasalt configuration.

---

# ⚠️ External shader dependencies

Two shaders used by the V5 configuration are **not redistributed with this repository**:

* `BloomingHDR.fx`
* `Clarity.fx`

They are external third-party shaders with their own licensing conditions.

JorelTX ON does not include modified copies of these shaders.

You must obtain them separately from their respective sources and comply with their licenses.

The activation script searches for these shaders automatically.

If they are not found, you can manually specify their locations.

### BloomingHDR

```bash
export JORELTX_BLOOMINGHDR="/path/to/BloomingHDR.fx"
```

### Clarity

```bash
export JORELTX_CLARITY="/path/to/Clarity.fx"
```

Both variables can be set before running the activation script.

---

# 🎛️ 5. Activate JorelTX ON V5

After installing the required dependencies, run:

```bash
./scripts/activate.sh
```

The activation script:

1. Checks that the JorelTX ON shaders are installed.
2. Searches for `BloomingHDR.fx`.
3. Searches for `Clarity.fx`.
4. Creates a backup of your current vkBasalt configuration.
5. Generates the JorelTX ON V5 configuration.
6. Activates the V5 effect chain.

The configuration is created at:

```text
~/.config/vkBasalt/vkBasalt.conf
```

Backups are stored at:

```text
~/.config/vkBasalt/backups/JorelTX-ON/
```

Your previous vkBasalt configuration is preserved before activation.

---

# 🎮 6. Start Roblox

After activating JorelTX ON V5, launch Roblox through Sober using your normal setup.

The vkBasalt layer must be loaded by the application for the effects to appear.

If the game starts without the effects, verify that vkBasalt is correctly configured and loaded by your Sober/Vulkan environment.

---

# 🔄 Deactivating JorelTX ON V5

To restore your previous vkBasalt configuration:

```bash
./scripts/deactivate.sh
```

The script restores the most recent backup created by JorelTX ON V5.

Your current configuration is also backed up before restoration.

---

# 🎨 V5 Configuration

The V5 configuration uses:

| Effect      | Purpose                                    |
| ----------- | ------------------------------------------ |
| BloomingHDR | Bloom, exposure and HDR-style processing   |
| Vibrance    | Color intensity                            |
| Clarity     | Image clarity and local contrast           |
| Tonemap     | Gamma, exposure and saturation adjustments |
| Curves      | Contrast adjustment                        |
| SMAA        | Anti-aliasing                              |
| CAS         | Image sharpening                           |

### V5 values

The V5 shader configuration includes the following tuned values:

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

# 🧪 Development

JorelTX ON V5 was developed through extensive testing of different post-processing combinations.

The project was primarily tested on:

```text
Fedora Linux
KDE Plasma
X11
NVIDIA RTX 3070
Sober
Roblox
vkBasalt
```

Different hardware and software configurations can produce different results.

Performance and visual quality may vary depending on:

* GPU
* GPU driver
* Vulkan implementation
* Sober version
* Roblox experience
* Resolution
* Display configuration
* Other vkBasalt effects
* Desktop environment

---

# ⚠️ Visual artifacts

Post-processing effects do not behave identically in every rendering environment.

Possible problems include:

* Excessive sharpening
* Visual artifacts
* Broken transparency
* Distorted UI
* Glitched cursors
* Incorrect colors
* Unexpected rendering behavior
* Performance degradation

If an effect causes visual problems, disable it from the vkBasalt configuration and test again.

Some effects may behave differently between Roblox experiences.

---

# 🧩 About SMAA and CAS

SMAA and CAS in the JorelTX ON V5 configuration are provided by **vkBasalt itself**.

They are not redistributed as separate JorelTX ON shader files.

The project therefore does not need to include separate `SMAA.fx` or `CAS.fx` files.

---

# 📜 Third-party software and shaders

JorelTX ON V5 uses or references third-party technologies and shader projects.

Third-party components remain subject to their respective licenses and copyrights.

See:

```text
THIRD-PARTY-LICENSES.md
```

for information about third-party shader dependencies and attribution.

JorelTX ON does not claim ownership of third-party shaders.

---

# 📄 License

The original JorelTX ON project files contained in this repository are released under the **MIT License**.

See:

```text
LICENSE
```

for the complete license text.

Third-party shaders and dependencies are **not automatically covered by the JorelTX ON license** and remain subject to their own licenses.

---

# 🤝 Contributing

Contributions are welcome!

You can contribute by:

* Reporting bugs
* Suggesting improvements
* Improving compatibility
* Improving installation scripts
* Improving documentation
* Testing different GPUs and Linux distributions
* Improving performance
* Creating compatible configurations

Before submitting changes, please read:

```text
CONTRIBUTING.md
```

---

# 🐛 Reporting problems

When reporting a problem, please include as much useful information as possible:

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

# 👤 Credits

## JorelTX ON V5

Created by **Jorelsono**.

GitHub:

https://github.com/dadafa23

JorelTX ON was created as an independent community project for improving the visual experience of Roblox on Linux.

---

# ⚠️ Disclaimer

JorelTX ON is an independent community project.

It is **not affiliated with, endorsed by, or officially supported by Roblox Corporation or Sober**.

Roblox is a trademark of Roblox Corporation.

Sober is an independent Linux Roblox player.

Use this project at your own discretion.

---

# ❤️ Support the project

If JorelTX ON V5 is useful to you, you can support the project by:

⭐ Starring the repository

🐛 Reporting bugs

💡 Suggesting improvements

🔧 Contributing fixes

📢 Sharing the project with other Linux/Roblox users

---

# 🚀 JorelTX ON V5

Made with Linux, experimentation, and a lot of testing.

> 🎮 Enhance the image. Keep the game yours.

**JorelTX ON V5 — Bringing a new visual experience to Roblox on Linux.**
