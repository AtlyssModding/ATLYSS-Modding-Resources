# Leggings References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Properties that only Leggings have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Leggings-have)
#
```jsonc
"_textureUpperLegOnly": true/false    // Whether or not armor.png should only texture above the knees.
"_textureFeet":         true/false    // Whether or not armor.png should texture the feet.
```
#
### "_legPieceRender_0X" cheatsheet
ArmorRender fields can generally accept most meshes (except HelmRenders here) but functionality is contextual. You can experiment to see what works (like robeskirts on hips) and what doesn't (chestrenders on legpieces).\
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#legpieces)
```
- "belt_00"    /"beltSash02" (Slimek Leggings, Temrak Britches)
- "legCuffs_00"/"legCuffs03" (Slimek Leggings, Journeyman Leggings, Dense Leggings, Sash Leggings, Warrior Leggings, Amberite Leggings, Reapsow Pants, Sapphite Leggings, Berserker Leggings, Magilord Boots, Executioner Legging)
- "legCuffs_01"/"shinPads01" (Lord Greaves, King Greaves)
- "hipMesh_00" /"legPads03"  (Lord Greaves, King Greaves, Executioner Leggings)
```