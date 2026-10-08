# Weapon References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Properties that only Weapons have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Weapons-have)\
Original by [Newt](https://thunderstore.io/c/atlyss/p/newt5/), edited by ZeinaKC.
#
```jsonc
"weaponType": "see below"
- Unarmed
- Strength : Blade   | Mace | Greatblade | Hammer | Polearm // "Sword" is aliased to "Blade".
- Dexterity: Katars  | Bow  | Shotgun
- Magic    : Scepter | Bell
```
#
```jsonc
"_weaponHoldClipIndex": 0 — 2	        // THIS IS LEGACY. Use it for converting old params.
- (weaponType is "Unarmed")             -> 0 = "Unarmed"
- (weaponType is "Dexterity_Melee_2H")  -> 0 = "Katars"
- (weaponType is "Strength_Melee_1H")   -> 0 = "Blade"   | 1 = "Mace",
- (weaponType is "Strength_Melee_2H")   -> 0 = "Hammer"  | 1 = "Greatblade" | 2 = "Polearm"
- (weaponType is "Dexterity_Ranged_2H") -> 0 = "Bow"     | 1 = "Shotgun"
- (weaponType is "Mind_Ranged_1H")      -> 0 = "Scepter"
- (weaponType is "Mind_Ranged_2H")      -> 0 = "Bell"
```
#
```jsonc
"_drawSound":  "MP3/OGG"    // Drawing weapon SFX.
"_hitSound":   "MP3/OGG"    // Hitting SFX, currently unsupported.
"_swingSound": "MP3/OGG"    // Weapon swinging SFX.
```
#
[HTML color names](https://www.w3schools.com/tags/ref_colornames.asp)
```jsonc
// Support included for RGB(A), RRGGBB(AA), though Alpha is unused.
"_trailColor1": "#FFF"    // Colours the second half of: Blades, Maces, Greatblades, Hammers, Polearms, Scepters, Bells.
"_trailColor2": "#F00"    // Ditto but the first half. Unarmed only uses Trail #1 and Bows/Shotguns Trail #2
```
#
```jsonc
"_level": 1 — 32    // The weapon level is also used for scaling enchantments.
```
#
```jsonc
"_itemRarity": "see below"    // Accepts number values and text names. Can't enchant Exotic items.
- 0 — "Common"
- 1 — "Rare"
- 2 — "Exotic"
```
#
```jsonc
"_combatElement": -1 — 6
- -1 -> No element (or Normal if it has projectiles)
- 0  -> Normal
- 1  -> Fire
- 2  -> Water
- 3  -> Nature
- 4  -> Earth
- 5  -> Holy
- 6  -> Shadow
```
#
```jsonc
"_weaponDamage": 1 — 61    // Vanilla max: 56
"_damageBonus":  1 — 28    // Vanilla max: 16
// weaponDamage + damageBonus + 3 = Value.
```
#
```jsonc
"_scriptableCondition": "see below"
- "Gash"       // 3 Bleed damage per ~0.4s for 5 seconds (12 ticks).
- "Hex"        // -15% Movespeed & -5 Atk/Dex/Mgk Power for 5 seconds.
- "Brittle"    // -5 Defense for 5 seconds.
- "Burn"       // 5 Fire damage per 2.5s for 5 seconds (3 ticks).
- "Cold"       // -15% Movespeed & -3 Water Resistance for 5 seconds. 
- "Poison"     // 3 Poison damage per 2.5sec for 5 seconds (3 ticks).
```
#
```jsonc
"_chance": 0.001 — 0.12    // (0.1%/12%) On-hit chance for condition to apply. "Burn" and "Cold" have 0.2 (20%) maximum instead.
```

```jsonc
"_bonusPower": 0    // Modify condition strength.
// 0 is default. -3 is minimum. Maximum values are:
- "Gash":    0
- "Hex":     0
- "Brittle": 0
- "Burn":    3
- "Cold":    7
- "Poison":  5
```

```jsonc
"_bonusDuration": 0    // Modify effect duration.
// 0 is default. -3 is minimum. Maximum values are:
- "Gash":    0
- "Hex":     5
- "Brittle": 7
- "Burn":    2
- "Cold":    2
- "Poison":  2
```
#
```jsonc
"_enchantCostItem":   "Rock"      // The item to be used as the enchanting material. Leave empty to require nothing.
"_enchantCostAmount": 1           // The amount of materials to enchant.
"_vendorCost":        1 — 2820    // Multiply the value by X3 for the enchanting cost. Items sell for 30% of their value.
```
#
```jsonc
// Comments are for vanilla and HB maximums.
"_statStruct": 
{
  "_defense":      0,    // 5  — 35
  "_magicDefense": 0,
  "_maxHealth":    0,    // 0  — 25
  "_maxMana":      0,    // 8  — 28
  "_maxStamina":   0,    // 12 — 20
  "_attackPower":  0,    // 18 — 23
  "_magicPower":   0,    // 15 — 33
  "_dexPower":     0,    // 21 — 28
  "_criticalRate":      0.0,    // 0.045 — 0.085 (4.5%/8.5%)
  "_magicCriticalRate": 0.0,
  "_evasion":           0.0,    // 0.028 — 0.095 (2.8%/9.5%)
  "_fireResist":   0,
  "_waterResist":  0,
  "_natureResist": 0,
  "_earthResist":  0,
  "_holyResist":   0,
  "_shadowResist": 0
}
```
#
## "_weaponProjectileSet" cheatsheet
For showcases of the projectiles, check out [**HB Reference Items Pack**](https://thunderstore.io/c/atlyss/p/Catman232/HB_Reference_Items_Pack/).
```jsonc
"_weaponProjectileSet": "see below"    // Assigns what projectiles to fire. Requires a ranged weaponType.
```
<details open>

### Arrows
```
- "arrow"            (Wooden Bow, Crypt Bow, Demicrypt Bow, Iron Bow, Mekspike Bow, Necroroyal Bow, Mithril Bow)
- "arrow_pierce"     (Serrated Longbow)
- "arrow_water"      (Coldgeist Bow)
- "arrow_nature"     (Menace Bow)
- "arrow_torrentius" (Torrentius Longbow)
- "arrow_shadow"     (Petrified Bow)
```
#
### Bullets
```
- "gun_00"          (Amberite Boomstick)
- "magitekBurstGun" (Magitek Burstgun)
- "follycannon"     (Follycannon)
```
#
### Scepters
```
- "scepter(ele_normal)"       (Wood Scepter, Splitbark Scepter, Iron Scepter, Mithril Scepter)
- "slmDivaBaton"              (Slime Diva Baton)
- "scepter(wizscepter)"       (Wizwand)
- "scepter(sapphite)"         (Sapphite Scepter)
- "scepter(ele_fire)_00"      (Pyre Cane)
- "scepter(ele_fire)_01"      (Flamepetal Staff)
- "scepter(ele_water)_00"     (Cryo Cane)
- "scepter(ele_water)_01"     (Aquapetal Staff)
- "scepter(voalstark)"        (Voalstark Wand)
- "scepter(ele_shadow)"       (Marrow Bauble, Demicrypt Bauble)
- "scepter(ele_shadow)_alt00" (Nethercrypt Bauble)
```
#
### Bells
```
- "bell_normal"       (Wood Bell, Iron Bell, Mithril Bell)
- "bell_sapphite"     (Sapphite Bell)
- "bell_coldgeist"    (Coldgeist Frostcaller)
- "bell_colossusTone" (Colossus Tone)
- "bell_shadow"       (Cryptcall Bell)
```
</details>

#
## "weaponMesh" cheatsheet
### Blades
<details open>

```
- "sword_test"
- "_lightWeapon_blade04"   (Rude Blade, Vile Blade)
- "_mediumMelee_sword01"   (Wood Sword)
- "_mediumMelee_sword01HB" (Ironbark Sword)
- "_mediumMelee_sword02"   (Gilded Sword)
- "_weapon_blade03"        (Slimecrust Blade, Iron Sword)
- "_weapon_blade03_alt00"  (Mithril Sword)
- "_weapon_blade05"        (Demicrypt Blade)
- "_weapon_blade05_alt00"  (Nethercrypt Blade)
- "_weapon_blade06"        (Coldgeist Blade)
- "_weapon_blade07"        (Serrated Blade)
- "_weapon_blade08"        (Valdur Blade)
- "_weapon_blade09"        (Firebreath Blade)
- "_weapon_blade10"        (Amberite Sword)
- "_weapon_blade11"        (Fier Blade)
```
</details>

#
### Maces
<details open>

```
- "_lightWeapon_mace01" (Dawn Mace)
- "_weapon_mace02"      (Nulrok Mace)
- "_weapon_mace03"      (Splitbark Club)
- "_weapon_mace04"      (Femur Club)
- "_weapon_mace05"      (Dense Mace)
```
</details>

#
### Greatblades
<details open>

```
- "axe_test"
- "_heavyWeapon_axe01"              (Deadwood Axe)
- "_heavyWeapon_axe01HB"            (Flipped version of _heavyWeapon_axe01)
- "_heavyWeapon_axe02"              (Dolkian's Axe)
- "_heavyWeapon_axe03"              (Ryzer Greataxe)
- "_axeHammer_04HB"                 (Coldgeist Punisher)
- "_axeHammer_04"                   (Mini Geist Scythe)
- "_geistScythe_big"                (Geist Scythe, Poltergeist Scythe)
- "_heavyWeapon_02"                 (Amberite Warstar)
- "_heavyWeapon_greatsword01"       (Stone Greatblade)
- "_heavyWeapon_greatsword01_alt00" (Mithril Greatsword)
- "_playerDeathKnightSword"         (Deathknight Runeblade)
```
</details>

#
### Hammers
<details open>

```
- "weaponhammerBasic"
- "_heavyWeapon_00"      (Quake Pummeler)
- "_heavyWeapon_01"      (Dense Hammer)
- "_heavyMelee_hammer01" (Wood Hammer)
- "_axeHammer_01"
- "_axeHammer_02"        (Crypt Pounder)
- "_axeHammer_03"        (Slimek Axehammer, Iron Axehammer)
```
</details>

#
### Polearms
<details open>

```
- "polearm_01"       (Wood Spear, Iron Spears)
- "polearm_02"       (Cryptsinge Halberd)
- "polearm_02_alt00" (Necroroyal Halberd)
- "polearm_02_alt01" (Mithril Halberd)
- "polearm_03"       (Serrated Spear)
- "polearm_04"       (Mekspear)
- "polearm_04_alt00" (Ragespear)
- "polearm_05"       (Cryotribe Spear, Flametribe Spear)
- "polearm_06"       (Nulrok Spear)
- "polearm_07"       (Dense Spear)
- "polearm_08"       (Amberite Halberd)
- "polearm_09"       (Sapphite Spear)
- "polearm_bardiche" (Sinner Bardiche)
```
</details>

#
### Katars
<details open>

```
- "_lightMelee_dagger01" (Wood Daggers)
- "katar_01"             (Slimecrust Katars, Cryptsinge Katars, Iron Katars)
- "katar_02"             (Runic Katars)
- "katar_03"             (Slimek Shivs, Deathgel Shivs, Hellsludge Shivs)
- "katar_04"             (Geistlord Claws, Frostbite Claws)
- "katar_06"             (Mithril Katars)
- "katar_07"             (Serrated Knuckles)
- "katar_08"             (Golemfist Katars)
- "katar_09"             (Rummok Bladerings)
- "katar_10"             (Dense Katars)
- "katar_11"             (Sapphite Katars)
```
</details>

#
### Bows
<details open>

```
- "bow_01"       (Wooden Bow, Iron Bow, Mithril Bow)
- "bow_02"       (Crypt Bow)
- "bow_02_alt00" (Necroroyal Bow)
- "bow_03"       (Mekspike Bow)
- 'bow_04"       (Menance Bow)
- "bow_05"       (Petrified Bow)
- "bow_05_alt00" (Coldgeist Bow)
- "bow_06"       (Serrated Longbow)
- "bow_07"       (Torrentius Longbow)
```
</details>

#
### Shotguns
<details open>

```
- "gun_00" (Magitek Burstgun)
- "gun_01" (Follycannon)
- "gun_02" (Amberite Boomstick)
```
</details>

#
### Scepters
<details open>

```
  - "_magicScepter_scepter01" (Wood Scepter)
  - "_scepter02"              (Splitbark Scepter, Iron Scepter)
  - "_scepter02_alt00"        (Mithril Scepter)
  - "_scepter03"              (Slime Diva Baton)
  - "_scepter04"              (Cryo and Pyre Cane)
  - "_scepter05"              (Marrow Bauble, Demicrypt Bauble, Nethercrypt Bauble)
  - "_scepter06"              (Aquapetal Staff, Flamepetal Staff)
  - "_scepter07"              (Wizwand)
  - "_scepter08"              (Voalstark Wand)
  - "_scepter09"              (Sapphite Scepter)
```
</details>

#
### Bells
<details open>

```
- "_bell_01" (Wooden and Iron Bells)
- "_bell_02" (Cryptcall Bell)
- "_bell_03" (Coldgeist Frostcaller)
- "_bell_04" (Mithril Bell)
- "_bell_05" (Colossus Tone)
- "_bell_06" (Sapphite Bell)
```
</details>