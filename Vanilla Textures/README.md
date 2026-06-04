# README
Compile of all Imp/Poon/Kubold/Byrdle/Chang skins, eyes and mouths in-game. Read this [**guide**](https://github.com/Catman-232/Homebrewery/wiki/How-to-preview-and-export-the-game's-assets-(AssetStudio)) on how to preview and export game assets. I have no intentions of sharing more than I have to so that users can skip using third party tools, check out [**VanillaBrewery**](https://thunderstore.io/c/atlyss/p/ZeinaKC/VanillaBrewery/) on Thunderstore for all equipment instead. When Homebrewerey adds the feature to reference vanilla assets like ModAudio, this will likely be less useful but it'll still be available for texture editors. The information here was gathered through [**Homebrewery's Texture Replacer**](https://github.com/Catman-232/Homebrewery/wiki/How-to-use-HB's-Texture-Replacer) and [**Unity Explorer**](https://thunderstore.io/c/atlyss/p/AtlyssModding/Atlyss_UnityExplorer/).

All of the files and folders were renamed to:
- Create a human-readable structure.
- Be Homebrewery creation friendly, but subsquently not TextureReplace friendly.
- Be consistent with in-game displays, excluding unused stuff.

⚠️ I only claim ownership of the effort put into compiling and formatting this project, all the assets belong to Kiseff (KisSoft) and what you choose to do with them is on you.
# Table of Contents
- [**SkinTextureGroups**](../tree/main/Vanilla%20Textures#skintexturegroups)
- [_mesh](../blob/main/Vanilla%20Textures/_mesh.md)
- [_particle](../blob/main/Vanilla%20Textures/_particle.md)
- [_texture](../blob/main/Vanilla%20Textures/_texture.md)
- [_ui](../blob/main/Vanilla%20Textures/_ui.md)
- [Clip Documentation](https://github.com/kittycatto1/ZeinaKC-ModAudio-Route-Files/tree/Dominant/Clip%20Documentation) (Different repository that covers `_sound`)
#
## SkinTextureGroups
<details><summary><code>Imps</code></summary>

- `_hairGradient` is constant for all hairs.
- **Imp_Mida**
```
- Head : _impSkin_voodooHead2
- Ear  : _impSkin_voodooHead2
- Chest: _impSkin_voodooChest
- Leg  : impSkin_voodooLegs
- Tail : impTailTex
```
- **imp_skullface**
```
- Head : _impSkin_voodooHead
- Ear  : _impSkin_voodooHead
- Chest: _impSkin_voodooChest
- Leg  : impSkin_voodooLegs
- Tail : impTailTex
```
- **imp_fullClear**
```
- Head : _impSkin_head02
- Ear  : _impSkin_head02
- Chest: _impSkin_Chest02
- Leg  : impSkin_legs02
- Tail : impTailTex
```
</details><details><summary><code>Poons</code></summary>

- **DarkSpots_Tattoo**
```
- Hair: poonTex02_head
- Head: poonTex02_head
- Ear : poonTex02_head
- Body: poonTex02_chest
- Leg : poonTex02_leg
- Tail: poonTex02_head
```
- **DarkSpots_Clear**
```
- Hair: poonTex01_head
- Head: poonTex01_head
- Ear : poonTex01_head
- Body: poonTex01_chest
- Leg : poonTex01_leg
- Tail: poonTex01_head
```
- **LightSpots_Tattoo**
```
- Hair: poonTex03_head
- Head: poonTex03_head03
- Ear : poonTex03_head
- Body: poonTex03_chest02
- Leg : poonTex03_leg02
- Tail: poonTex03_head
```
- **LightSpots_Clear**
```
- Hair: poonTex03_head
- Head: poonTex03_head
- Ear : poonTex03_head
- Body: poonTex03_chest
- Leg : poonTex03_leg
- Tail: poonTex03_head
```
- **LightSpots_DeerHead**
```
- Hair: poonTex03_head
- Head: poonTex03_head02
- Ear : poonTex03_head
- Body: poonTex03_chest
- Leg : poonTex03_leg
- Tail: poonTex03_head
```
- **LightSpots_ValuHead**
```
- Hair: poonTex03_head
- Head: poonTex03_head04
- Ear : poonTex03_head
- Body: poonTex03_chest
- Leg : poonTex03_leg
- Tail: poonTex03_head
```
- **DarkSpots_DeerHead**
```
- Hair: poonTex01_head
- Head: poonTex01_head_03
- Ear : poonTex01_head
- Body: poonTex01_chest
- Leg : poonTex01_leg
- Tail: poonTex01_head
```
- **DarkSpots_ValuHead**
```
- Hair: poonTex01_head
- Head: poonTex01_head_02
- Ear : poonTex01_head
- Body: poonTex01_chest
- Leg : poonTex01_leg
- Tail: poonTex01_head
```
- **Krystal_00**
```
- Hair: poonTex01_head
- Head: poonTex01_head06
- Ear : poonTex03_head06
- Body: PoonTex03_chest03
- Leg : poonTex03_leg03
- Tail: poonTex03_head05
```
</details><details><summary><code>Kubolds</code></summary>

- `_hairGradient_kubold` is constant for all hairs.
- **Standard**
```
- Head: kobold_headTex
- Ear : _koboldEarTex
- Body: kobold_chestTex
- Leg : kobold_legTex
- Tail: _koboldTailTex
```
- **Glyphed**
```
- Head: kobold_headTex02
- Ear : _koboldEarTex
- Body: kobold_chestTex02
- Leg : kobold_legTex02
- Tail: _koboldTailTex02
```
- **Spotted**
```
- Head: kobold_headTex03
- Ear : _koboldEarTex02
- Body: kobold_chestTex03
- Leg : kobold_legTex03
- Tail: _koboldTailTex003
```
</details><details><summary><code>Byrdles</code></summary>

- **default**
```
- Hair: byrdleTailTex_01
- Head: byrdleTex_01
- Ear : byrdleTex_head01
- Body: byrdleChestTex_01
- Leg : byrdleTexLeg_01
- Tail: byrdleTailTex_01
```
- **greyStreak**
```
- Hair: byrdleTailTex_02
- Head: byrdleTex_02
- Ear : byrdleTex_head02
- Body: byrdleChestTex_02
- Leg : byrdleTexLeg_02
- Tail: byrdleTailTex_02
```
- **raven**
```
- Hair: byrdleTailTex_03
- Head: byrdleTex_03
- Ear : byrdleTex_head03
- Body: byrdleChestTex_03
- Leg : byrdleTexLeg_03
- Tail: byrdleTailTex_03
```
</details><details><summary><code>Changs</code></summary>

- **Default Chang**
```
- Hair: `changTex_head`
- Head: `changTex_head`
- Ear : `changEarTex_01`
- Body: `changTex_chest`
- Leg : `changTex_leg`
- Tail: `changTailTex_01`
```
- **Chang Coona**
```
- Hair: changTex_head02
- Head: changTex_head02
- Ear : changEarTex_02
- Body: changTex_chest
- Leg : changTex_leg
- Tail: changTailTex_02
```
- **Changmunk**
```
- Hair: changTex_head
- Head: changTex_head03
- Ear : changEarTex_01
- Body: changTex_chest
- Leg : changTex_leg
- Tail: changTailTex_01
```
- **Clear Chang**
```
- Hair: changTex_head
- Head: changTex_head04
- Ear : changEarTex_01
- Body: changTex_chest03
- Leg : changTex_leg03
- Tail: changTailTex_03
```
- **Changmunk Frekle**
```
- Hair: changTex_head
- Head: changTex_head05
- Ear : changEarTex_01
- Body: changTex_chest
- Leg : changTex_leg
- Tail: changTailTex_01
```
</details>

#
## EyeTextureGroups
The lack of a state is "null", reusing the Center state.
<details><summary><Code>Imps</code></summary>

#1
```
- Center: goblinEyeTest02
- Closed: goblinEyeTest02_closed
- Left  : goblinEyeTest02_L
- Right : goblinEyeTest02_R
- Hurt  : goblinEyeTest02_pissed
- Pissed: goblinEyeTest02_pissed
```
#2
```
- Center: goblinEyeTest03
- Closed: goblinEyeTest_closed
- Left  : goblinEyeTest03_L
- Right : goblinEyeTest03_R
- Hurt  : goblinEyeTest03_pissed
- Pissed: goblinEyeTest03_pissed
```
#3
```
- Center: goblinEyeTest04
- Closed: goblinEyeTest04_closed
- Left  : goblinEyeTest04_L
- Right : goblinEyeTest04_R
- Hurt  : goblinEyeTest04_pissed
- Pissed: goblinEyeTest04_pissed
```
#4
```
- Center: goblinEyeTest07
- Closed: goblinEyeTest07_closed
- Pissed: goblinEyeTest07_pissed
```
#5
```
- Center: goblinEyeTest10
- Closed: goblinEyeTest10_closed
- Pissed: goblinEyeTest10_pissed
```
#6
```
- Center: goblinEyeTest06
- Closed: goblinEyeTest06_closed
- Left  : goblinEyeTest06_L
- Right : goblinEyeTest06_R
- Pissed: goblinEyeTest06_pissed
```
#7
```
- Center: goblinEyeTest11
- Closed: goblinEyeTest11_blink
- Left  : goblinEyeTest11_L
- Right : goblinEyeTest11_R
- Hurt  : goblinEyeTest11_hurt
- Pissed: goblinEyeTest11_pissed
```
#8
```
- Center: goblinEyeTest11
- Closed: goblinEyeTest11_blink
- Left  : goblinEyeTest11_L
- Right : goblinEyeTest11_R
- Hurt  : goblinEyeTest11_hurt
- Pissed: goblinEyeTest11_pissed
```
#9
```
- Center: goblinEyeTest12
- Closed: goblinEyeTest12_blink
- Left  : goblinEyeTest12_L
- Right : goblinEyeTest12_R
- Hurt  : goblinEyeTest12_hurt
- Pissed: goblinEyeTest12_pissed
```
</details><details><summary><Code>Poons</code></summary>

#1
```
- Center: poonEYe01
- Closed: poonEYe01_closed
- Left  : poonEYe01_L
- Right : poonEYe01_R
- Down  : poonEYe01_D
- Up    : poonEYe01_U
- Hurt  : poonEYe01_hurt
- Pissed: poonEYe01_pissed
```
#2
```
- Center: poonEYe02
- Closed: poonEYe02_closed
- Left  : poonEYe02_L
- Right : poonEYe02_R
- Down  : poonEYe02_D
- Up    : poonEYe02_U
- Hurt  : poonEYe02_hurt
- Pissed: poonEYe02_pissed
```
#3
```
- Center: poonEYe03
- Closed: poonEYe03_closed
- Left  : poonEYe03_L
- Right : poonEYe03_R
- Down  : poonEYe03_D
- Up    : poonEYe03_U
- Hurt  : poonEYe03_hurt
- Pissed: poonEYe03_pissed
```
#4
```
- Center: poonEYe04
- Closed: poonEYe04_closed
- Down  : poonEYe04_d
- Up    : poonEYe04_u
- Hurt  : poonEYe04_hurt
- Pissed: poonEYe04_pissed
```
#5
```
- Center: poonEYe05
- Closed: poonEYe05_closed
- Left  : poonEYe03_L
- Right : poonEYe03_R
- Down  : poonEYe05_D
- Up    : poonEYe05_U
- Hurt  : poonEYe05_hurt
- Pissed: poonEYe05_pissed
```
#6
```
- Center: poonEYe06
- Closed: poonEYe06_closed
- Left  : poonEYe06_L
- Right : poonEYe06_R
- Down  : poonEYe06_D
- Up    : poonEYe06_U
- Hurt  : poonEYe06_hurt
- Pissed: poonEYe06_pissed
```
#7
```
- Center: poonEYe07
- Closed: poonEYe07_closed
- Left  : poonEYe07_L
- Right : poonEYe07_R
- Down  : poonEYe07_D
- Hurt  : poonEYe07_hurt
- Pissed: poonEYe07_pissed
```
#8
```
- Center: poonEYe08
- Closed: poonEYe08_closed
- Left  : poonEYe08_L
- Right : poonEYe08_R
- Down  : poonEYe08_D
- Hurt  : poonEYe08_hurt
- Pissed: poonEYe08_pissed
```
#9
```
- Center: poonEYe09
- Closed: poonEYe09_blink
- Left  : poonEYe09_L
- Right : poonEYe09_R
- Down  : poonEYe09_D
- Hurt  : poonEYe09_hurt
- Pissed: poonEYe09_pissed
```
#10
```
- Center: poonEYe11
- Closed: poonEYe11_blink
- Left  : poonEYe11_L
- Right : poonEYe11_R
- Down  : poonEYe11_D
- Hurt  : poonEYe11_hurt
- Pissed: poonEYe11_pissed
```
#11
```
- Center: poonEYe12
- Closed: poonEYe12_blink
- Left  : poonEYe12_L
- Right : poonEYe12_R
- Down  : poonEYe12_D
- Hurt  : poonEYe12_hurt
- Pissed: poonEYe12_pissed
```
#12
```
- Center: poonEYe13
- Closed: poonEYe13_blink
- Left  : poonEYe13_L
- Right : poonEYe13_R
- Down  : poonEYe13_D
- Hurt  : poonEYe13_hurt
- Pissed: poonEYe13_pissed
```
#13
```
- Center: poonEYe10
- Closed: poonEYe10_blink
- Left  : poonEYe10_L
- Right : poonEYe10_R
- Down  : poonEYe10_D
- Hurt  : poonEYe10_hurt
- Pissed: poonEYe10_pissed
```
#14
```
- Center: poonEYe14
- Closed: poonEYe14_closed
- Left  : poonEYe14_L
- Right : poonEYe14_R
- Down  : poonEYe14_down
- Hurt  : poonEYe14_Hurt
- Pissed: poonEYe14_Pissed
```
</details><details><summary><Code>Kubolds</code></summary>

#1
```
- Center: _koboldEye01
- Closed: _koboldEye01_B
- Left  : _koboldEye01_L
- Right : _koboldEye01_R
- Down  : _koboldEye01_D
- Up    : _koboldEye01_U
```
#2
```
- Center: _koboldEye02
- Closed: _koboldEye02_closed
- Pissed: _koboldEye02_pissed
```
#3
```
- Center: _koboldEye03
- Closed: _koboldEye03_closed
- Left  : _koboldEye03_L
- Right : _koboldEye03_R
- Down  : _koboldEye03_D
- Up    : _koboldEye03_U
- Pissed: _koboldEye03_pissed
```
#4
```
- Center: _koboldEye04
- Closed: _koboldEye04_closed
- Left  : _koboldEye04_L
- Right : _koboldEye04_R
- Pissed: _koboldEye04_pissed
```
#5
```
- Center: _koboldEye05
- Closed: _koboldEye05_closed
- Left  : _koboldEye05_left
- Right : _koboldEye05_right
```
#6
```
- Center: _koboldEye07
- Closed: _koboldEye07_blink
- Pissed: _koboldEye07_pissed
```
#7
```
- Center: _koboldEye08
- Closed: _koboldEye08_blink
- Left  : _koboldEye08_L
- Right : _koboldEye08_R
- Hurt  : _koboldEye08_hurt
- Pissed: _koboldEye08_pissed
```
#8
```
- Center: _koboldEye09
- Closed: _koboldEye09_blink
- Left  : _koboldEye09_L
- Right : _koboldEye09_R
- Hurt  : _koboldEye09_hurt
- Pissed: _koboldEye09_pissed
```
#9
```
- Center: _koboldEye10
- Closed: _koboldEye10_blink
- Left  : _koboldEye10_L
- Right : _koboldEye10_R
- Hurt  : _koboldEye10_hurt
- Pissed: _koboldEye10_pissed
```
</details><details><summary><Code>Byrdles</code></summary>

#1
```
- Center: byrdle_eyes01
- Closed: byrdle_eyes01_closed
- Left  : byrdle_eyes01_L
- Right : byrdle_eyes01_R
- Hurt  : byrdle_eyes01_hurt
- Pissed: byrdle_eyes01_pissed
```
#2
```
- Center: byrdle_eyes04
- Closed: byrdle_eyes04_closed
- Hurt  : byrdle_eyes04_closed
- Pissed: byrdle_eyes04_pissed
```
#3
```
- Center: eye3
- Closed: byrdle_eyes03_closed
- Left  : byrdle_eyes03_L
- Right : byrdle_eyes03_R
- Hurt  : byrdle_eyes03_pissed
- Pissed: byrdle_eyes03_pissed
```
#4
```
- Center: byrdle_eyes02
- Closed: byrdle_eyes02_closed
- Left  : byrdle_eyes02_L
- Right : byrdle_eyes02_R
- Hurt  : byrdle_eyes02_closed
- Pissed: byrdle_eyes02_pissed
```
#5
```
- Center: byrdle_eyes05
- Closed: byrdle_eyes05_closed
- Left  : byrdle_eyes05_L
- Right : byrdle_eyes05_R
- Hurt  : byrdle_eyes05_hurt
- Pissed: byrdle_eyes05_pissed
```
#6
```
- Center: byrdle_eyes06
- Closed: byrdle_eyes06_closed
- Left  : byrdle_eyes06_L
- Right : byrdle_eyes06_R
- Hurt  : byrdle_eyes06_hurt
- Pissed: byrdle_eyes06_pissed
```
#7
```
- Center: byrdle_eyes07
- Closed: byrdle_eyes07_blink
- Left  : byrdle_eyes07_L
- Right : byrdle_eyes07_R
- Right : byrdle_eyes07_D
- Hurt  : byrdle_eyes07_hurt
- Pissed: byrdle_eyes07_pissed
```
#8
```
- Center: byrdle_eyes08
- Closed: byrdle_eyes08_blink
- Left  : byrdle_eyes08_L
- Right : byrdle_eyes08_R
- Down  : byrdle_eyes08_D
- Hurt  : byrdle_eyes08_hurt
- Pissed: byrdle_eyes08_pissed
```
#9
```
- Center: byrdle_eyes09
- Closed: byrdle_eyes09_blink
- Left  : byrdle_eyes09_L
- Right : byrdle_eyes09_R
- Hurt  : byrdle_eyes09_hurt
- Pissed: byrdle_eyes09_pissed
```
#10
```
- Center: byrdle_eyes10
- Closed: byrdle_eyes10_blink
- Left  : byrdle_eyes10_L
- Right : byrdle_eyes10_R
- Hurt  : byrdle_eyes10_hurt
- Pissed: byrdle_eyes10_pissed
```
#11
```
- Center: byrdle_eyes11
- Closed: byrdle_eyes11_blink
- Left  : byrdle_eyes11_L
- Right : byrdle_eyes11_R
- Hurt  : byrdle_eyes11_hurt
- Pissed: byrdle_eyes11_pissed
```
#12
```
- Center: byrdle_eyes12
- Closed: byrdle_eyes12_blink
- Left  : byrdle_eyes12_L
- Right : byrdle_eyes12_R
- Hurt  : byrdle_eyes12_hurt
- Pissed: byrdle_eyes12_pissed
```
</details><details><summary><Code>Changs</code></summary>

#1
```
- Center: changEye_01
- Closed: changEye_01_closed
- Left  : changEye_01_L
- Right : changEye_01_R
- Down  : changEye_01_D
- Up    : changEye_01_U
- Hurt  : changEye_01_hurt
- Pissed: changEye_01_pissed
```
#2
```
- Center: changEye_02
- Closed: changEye_02_closed
- Hurt  : changEye_02_hurt
- Pissed: changEye_02_pissed
```
#3
```
- Center: changEye_03
- Closed: changEye_03_closed
- Left  : changEye_03_L
- Right : changEye_03_R
- Hurt  : changEye_03_Hurt2
- Pissed: changEye_03_hurt
```
#4
```
- Center: changEye_04
- Closed: changEye_04_closed
- Left  : changEye_04_L
- Right : changEye_04_R
- Hurt  : changEye_04_hurt
- Pissed: changEye_04_pissed
```
#5
```
- Center: changEye_05
- Closed: changEye_05_closed
- Left  : changEye_05_L
- Right : changEye_05_R
- Hurt  : changEye_05_hurt
- Pissed: changEye_05_pissed
```
#6
```
- Center: changEye_06
- Closed: changEye_06_closed
- Left  : changEye_06_L
- Right : changEye_06_R
- Hurt  : changEye_06_hurt
- Pissed: changEye_06_pissed
```
#7
```
- Center: changEye_07
- Closed: changEye_07_closed
- Left  : changEye_07_L
- Right : changEye_07_R
- Hurt  : changEye_07_hurt
- Pissed: changEye_07_pissed
```
#8
```
- Center: changEye_08
- Closed: changEye_08_closed
- Left  : changEye_08_L
- Right : changEye_08_R
- Hurt  : changEye_08_hurt
- Pissed: changEye_08_pissed
```
#9
```
- Center: changEye_09
- Closed: changEye_09_closed
- Left  : changEye_09_L
- Right : changEye_09_R
- Hurt  : changEye_09_hurt
- Pissed: changEye_09_pissed
```
#10
```
- Center: changEye_10
- Closed: changEye_10_blink
- Hurt  : changEye_10_hurt
- Pissed: changEye_10_pissed
```
#11
```
- Center: changEye_11
- Closed: changEye_11_blink
- Left  : changEye_11_L
- Right : changEye_11_R
- Hurt  : changEye_11_hurt
- Pissed: changEye_11_pissed
```
#12
```
- Center: changEye_12
- Closed: changEye_12_blink
- Left  : changEye_12_L
- Right : changEye_12_R
- Hurt  : changEye_12_hurt
- Pissed: changEye_12_pissed
```
#13
```
- Center: changEye_13
- Hurt  : changEye_13_hurt
- Pissed: changEye_13_pissed
```
</details>

#
## MouthTextureGroups
<details><summary><Code>Imps</code></summary>

```
#1 m10 + m7
#2 m1  + m7
#3 m3  + m3_open
#4 m4  + m4_o
#5 m11 + m11_open
#6 m12 + m12_open
```
</details><details><summary><Code>Poons</code></summary>

```
#1 poonmouth01 + poonmouth05
#2 poonmouth02 + poonmouth03
#3 poonmouth06 + poonmouth5
#4 poonmouth04 + poonmouth03
#5 poonmouth08 + poonmouth05
#6 poonmouth09 + poonmouth03
#7 poonmouth10 + poonmouth05
#8 poonmouth11 + poonmouth11_open
```
</details><details><summary><Code>Kubolds</code></summary>

- `_mouth_kobold01_open` is constant for all mouths.
```
#1 _mouth_kobold02
#2 _mouth_kobold01
#3 _mouth_kobold03
#4 _mouth_kobold04
#5 _mouth_kobold05
```
</details><details><summary><Code>Changs</code></summary>

```
#1  changMouth_01 + changMouth_01_open
#2  changMouth_02 + changMouth_02_open
#3  changMouth_03 + changMouth_03_open
#4  changMouth_04 + changMouth_04_open
#5  changMouth_05 + changMouth_05_open
#6  changMouth_06 + changMouth_06_open
#7  changMouth_07 + changMouth_07_open
#8  changMouth_08 + changMouth_08_open
#9  changMouth_09 + changMouth_09_open
#10 changMouth_10 + changMouth_11
```
</details>
