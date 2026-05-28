# Helm References
Up to date as of May 28th 2026, Atlyss 12026.a3, Homebrewery 4.7.30
#
```
"_blendHelmValue":     0 - 100       // Exclusive to Kubolds & Byrdles, squishes the spiky bits on their heads.
"_useHelmHairDisplay": true/false    // Switches the player hair mesh to a generalised one per race Usually paired with blending. Doesn't work on Bald.
```
#
```
"_hideHair":   true/false    // Hide the hair, bald.
"_hideEars":   true/false    // Hide the ears.
"_hideMisc":   true/false    // Hide "misc", exclusive to Imps, Poons, and Kubolds.
"_isFullHelm": true/false    // Hide the player head, including hair Doesn't affect Ears or Misc.
"_noFlip":     true/false    // Make the helmet unaffected by "Mirror Body" or left-handed mode.
```
#
## "_helmRender" cheatsheet
```
- "Crown"        (Empty)
- "glasses01"    (Used by: Initiate Spectacles, Journeyman Spectacles)
- "hood"         (Used by: Acolyte Hood)
- "nubCap"       (Used by: Leather Cap)
- "wizardHat01"  (Used by: Wizard Hat)
- "carbuncleHat" ("_helmOverrideMesh" tool)
- "festiveHat"   (Used by: Festive Hat)
- "direHelm"     (Used by: Dire Helm)
- "fullHelm"     ("_helmOverrideMesh" tool)
- "halo"         ("_helmOverrideMesh" tool)
- "halo_01"      ("_helmOverrideMesh" tool)
```
#
## "_helmOverrideMesh" cheatsheet
```
- "_helm_glasses01"           (Duplicate of the one below)
- "_helm_glasses02"           (Used by: Focusi Glasses)
- "helm_wizladHood"           (Used by: Wizlad Hood)
- "helm_bunnyEar"             (Used by: Agility Ears)
- "helm_hood_02"
- "helm_hood_04"              (Used by: Necromancer Hood)
- "helm_nubcap"
- "helm_nubcap_01"            (Used by: Leathen Cap)
- "helm_wizardHat"
- "helm_carbuncleHat"         (Used by: Carbuncle Hat)
- "helm_fishHat"              (Used by: Fishin Hat)
- "helm_rukoHat"              (Used by: Orefinder Hat)
- "helm_topHat"               (Used by: Top Hat)
- "helm_bumpHat"              (Used by: Guardel Helm)
- "_helm_00"                  (Used by: Dense Helm)
- "_helm_01"                  (Used by: Amberite Helm)
- "_helm_02"                  (Used by: Sapphite Mindhat)
- "_helm_03"                  (Used by: Boarus Torment)
- "helm_frogkick"             (This is the hat Trip uses)
- "viking_helm"
- "thiefArmor_hat"
- "helm_dreamer"
- "helm_direHelm"
- "_fullhelm_00"              (Used by: Boarus Helm)
- "_fullhelm_jackolantern"    (Used by: Spooky Hat)
- "_fullhelm_deathKnightHelm" (Used by: Deathknight Helm)
- "_helm_halo_0"              (Used by: Newfold Halo)
- "_helm_halo_01"             (Used by: Cryptsinge Halo, Demicrypt Halo)
- "_helm_halo_02"             (Used by: Rage Circlet, Focus Circlet, Magistrate Circlet)
- "_helm_halo_03"             (Used by: Diva Crown)
- "_helm_halo_04"             (Used by: Geistlord Crown)
- "_helm_halo_04_alt00"       (Used by: Geistlord Eye)
- "_helm_halo_05"             (Used by: Nethercrypt Halo)
- "_helm_halo_06"             (Used by: Iron Halo, Mithril Halo, Emerock Halo)
- "_helm_halo_07"             (Used by: Knightguard Halo)
- "_helm_halo_08"             (Used by: Jestercast Memory)
- "_helm_halo_09"             (Used by: Glyphgrift Halo)
- "_helm_halo_10"             (Used by: Druidic Halo)
```