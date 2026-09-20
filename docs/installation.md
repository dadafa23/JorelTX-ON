# JorelTX ON V5 — Installation Guide

This guide explains how to install and activate **JorelTX ON V5** on Linux using vkBasalt.

---

## 📋 Requirements

JorelTX ON V5 was primarily developed and tested with:

* Linux
* Vulkan
* vkBasalt
* Sober
* Fedora Linux
* X11
* NVIDIA graphics

Other distributions, GPUs, drivers and display systems may work, but they have not been the primary development target.

---

## 📥 1. Clone the repository

Clone the project from GitHub:

```bash
git clone https://github.com/dadafa23/JorelTX-ON.git
cd JorelTX-ON
```

---

## 🧩 2. Install the JorelTX ON shaders

Make the installer executable:

```bash
chmod +x scripts/install.sh
```

Then run it:

```bash
./scripts/install.sh
```

The installer places the JorelTX ON shader files in:

```text
~/.config/vkBasalt/shaders/JorelTX-ON
```

The installer does **not** modify your current `vkBasalt.conf`.

---

## ⚠️ 3. External shader dependencies

JorelTX ON V5 uses two external shaders that are **not redistributed by this repository**:

```text
BloomingHDR.fx
Clarity.fx
```
