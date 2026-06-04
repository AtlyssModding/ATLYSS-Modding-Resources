# README
Collection of tools and resources for [**Homebrewery**](https://thunderstore.io/c/atlyss/p/Catman232/Homebrewery/) that don't easily fit anywhere else.
# Table of Contents
- [**Item Templates**](/Homebrewery/Item%20Templates)
- [**Icons Render**](/Homebrewery/Icons%20Render)
- [LimitCFGs](/Homebrewery/LimitCFGs)
- [JiggleSettings](/Homebrewery/JiggleSettings)
- [HB Phone Template](/Homebrewery/HB%20Phone%20Template)
-
- [**Skin Templates**](../Skin%20Templates)
- [**Vanilla Textures**](../Vanilla%20Textures)
#
## Additional Information
Item Templates and Icons Render are a set of tools for easily creating items, they're based off of the Homebrewery User Manual but designed for active development instead. The `ATLYSS_HEADS_TEMPLATE` file is a 3D mesh template for creating [Helm Renders](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Helms-have#_helmrender), though you should also read about [Helm Override Meshes](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Helms-have#_helmoverridemesh).

The LimitCFGs and JiggleSettings folders are a collection of presets that go into `BepInEx\config\Homebrewery`.\
The presets handle it but enabling HB's custom jiggle settings requires turning on "CustomJiggleOn" in `JiggleSettings.CFG`\
LimitCFGs require you configure "SliderRangeOverride" and "ClampPlayerProportions" in `Homebrewery.CFG`'s **[Sliders]** section.

HB Phone Template is for customising Homebrewery's "Based Department" easter egg which you can call with "/hb call based". Inside is the text file and images used in-game, edit those and replace them in:\
`BepInEx\plugins\Catman232-Homebrewery\Internal`.
#
## Contributors
- `WawaTofu:` Creator of the [**AtlyssTools Google Drive**](https://drive.google.com/drive/folders/1sNhPXUSaN4dt9B7GJxHZUVMRM4PldShu) where the ArmorRender and Icon Render were sourced. ([**Thunderstore**](https://thunderstore.io/c/atlyss/p/WawaTofu/))
- `Mellodonix:` Created the Icon Render tool. ([**YouTube**](https://www.youtube.com/channel/UCW1qQXqYp3aKW5S5y6nyGdg))
- `Newt:` Provided the Weapon References file, I edited it and made more. ([**Thunderstore**](https://thunderstore.io/c/atlyss/p/newt5/))