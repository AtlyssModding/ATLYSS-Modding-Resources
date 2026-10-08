# Chestpiece References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Properties that only Chestpieces have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Chestpieces-have)
#
`boobOverride.png` is a special use-case texture that overrides the Boobs, Front and Back texturing of `armor.png`, you don't need it if you won't use it. Note that the Hands, Arms and Cuffs are textured by `armor.png`!

`legOverlay.png` is a special use-case texture similar to leggings but doesn't do feet, and also goes over them when both textures are active.
#
```jsonc
"_lockBoobs":              true/false    // Squishes the boobs together, combining their dynamic bones to jiggle simultaneously.
"_disableJiggleBoobBones": true/false    // Disables the jiggle physics on the boobs. Usually paired with lockBoobs.
"_textureArms":            true/false    // Whether or not armor.png should texture the arms/hands.
"_shoulderPadDisplayType": 0 — 4         // How many shoulderpads the chestpiece has and where. 0 = None. 1 = Both sides. 2 = Left-side. 3 = Right-side.
"_dyeAffectsCollar":       true/false    // Allows Dye to affect Collars. (Requires "_canDyeArmor")
"_dyeAffectsShoulderpads": true/false    // Allows Dye to affect Shoulderpads. (Requires "_canDyeArmor")
```
#
## "Meshes" cheatsheet
<details open>

### "_neckCollarMesh"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#collars)
```
- "_collar_00"          (Berserker Chestpiece, Executioner Vestment, Festive Coat)
  - "vikingArmor_collar" is aliased to this.
- "_collar_01"          (Monolith Chestpiece, Magilord Overalls, Fortified Vestment)
- "_collar_ballCollar"  (Sagecloth Top)
- "mysticArmor_collar"
- "warlockArmor_collar"
- "maidArmor_collar"
```
#
### "_shoulderpadMesh"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#shoulderpads)
```
- "_shoulderpad_00"         (Reapsow Garb)
- "_shoulderpad_01"         (Amberite Breastplate, Chainmail Guard, Chainscale Chest, Monolith Chestpiece, Ruggrok Vest, Roudon Robe)
- "shoulderpad_pad01"       (Sagecloth Top, Warrior Chest, Ornamented Battlerobe, Sapphite Guard)
- "shoiulderpad_pad02"      (Lord Breastplate)
- "vikingArmor_shoulderPad" (Tattered Battlerobe, Sleeper's Robe, Witchlock Robe, King Breastplate, Reaper Gi, Witchwizard Robe, Carbuncle Robe, Berserker Chestpiece, Fuguefall Duster, Magilord Overalls, Fortified Vestment, Executioner Vestment)
```
</details>

#
## "ScriptableArmorRenders" cheatsheet
ArmorRender fields can generally accept most meshes (except HelmRenders here) but functionality is contextual. You can experiment to see what works (like robeskirts on hips) and what doesn't (chestrenders on legpieces).
<details open>

### "_chestRenderDisplay"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#chestrenders)
```
- "chestMesh_00"  /"chestpiece03"  (Slimek Chest, Warrior Chest, Amberite Breastplate)
- "chestTabard_00"/"chestTabard02" (Ghostly Tabard, Nethercrypt Tabard, Earthbind Tabard)
- "chestTabard_01"/"chestTabard03" (Skywrill Tabard)
```
#
### "_armCuffRender"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#armcuffs)
```
- "armCuffs_00"/"armCuff01" (Amberite Breastplate, Golem Chestpiece, Roudon Robe, Bunhost Garb, Orefinder Vest)
- "armCuffs_01"/"armCuff02" (Lord Breastplate, Reapsow Garb, Witchlock Robe, Chainmail Guard, King Breastplate, Reaper Gi, Witchwizard Robe, Chainscale Chest, Monolith Chestpiece, Sapphite Guard, Berserker Chestpiece, Fuguefall Duster, Gemveil Breastplate, Executioner Vestment, Fender Garb)
- "armCuffs_02"/"armCuff03" (Tattered Battlerobe, Apprentice Robe, Ornamented Battlerobe, Magilord Overalls, Fortified Vestment, Wizlad Robe, Spooky Garment, Festive Coat, Vampiric Coat)
```
#
### "_hipMesh"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#hipmeshes)
```
- "hipMesh_01" (Sapphite Guard, Fuguefall Duster, Fortified Vestment, Spooky Garment)
```
#
### "_robeSkirtRender"
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#robeskirts)
```
- "robeSkirt"/"robeSkirt01" (Sagecloth Top, Worn Robe, Tattered Battlerobe, Apprentice Robe, Sleeper's Robe, Witchlock Robe, Ornamented Battlerobe, Witchwizard Robe, Carbuncle Robe, Druidic Robe, Roudon Robe, Wizlad Robe, Test Chestpiece)
```
</details>