# Third-Party Components

JorelTX ON V5 uses and/or modifies shader components created by third-party authors.

The JorelTX ON project does not claim ownership of third-party shader code.

## CeeJayDK / Christian Cann Schuldt Jensen

The following shaders originate from CeeJayDK / CeeJay.dk:

- `Curves.fx`
- `Tonemap.fx`
- `Vibrance.fx`

JorelTX ON V5 modifications:

### Curves.fx
- Contrast: `0.65` → `0.12`

### Tonemap.fx
- Gamma: `1.00` → `1.02`
- Exposure: `0.00` → `0.03`
- Saturation: `0.00` → `0.02`

### Vibrance.fx
- Vibrance: `0.15` → `0.10`

Source:
https://github.com/CeeJayDK/SweetFX

## Ioxa

`Clarity.fx` was created by Ioxa.

JorelTX ON V5 modifications:

- ClarityRadius: `3` → `2`
- ClarityStrength: `0.400` → `0.12`
- ClarityDarkIntensity: `0.400` → `0.05`

The licensing status of the original shader is not currently established. JorelTX ON does not claim ownership of this shader.

## Pascal Gilcher / Marty McFly

The following qUINT components originate from Pascal Gilcher / Marty McFly:

- `qUINT_mxao.fx`
- `qUINT_common.fxh`

JorelTX ON V5 modifications to `qUINT_mxao.fx`:

- `MXAO_SAMPLE_RADIUS`: `2.5` → `1.2`
- `MXAO_SSAO_AMOUNT`: `1.00` → `0.55`

Source:
https://github.com/martymcmodding/qUINT

The original qUINT shader files are not currently redistributed by JorelTX ON.

## BloomingHDR

`BloomingHDR.fx` contains code and references originating from multiple authors and projects.

JorelTX ON V5 modification:

- Bloom Intensity: `(0.10, 0.50)` → `(0.12, 0.60)`

The exact licensing applicable to the version used by JorelTX ON V5 is still being verified before redistribution.

## ReShade

The JorelTX ON shader configuration uses ReShade shader infrastructure such as:

- `ReShade.fxh`
- `ReShadeUI.fxh`

These files are not original JorelTX ON code.

Source:
https://github.com/crosire/reshade-shaders

## JorelTX ON

The JorelTX ON project consists of the configuration, presets, documentation, installation structure, and modifications authored by the JorelTX ON project.

Third-party components remain subject to their respective authors' copyrights and licenses.
