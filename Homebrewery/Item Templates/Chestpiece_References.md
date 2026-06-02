# Chestpiece References
Up to date as of May 28th 2026, Atlyss 12026.a3, Homebrewery 4.7.30.
#
```
"_lockBoobs":              true/false    // Squishes the boobs together, combining their dynamic bones to jiggle together.
"_disableJiggleBoobBones": true/false    // Disables jiggle physics on the boobs, usually paired with lockBoobs on armour for best effect.
"_textureArms":            true/false    // Whether or not armor.png should texture the arms.
"_shoulderPadDisplayType": 0 - 4         // How many shoulderpads your Chestpiece has and where. 0 = None. 1 = Both sides. 2 = Left-side. 3 = Right-side.
"_dyeAffectsCollar":       true/false    // Needs "_canDyeArmor". Allows Dye to affect Collars.
"_dyeAffectsShoulderpads": true/false    // Needs "_canDyeArmor". Allows Dye to affect Shoulderpads.
```
#
## "ScriptableArmorRenders & Meshes" cheatsheet
- **"_chestRenderDisplay"**
```
- "chestMesh_00"   (Used by: Slimek Chest, Warrior Chest, Amberite Breastplate)
- "chestTabard_00" (Used by: Ghostly Tabard, Nethercrypt Tabard, Earthbind Tabard)
- "chestTabard_01" (Used by: Skywrill Tabard)
```
- **"_neckCollarMesh"**
```
- "_collar_00"          (Used by: Berserker Chestpiece, Executioner Vestment, Festive Coat)
- "_collar_01"          (Used by: Monolith Chestpiece, Magilord Overalls, Fortified Vestment)
- "_collar_ballCollar"  (Used by: Sagecloth Top)
- "mysticArmor_collar"
- "warlockArmor_collar"
- "maidArmor_collar"
```
- **"_shoulderpadMesh"**
```
- "_shoulderpad_00"         (Used by: Reapsow Garb)
- "_shoulderpad_01"         (Used by: Amberite Breastplate, Chainmail Guard, Chainscale Chest, Monolith Chestpiece, Ruggrok Vest, Roudon Robe)
- "shoulderpad_pad01"       (Used by: Sagecloth Top, Warrior Chest, Ornamented Battlerobe, Sapphite Guard)
- "shoiulderpad_pad02"      (Used by: Lord Breastplate)
- "vikingArmor_shoulderPad" (Used by: Tattered Battlerobe, Sleeper's Robe, Witchlock Robe, King Breastplate, Reaper Gi, Witchwizard Robe, Carbuncle Robe, Berserker Chestpiece, Fuguefall Duster, Magilord Overalls, Fortified Vestment, Executioner Vestment)
```
- **"_armCuffRender"**
```
- "armCuffs_00" (Used by: Amberite Breastplate, Golem Chestpiece, Roudon Robe, Bunhost Garb, Orefinder Vest)
- "armCuffs_01" (Used by: Lord Breastplate, Reapsow Garb, Witchlock Robe, Chainmail Guard, King Breastplate, Reaper Gi, Witchwizard Robe, Chainscale Chest, Monolith Chestpiece, Sapphite Guard, Berserker Chestpiece, Fuguefall Duster, Gemveil Breastplate, Executioner Vestment, Fender Garb)
- "armCuffs_02" (Used by: Tattered Battlerobe, Apprentice Robe, Ornamented Battlerobe, Magilord Overalls, Fortified Vestment, Wizlad Robe, Spooky Garment, Festive Coat, Vampiric Coat)
```
- **_hipMesh**
```
- "hipMesh_00"
- "hipMesh_01" (Used by: Sapphite Guard, Fuguefall Duster, Fortified Vestment, Spooky Garment)
```
- **"_robeSkirtRender"**
```
- "robeSkirt" (Used by: Sagecloth Top, Worn Robe, Tattered Battlerobe, Apprentice Robe, Sleeper's Robe, Witchlock Robe, Ornamented Battlerobe, Witchwizard Robe, Carbuncle Robe, Druidic Robe, Roudon Robe, Wizlad Robe, Test Chestpiece)
```