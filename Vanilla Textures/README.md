# README
Compile of all Imp/Poon/Kubold/Byrdle/Chang eyes, mouths, and skins in-game. Read this [**guide**](https://github.com/Catman-232/Homebrewery/wiki/How-to-preview-and-export-the-game's-assets-(AssetStudio)) on how to preview and export game assets. I have no intentions of sharing more than I have to so that users can skip using third party tools. Check out [**VanillaBrewery**](https://thunderstore.io/c/atlyss/p/ZeinaKC/VanillaBrewery/) on Thunderstore for all equipment instead. When Homebrewerey adds the feature to reference vanilla assets like ModAudio, this will likely be less useful but it'll still be available for texture editors.

All of the files and folders were renamed to:
- Create a human-readable structure.
- Be Homebrewery creation friendly, but subsquently not TextureReplace friendly.
- Be consistent with in-game displays, excluding unused stuff.

⚠️ I only claim ownership of the effort put into compiling and formatting this project, all the assets belong to Kiseff (KisSoft) and what you choose to do with them is on you.

[**Homebrewery's Texture Replacer**](https://github.com/Catman-232/Homebrewery/wiki/How-to-use-HB's-Texture-Replacer) and [**Unity Explorer**](https://thunderstore.io/c/atlyss/p/AtlyssModding/Atlyss_UnityExplorer/) were used to gather most of the information presented here.
# Table of Contents
- [**SkinTextureGroups**](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/edit/main/Vanilla%20Textures/README.md#SkinTextureGroups)
- [_mesh](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/edit/main/Vanilla%20Textures/_mesh)
- [_particle](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/edit/main/Vanilla%20Textures/_particle)
- [_texture](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/edit/main/Vanilla%20Textures/_texture)
- [_ui](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/edit/main/Vanilla%20Textures/_ui)
- [Clip Documentation](https://github.com/kittycatto1/ZeinaKC-ModAudio-Route-Files/tree/Dominant/Clip%20Documentation) (Different repository that covers `_sound`)
#
## SkinTextureGroups
<details><summary><code>Imps</code></summary>

- `_hairGradient` is constant for all hairs.
- **Imp_Mida**
  - Head : `_impSkin_voodooHead2`
  - Ear  : `_impSkin_voodooHead2`
  - Chest: `_impSkin_voodooChest`
  - Leg  : `impSkin_voodooLegs`
  - Tail : `impTailTex`
- **imp_skullface**
  - Head : `_impSkin_voodooHead`
  - Ear  : `_impSkin_voodooHead`
  - Chest: `_impSkin_voodooChest`
  - Leg  : `impSkin_voodooLegs`
  - Tail : `impTailTex`
- **imp_fullClear**
  - Head : `_impSkin_head02`
  - Ear  : `_impSkin_head02`
  - Chest: `_impSkin_Chest02`
  - Leg  : `impSkin_legs02`
  - Tail : `impTailTex`
</details><details><summary><code>Poons</code></summary>

- **DarkSpots_Tattoo**
  - Hair: `poonTex02_head`
  - Head: `poonTex02_head`
  - Ear : `poonTex02_head`
  - Body: `poonTex02_chest`
  - Leg : `poonTex02_leg`
  - Tail: `poonTex02_head`
- **DarkSpots_Clear**
  - Hair: `poonTex01_head`
  - Head: `poonTex01_head`
  - Ear : `poonTex01_head`
  - Body: `poonTex01_chest`
  - Leg : `poonTex01_leg`
  - Tail: `poonTex01_head`
- **LightSpots_Tattoo**
  - Hair: `poonTex03_head`
  - Head: `poonTex03_head03`
  - Ear : `poonTex03_head`
  - Body: `poonTex03_chest02`
  - Leg : `poonTex03_leg02`
  - Tail: `poonTex03_head`
- **LightSpots_Clear**
  - Hair: `poonTex03_head`
  - Head: `poonTex03_head`
  - Ear : `poonTex03_head`
  - Body: `poonTex03_chest`
  - Leg : `poonTex03_leg`
  - Tail: `poonTex03_head`
- **LightSpots_DeerHead**
  - Hair: `poonTex03_head`
  - Head: `poonTex03_head02`
  - Ear : `poonTex03_head`
  - Body: `poonTex03_chest`
  - Leg : `poonTex03_leg`
  - Tail: `poonTex03_head`
- **LightSpots_ValuHead**
  - Hair: `poonTex03_head`
  - Head: `poonTex03_head04`
  - Ear : `poonTex03_head`
  - Body: `poonTex03_chest`
  - Leg : `poonTex03_leg`
  - Tail: `poonTex03_head`
- **DarkSpots_DeerHead**
  - Hair: `poonTex01_head`
  - Head: `poonTex01_head_03`
  - Ear : `poonTex01_head`
  - Body: `poonTex01_chest`
  - Leg : `poonTex01_leg`
  - Tail: `poonTex01_head`
- **DarkSpots_ValuHead**
  - Hair: `poonTex01_head`
  - Head: `poonTex01_head_02`
  - Ear : `poonTex01_head`
  - Body: `poonTex01_chest`
  - Leg : `poonTex01_leg`
  - Tail: `poonTex01_head`
- **Krystal_00**
  - Hair: `poonTex01_head`
  - Head: `poonTex01_head06`
  - Ear : `poonTex03_head06`
  - Body: `PoonTex03_chest03`
  - Leg : `poonTex03_leg03`
  - Tail: `poonTex03_head05`
</details><details><summary><code>Kubolds</code></summary>

- `_hairGradient_kubold` is constant for all hairs.
- **Standard**
  - Head: `kobold_headTex`
  - Ear : `_koboldEarTex`
  - Body: `kobold_chestTex`
  - Leg : `kobold_legTex`
  - Tail: `_koboldTailTex`
- **Glyphed**
  - Head: `kobold_headTex02`
  - Ear : `_koboldEarTex`
  - Body: `kobold_chestTex02`
  - Leg : `kobold_legTex02`
  - Tail: `_koboldTailTex02`
- **Spotted**
  - Head: `kobold_headTex03`
  - Ear : `_koboldEarTex02`
  - Body: `kobold_chestTex03`
  - Leg : `kobold_legTex03`
  - Tail: `_koboldTailTex003`
</details><details><summary><code>Byrdles</code></summary>

- **default**
  - Hair: `byrdleTailTex_01`
  - Head: `byrdleTex_01`
  - Ear : `byrdleTex_head01`
  - Body: `byrdleChestTex_01`
  - Leg : `byrdleTexLeg_01`
  - Tail: `byrdleTailTex_01`
- **greyStreak**
  - Hair: `byrdleTailTex_02`
  - Head: `byrdleTex_02`
  - Ear : `byrdleTex_head02`
  - Body: `byrdleChestTex_02`
  - Leg : `byrdleTexLeg_02`
  - Tail: `byrdleTailTex_02`
- **raven**
  - Hair: `byrdleTailTex_03`
  - Head: `byrdleTex_03`
  - Ear : `byrdleTex_head03`
  - Body: `byrdleChestTex_03`
  - Leg : `byrdleTexLeg_03`
  - Tail: `byrdleTailTex_03`
</details><details><summary><code>Changs</code></summary>

- **Default Chang**
  - Hair: `changTex_head`
  - Head: `changTex_head`
  - Ear : `changEarTex_01`
  - Body: `changTex_chest`
  - Leg : `changTex_leg`
  - Tail: `changTailTex_01`
- **Chang Coona**
  - Hair: `changTex_head02`
  - Head: `changTex_head02`
  - Ear : `changEarTex_02`
  - Body: `changTex_chest`
  - Leg : `changTex_leg`
  - Tail: `changTailTex_02`
- **Changmunk**
  - Hair: `changTex_head`
  - Head: `changTex_head03`
  - Ear : `changEarTex_01`
  - Body: `changTex_chest`
  - Leg : `changTex_leg`
  - Tail: `changTailTex_01`
- **Clear Chang**
  - Hair: `changTex_head`
  - Head: `changTex_head04`
  - Ear : `changEarTex_01`
  - Body: `changTex_chest03`
  - Leg : `changTex_leg03`
  - Tail: `changTailTex_03`
- **Changmunk Frekle**
  - Hair: `changTex_head`
  - Head: `changTex_head05`
  - Ear : `changEarTex_01`
  - Body: `changTex_chest`
  - Leg : `changTex_leg`
  - Tail: `changTailTex_01`
</details>