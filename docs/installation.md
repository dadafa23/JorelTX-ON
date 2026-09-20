# JorelTX ON — Installation Guide

This guide explains how to install and use JorelTX ON V5.

## Requirements

JorelTX ON V5 was developed and tested primarily on:

* Fedora Linux
* X11
* NVIDIA GPU
* Sober
* Vulkan
* vkBasalt

Other Linux distributions and configurations may work, but they are not officially tested.

## 1. Clone the repository

Open a terminal and run:

```bash
git clone https://github.com/dadafa23/JorelTX-ON.git
cd JorelTX-ON
```

## 2. Install the required software

Make sure the following components are installed and working:

* Vulkan
* vkBasalt
* Sober
* NVIDIA drivers

You should verify that Vulkan is working correctly before continuing.

## 3. Review the presets

The `presets/` directory contains the configuration files used by JorelTX ON.

Choose the preset you want to use and review its settings before applying it.

## 4. Apply the configuration

Follow the instructions provided with the selected preset.

JorelTX ON is designed to work alongside the target application rather than modifying the application itself.

## 5. Launch the application

After configuring the preset, launch Sober normally and test the result.

If the image contains visual artifacts, excessive sharpening, broken UI elements, cursor problems, or other unexpected effects, disable the problematic effect or return to the default preset.

## Troubleshooting

### Visual artifacts

Some post-processing effects may produce unwanted artifacts depending on the GPU, driver, game scene, or rendering configuration.

If you experience:

* Glitched textures
* Broken UI
* Distorted cursor
* Excessive sharpening
* Flickering
* Unexpected visual effects

disable the affected effect or restore the default configuration.

### Performance problems

Post-processing can affect GPU performance.

If performance decreases significantly:

1. Disable unnecessary effects.
2. Use a lighter preset.
3. Check GPU usage and temperature.
4. Verify that the NVIDIA driver and Vulkan are working correctly.

## Uninstallation

JorelTX ON does not permanently modify the target application.

To stop using it, simply disable or remove the configuration that was applied.

If you cloned the repository only for testing, the local copy can also be removed:

```bash
cd ..
rm -rf JorelTX-ON
```

## Important

JorelTX ON is an independent community project.

It is not affiliated with, endorsed by, or officially supported by Roblox, Sober, NVIDIA, Fedora, or vkBasalt.
