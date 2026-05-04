# README
This is a public resource of shaders for custom map creators, these were sourced from the [**Atlyss: Mod Devs**](https://discord.gg/PCryMfmJGw) Discord server.\
**.SHADERGRAPH** files (SG) require ShaderGraph to be installed through the Package Manager before being usable.

Shaders that have been recreated or restored as well as custom shaders that were used for Fray Fields and Fray Valley
- `DiffuseColorAdjust_RESTORED`
- `diffuse_standard.shader`
- `ColorAdjust`
- `QuakeLiquid`
- `MovingTexture` (SG)
- `MovingSkybox` (SG)

The foliage shader made by Dipi11. The "Skybox" variant just has the vertex shader (that makes the foliage blow in the wind) turned off. But the shader mainly simulates spherical normals to hide low poly foliage.
- `FoliageShaderSphereize` (SG)
- `FoliageShaderSphereizeSkybox`

These shaders require `TerrainSplatmapCustom.cginc` to work. This is only required for the terrain and will require the material of the terrain to be set to `_mat_TerrainTriPlanar.mat` (edited by Wolfkann for increase layer compatibility).
- `LODDER Triplanar Terrain Standard`
- `LODDER Triplanar Terrain Specular`
- `LODDER Triplanar Terrain Diffuse`
#
## Contributors
- `Nessie:` ColorAdjust, diffuse_standard, QuakeLiquid. ([**Github**](https://github.com/Nestorboy) - [**Thunderstore**](https://thunderstore.io/c/atlyss/p/Nessie/))
- `Zera:` MovingTexture, MovingSkybox. ([**Github**](https://github.com/LefiloMandering) - [**Thunderstore**](https://thunderstore.io/c/atlyss/p/ZenFishes/))
- `Dipi11:` FoliageShaderSphereize, FoliageShaderSphereizeSkybox. ([**Thunderstore**](https://thunderstore.io/c/atlyss/p/Dipi11/))
- `Toman:` DiffuseColorAdjust_RESTORED.
- `WolfKann:` Edits to the LODDER shaders, source below. ([**Github**](https://github.com/WolfKann) - [**Thunderstore**](https://thunderstore.io/c/atlyss/p/WolfKann/))
- This [**Unity Discussions**](https://discussions.unity.com/t/free-triplanar-terrain-shaders/605376) thread was the source of the LODDER Triplanar shaders.