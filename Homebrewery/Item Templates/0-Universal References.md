# Shield References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information:
#
### ArmorRenders & Mesh fields
| Property                 | Type          | Texture               |
| ------------------------ | ------------- | --------------------- |
| `"_helmRender":`         | "ArmorRender" | armor.png             |
| `"_helmOverrideMesh":`   | "Mesh"        | armor.png             |
| `"_capeMesh":`           | "Mesh"        | armor.png             |
| `"_chestRenderDisplay":` | "ArmorRender" | chestRender(Boob).png |
| `"_neckCollarMesh":`     | "Mesh"        | neckCollar.png        |
| `"_shoulderpadMesh":`    | "Mesh"        | shoulderpad.png       |
| `"_armCuffRender"`       | "ArmorRender" | armor.png.png         |
| `"_hipMesh":`            | "ArmorRender" | hipMesh.png           |
| `"_robeSkirtRender":`    | "ArmorRender" | robeSkirt.png         |
| `"_legPieceRender_0X":`  | "ArmorRender" | legPieceX.png         |
| `"weaponMesh":`          | "Mesh"        | weapon.png            |
| `"_shieldMesh":`         | "Mesh"        | shield.png            |
#
```jsonc
"_canDyeArmor": true/false    // Allows Dye to affect armour.
"_colorAdjustParams":
{
  "_hue":        0.0,    // -360 — 360. Colour value.
  "_saturation": 1.0,    // 0  — 2. Colour intensity value.
  "_brightness": 0.0,    // -1 — 1. Darkness to Lightness value.
  "_contrast":   1.0     // 0  — 2. Value for distinguishing colours.
}
```
#
```jsonc
"_itemName":        ""    // This is the display name and identifier! Careful about renaming it and its folder.
"_itemDescription": ""    // To use speechmarks \"escape them\", and use \n to newline. HTML color tags supported.
"sortindex":        0     // Default/fallback sorting is alphabetical. Negative values come before and positive values after.
"dropitemtime":     -1    // Override the expiry duration of items. 11700 is one hour.
"secretitem":     true/false    // Whether or not the item appears in the Homebrewery shop.
"_destroyOnDrop": true/false    // Whether or not the item is destroyed upon dropping.
```