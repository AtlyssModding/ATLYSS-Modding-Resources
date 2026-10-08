# Helm References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Properties that only Helms have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Helms-have)
#
```jsonc
"_blendHelmValue":     0 — 100       // Squishes the spiky bits on Kubold & Byrdle heads. Usually paired with HelmHairDisplay.
"_useHelmHairDisplay": true/false    // Switches the character hair mesh to a generalised one per-race. Doesn't work on Bald.
"_hideHair":   true/false    // Hide the Hair (Bald).
"_hideEars":   true/false    // Hide the Ears.
"_hideMisc":   true/false    // Hide "Misc". Exclusive to Imps, Poons, Kubolds.
"_isFullHelm": true/false    // Hide the character head (including Hair). Doesn't affect Ears or Misc.
"_noFlip":     true/false    // Make the helmet unaffected by "Mirror Body" or left-handed mode.
```
<details><summary><b>"_blendHelmValue" ranges</b></summary>

```
- "0"    (Most helmets)
- "44.4" (Wizard Hat. Because this is common for override meshes, many helmets use 44.4)
- "55.6" (Sapphite Mindhat)
- "73.2" (Acolyte Hood, Necromancer Hood)
- "80.4" (Dire Helm, Festive Hat, Fishin Hat, Orefinder Hat, Top Hat)
- "80.5" (Dense Helm)
- "84.5" (Amberite Helm)
- "100"  (Leather Cap, Leathen Cap, Guardel Helm, Deathknight Helm, Wizlad Hood, Boarus Helm, Spooky Hat, Frogkicker Helm)
```
</details>

#
### "_helmRender" cheatsheet
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#helms)
```jsonc
"_helmRender": "ArmorRender"    // ArmorRender assignment for helmets, requiring up to five meshes for each race.
```
<details open>

```
- "Crown"        (Empty)
- "glasses01"    (Initiate Spectacles, Journeyman Spectacles)
- "hood"         (Acolyte Hood)
- "nubCap"       (Leather Cap)
- "wizardHat01"  (Wizard Hat)
- "carbuncleHat" ("_helmOverrideMesh" tool)
- "festiveHat"   (Festive Hat)
- "direHelm"     (Dire Helm)
- "fullHelm"     ("_helmOverrideMesh" tool)
- "halo"         ("_helmOverrideMesh" tool)
- "halo_01"      ("_helmOverrideMesh" tool)
```
</details>

#
### "_helmOverrideMesh" cheatsheet
[Images](https://github.com/Catman-232/Homebrewery/wiki/Meshes-and-ScriptableArmorRenders#_helmoverridemesh-previously-just-halos)
```jsonc
"_helmOverrideMesh": "Mesh"    // Replaces the helmRender but uses its 3D position values, only requiring one mesh.
```
<details open>

```
- "_helm_glasses01"           (Duplicate of _helm_glasses02)
- "_helm_glasses02"           (Focusi Glasses)
- "helm_wizladHood"           (Wizlad Hood)
- "helm_bunnyEar"             (Agility Ears)
- "helm_hood_02"
- "helm_hood_04"              (Necromancer Hood)
- "helm_nubcap"
- "helm_nubcap_01"            (Leathen Cap)
- "helm_wizardHat"
- "helm_carbuncleHat"         (Carbuncle Hat)
- "helm_fishHat"              (Fishin Hat)
- "helm_rukoHat"              (Orefinder Hat)
- "helm_topHat"               (Top Hat)
- "helm_bumpHat"              (Guardel Helm)
- "_helm_00"                  (Dense Helm)
- "_helm_01"                  (Amberite Helm)
- "_helm_02"                  (Sapphite Mindhat)
- "_helm_03"                  (Boarus Torment)
- "helm_frogkick"             (This is the hat Trip uses)
- "viking_helm"
- "thiefArmor_hat"
- "helm_dreamer"
- "helm_direHelm"
- "_fullhelm_00"              (Boarus Helm)
- "_fullhelm_jackolantern"    (Spooky Hat)
- "_fullhelm_deathKnightHelm" (Deathknight Helm)
- "_helm_halo_0"              (Newfold Halo)
- "_helm_halo_01"             (Cryptsinge Halo, Demicrypt Halo)
- "_helm_halo_02"             (Rage Circlet, Focus Circlet, Magistrate Circlet)
- "_helm_halo_03"             (Diva Crown)
- "_helm_halo_04"             (Geistlord Crown)
- "_helm_halo_04_alt00"       (Geistlord Eye)
- "_helm_halo_05"             (Nethercrypt Halo)
- "_helm_halo_06"             (Iron Halo, Mithril Halo, Emerock Halo)
- "_helm_halo_07"             (Knightguard Halo)
- "_helm_halo_08"             (Jestercast Memory)
- "_helm_halo_09"             (Glyphgrift Halo)
- "_helm_halo_10"             (Druidic Halo)
```
</details>