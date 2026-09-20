# JorelTX ON V5

> 🎮 Visual enhancement project for Roblox on Linux using Sober.

**JorelTX ON V5** is a visual-enhancement project created for Roblox on Linux, focused on improving image clarity, color, contrast and post-processing while keeping the configuration practical.

The project was developed and tested primarily with **Sober**, the Linux Roblox player, using **vkBasalt**.

---

## ✨ Features

JorelTX ON V5 uses a post-processing chain consisting of:

* BloomingHDR
* Vibrance
* Clarity
* Tonemap
* Curves
* SMAA
* CAS

The V5 configuration focuses on:

* Improved image clarity
* Controlled sharpening
* Contrast and color adjustments
* Bloom and post-processing
* Anti-aliasing
* Performance-conscious settings
* Linux + Vulkan compatibility

> ⚠️ Results may vary depending on the Roblox experience, Sober version, GPU, driver and rendering configuration.

---

## 🖥 Compatibility

### Primary target

* Linux
* Sober
* Roblox
* Vulkan
* vkBasalt

The original development environment used:

* Fedora Linux
* X11
* NVIDIA RTX 3070
* NVIDIA drivers
* Sober
* vkBasalt

Other GPUs, distributions, drivers and display systems may work, but they have not been the primary development target.

---

## 📦 Installation

### 1. Clone the repository

```bash
git clone https://github.com/dadafa23/JorelTX-ON.git
cd JorelTX-ON
```

### 2. Install the JorelTX ON shaders

Run:

```bash
chmod +x scripts/install.sh
./scripts/install.sh
```

This installs the JorelTX ON shader files into:

```text
~/.config/vkBasalt/shaders/JorelTX-ON
```

The installer does **not** replace your current `vkBasalt.conf`.

### 3. Check external dependencies

JorelTX ON V5 requires these external shaders:

```text
BloomingHDR.fx
Clarity.fx
```

They are **not redistributed by this project**.

The activation script checks for these dependencies before changing the vkBasalt configuration.

### 4. Activate JorelTX ON V5

After the required external shaders are available, run:

```bash
chmod +x scripts/activate.sh
./scripts/activate.sh
```

The activation script:

1. Verifies the JorelTX ON shader installation.
2. Checks the required external shaders.
3. Creates a backup of the current `vkBasalt.conf`.
4. Activates the V5 effect chain.

The backup is stored under:

```text
~/.config/vkBasalt/backups/JorelTX-ON/
```

### 5. Launch Sober

After activation, launch Sober normally and test the result.

---

## 🎨 V5 Effect Chain

The original V5 configuration uses this order:

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

CAS sharpness:

```text
0.6
```

The main JorelTX ON shader modifications are documented in:

```text
THIRD-PARTY-LICENSES.md
```

---

## ⚠️ External Dependencies

The following shaders are required by the V5 configuration but are **not included in this repository**:

```text
BloomingHDR.fx
Clarity.fx
```

JorelTX ON does not claim ownership of these shaders.

The project documents the V5 settings applied to them, but does not redistribute their source files.

See:

```text
THIRD-PARTY-LICENSES.md
```

for attribution and licensing information.

---

## ⚠️ Visual Artifacts

Post-processing effects can behave differently depending on the rendering environment.

Possible problems include:

* Excessive sharpening
* Visual artifacts
* Distorted UI
* Glitched cursors
* Broken transparency
* Flickering
* Unexpected rendering behavior

If an effect causes problems, disable the JorelTX ON configuration and restore the previous vkBasalt configuration from the backup created during activation.

---

## 🧪 Development

JorelTX ON V5 was developed and tested primarily on:

* Fedora Linux
* X11
* NVIDIA graphics
* Vulkan
* vkBasalt
* Sober
* Roblox

Results may differ on:

* Wayland
* AMD GPUs
* Intel GPUs
* Different NVIDIA drivers
* Different vkBasalt versions
* Different Sober versions
* Different Roblox experiences

---

## 📜 License

The original JorelTX ON project files are released under the **MIT License**.

Third-party shader components included in this repository remain subject to their respective authors' copyrights and licenses.

See:

```text
LICENSE
THIRD-PARTY-LICENSES.md
```

for details.

---

## 👤 Credits

**JorelTX ON V5**

Created by **Jorelsono**.

GitHub:

https://github.com/dadafa23

The project is provided free of charge for the Linux/Roblox community.

If you use, modify or build upon JorelTX ON, crediting the original project is appreciated.

---

## ❤ Support the Project

If JorelTX ON helps you, you can support the project by:

⭐ Starring the repository

🐛 Reporting bugs

💡 Suggesting improvements

🔧 Contributing fixes

📢 Sharing the project with other Linux/Roblox users

---

## 🤝 Contributing

Contributions are welcome.

If you have an improvement, bug fix or compatible visual configuration, feel free to open a Pull Request.

Please keep contributions focused on visual quality, compatibility, documentation and performance.

See:

```text
CONTRIBUTING.md
```

for contribution guidelines.

---

## ⚖ Disclaimer

JorelTX ON is an independent community project.

It is not affiliated with, endorsed by or officially supported by Roblox Corporation, Sober, NVIDIA, Fedora or vkBasalt.

Roblox is a trademark of Roblox Corporation.

Sober is an independent Linux Roblox player.

---

## 🚀 JorelTX ON V5

**Made with Linux, experimentation and a lot of testing.**

> 🎮 Enhance the image. Keep the game yours.
