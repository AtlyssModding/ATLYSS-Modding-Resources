# Weapon References
Up to date as of May 28th 2026, Atlyss 12026.a3, Homebrewery 4.7.30.\
Provided by [**Newt**](https://thunderstore.io/c/atlyss/p/newt5/), edited by ZeinaKC.
#
```
"weaponType": "see below",
- Unarmed
- Strength : Sword   | Mace | Greatblade | Hammer | Polearm
- Dexterity: Katars  | Bow  | Shotgun
- Magic    : Scepter | Bell
```
#
```
"_weaponHoldClipIndex": 0 - 2	        // THIS IS OLD. Use it for converting old params.
- (weaponType is "Unarmed")             -> 0 is "Unarmed"
- (weaponType is "Dexterity_Melee_2H")  -> 0 is "Katars"
- (weaponType is "Strength_Melee_1H")   -> 0 is "Blade",  1 is "Mace",
- (weaponType is "Strength_Melee_2H")   -> 0 is "Hammer", 1 is "Greatblade", 2 is "Polearm"
- (weaponType is "Dexterity_Ranged_2H") -> 0 is "Bow",    1 is "Shotgun"
- (weaponType is "Mind_Ranged_1H")      -> 0 is "Scepter"
- (weaponType is "Mind_Ranged_2H")      -> 0 is "Bell"
```
#
"_weaponProjectileSet": "see below",
```
- Arrows: "arrow" - "arrow_pierce" - "arrow_water" - "arrow_nature" - "arrow_torrentius" - "arrow_shadow"

- Bullets: "gun_00" - "magictekBurstGun" - "follycannon"

- Scepters: "scepter(ele_normal)" - "slmDivaBaton" - "scepter(wizscepter)" - "scepter(sapphite)" - "scepter(ele_fire)_00" - "scepter(ele_fire)_01" - "scepter(ele_water)_00" - "scepter(voalstark)" - "scepter(ele_shadow)" - "scepter(ele_shadow)_alt00"

- Bells: "bell_normal" - "bell_sapphite" - "bell_coldgeist" - "bell_colossusTone" - "bell_shadow"
```
#
```
"_weaponDamage": 1 - 100    // vanilla max: Follycannon at 56.
"_damageBonus":  1 - 100    // vanilla max: Follycannon at 16. weaponDamage + damageBonus + 3 = Value.
```
#
```
"_combatElement": -1 - 6
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
```
// Comments are for vanilla maximums.
"_statStruct": 
  {
    "_defense": int,                // 5
    "_magicDefense": int,
    "_maxHealth": int,
    "_maxMana": int,                // 8
    "_maxStamina": int,             // 12
    "_attackPower": int,            // 18
    "_magicPower": int,             // 15
    "_dexPower": int,               // 21
    "_criticalRate": float,         // 0.045 (4.5%)
    "_magicCriticalRate": float,    // 0.025 (2.5%)
    "_evasion": float,              // 0.028 (2.8%)
    "_fireResist": int,
    "_waterResist": int,
    "_natureResist": int,
    "_earthResist": int,	
    "_holyResist": int,
    "_shadowResist": int
  },
```
#
```
"_scriptableCondition": "see below",
- "Gash"    (3 Bleed damage every ~0.4sec for 5 seconds or 12 ticks)
- "Hex"     (-15% Movespeed and -5 atk/dex/mag power for 5 seconds)
- "Brittle" (-5 Defense for 5 seconds)
- "Burn"    (5 Fire damagee per 2.5sec for 5 seconds or 3 ticks)
- "Cold"    (-15% Movespeed and -3 Water Resistance for 5 seconds) 
- "Poison"  (3 Poison damage per 2.5sec for 5 seconds or 3 ticks)
```
#
```
"_chance": 0.001 (0.1%) - 0.12 (12%)    // On-hit chance for condition to apply, "Burn" and "Cold" have 0.2 (20%) maximum instead.
```
#
```
"_bonusPower": 0,    // Modify condition strength. 
- 0 is default, -3 is min, max values are:
  - "Gash"   : 0
  - "Hex"    : 0
  - "Brittle": 0
  - "Burn"   : 3
  - "Cold"   : 7
  - "Poison" : 5
```
#
```
"_bonusDuration": 0,    // Modify effect duration. 
- 0 is default, -3 is min, max values are:
  - "Gash"   : 0
  - "Hex"    : 5
  - "Brittle": 7
  - "Burn"   : 2
  - "Cold"   : 2
  - "Poison" : 2
```
#
```
"_itemRarity": "0",    // Accepts text names and number values. Can't enchant Exotic items.
- Common: 0 OR "Common"
- Rare  : 1 OR "Rare"
- Exotic: 2 OR "Exotic"
```
#
## "_weaponProjectileSet" cheat sheet
```
- "arrow"                     (Used by: Wooden Bow, Crypt Bow, Demicrypt Bow, Iron Bow, Mekspike Bow, Necroroyal Bow, Mithril Bow)
- "arrow_pierce"              (Used by: Serrated Longbow)
- "arrow_water"               (Used by: Coldgeist Bow)
- "arrow_nature"              (Used by: Menace Bow)
- "arrow_torrentius"          (Used by: Torrentius Longbow)
- "arrow_shadow"              (Used by: Petrified Bow)
- "gun_00"                    (Used by: Amberite Boomstick)
- "magitekBurstGun"           (Used by: Magitek Burstgun)
- "follycannon"               (Used by: Follycannon)
- "scepter(ele_normal)"       (Used by: Wood Scepter, Splitbark Scepter, Iron Scepter, Mithril Scepter)
- "slmDivaBaton"              (Used by: Slime Diva Baton)
- "scepter(wizscepter)"       (Used by: Wizwand)
- "scepter(sapphite)"         (Used by: Sapphite Scepter)
- "scepter(ele_fire)_00"      (Used by: Pyre Cane)
- "scepter(ele_fire)_01"      (Used by: Flamepetal Staff)
- "scepter(ele_water)_00"     (Used by: Cryo Cane)
- "scepter(ele_water)_01"     (Used by: Aquapetal Staff)
- "scepter(voalstark)"        (Used by: Voalstark Wand)
- "scepter(ele_shadow)"       (Used by: Marrow Bauble, Demicrypt Bauble)
- "scepter(ele_shadow)_alt00" (Used by: Nethercrypt Bauble)
- "bell_normal"               (Used by: Wood Bell, Iron Bell, Mithril Bell)
- "bell_sapphite"             (Used by: Sapphite Bell)
- "bell_coldgeist"            (Used by: Coldgeist Frostcaller)
- "bell_colossusTone"         (Used by: Colossus Tone)
- "bell_shadow"               (Used by: Cryptcall Bell)
```
#
## "weaponMesh" cheat sheet
- **Swords**
```
- "sword_test"
- "_lightWeapon_blade04"   (Used by: Rude Blade, Vile Blade)
- "_mediumMelee_sword01"   (Used by: Wood Sword)
- "_mediumMelee_sword01HB" (Used by: Ironbark Sword)
- "_mediumMelee_sword02"   (Used by: Gilded Sword)
- "_weapon_blade03"        (Used by: Slimecrust Blade, Iron Sword)
- "_weapon_blade03_alt00"  (Used by: Mithril Sword)
- "_weapon_blade05"        (Used by: Demicrypt Blade)
- "_weapon_blade05_alt00"  (Used by: Nethercrypt Blade)
- "_weapon_blade06"        (Used by: Coldgeist Blade)
- "_weapon_blade07"        (Used by: Serrated Blade)
- "_weapon_blade08"        (Used by: Valdur Blade)
- "_weapon_blade09"        (Used by: Firebreath Blade)
- "_weapon_blade10"        (Used by: Amberite Sword)
- "_weapon_blade11"        (Used by: Fier Blade)
```
- **Maces**
```
- "_lightWeapon_mace01" (Used by: Dawn Mace)
- "_weapon_mace02"      (Used by: Nulrok Mace)
- "_weapon_mace03"      (Used by: Splitbark Club)
- "_weapon_mace04"      (Used by: Femur Club)
- "_weapon_mace05"      (Used by: Dense Mace)
```
- **Greatblades**
```
- "axe_test"
- "_heavyWeapon_axe01"              (Used by: Deadwood Axe)
- "_heavyWeapon_axe01HB"            (Seems to be a flipped version of Deadwood Axe)
- "_heavyWeapon_axe02"              (Used by: Dolkian's Axe)
- "_heavyWeapon_axe03"              (Used by: Ryzer Greataxe)
- "_axeHammer_04HB"                 (Used by: Coldgeist Punisher)
- "_axeHammer_04"                   (Used by: Mini Geist Scythe)
- "_heavyWeapon_02"                 (Used by: Amberite Warstar)
- "_geistScythe_big"                (Used by: Geist Scythe, Poltergeist Scythe)
- "_heavyWeapon_greatsword01"       (Used by: Stone Greatblade)
- "_heavyWeapon_greatsword01_alt00" (Used by: Mithril Greatsword)
- "_playerDeathKnightSword"         (Used by: Deathknight Runeblade)
```
- **Hammers**
```
- "weaponhammerBasic"
- "_heavyWeapon_00"      (Used by: Quake Pummeler)
- "_heavyWeapon_01"      (Used by: Dense Hammer)
- "_heavyMelee_hammer01" (Used by: Wood Hammer)
- "_axeHammer_01"
- "_axeHammer_02"        (Used by: Crypt Pounder)
- "_axeHammer_03"        (Used by: Slimek Axehammer, Iron Axehammer)
```
- **Polearms**
```
- "polearm_01"       (Used by: Wood Spear, Iron Spears)
- "polearm_02"       (Used by: Cryptsinge Halberd)
- "polearm_02_alt00" (Used by: Necroroyal Halberd)
- "polearm_02_alt01" (Used by: Mithril Halberd)
- "polearm_03"       (Used by: Serrated Spear)
- "polearm_04"       (Used by: Mekspear)
- "polearm_04_alt00" (Used by: Ragespear)
- "polearm_05"       (Used by: Cryotribe Spear, Flametribe Spear)
- "polearm_06"       (Used by: Nulrok Spear)
- "polearm_07"       (Used by: Dense Spear)
- "polearm_08"       (Used by: Amberite Halberd)
- "polearm_09"       (Used by: Sapphite Spear)
- "polearm_bardiche" (Used by: Sinner Bardiche)
```
- **Katars**
```
- "_lightMelee_dagger01" (Used by: Wood Daggers)
- "katar_01"             (Used by: Slimecrust Katars, Cryptsinge Katars, Iron Katars)
- "katar_02"             (Used by: Runic Katars)
- "katar_03"             (Used by: Slimek Shivs, Deathgel Shivs, Hellsludge Shivs)
- "katar_04"             (Used by: Geistlord Claws, Frostbite Claws)
- "katar_06"             (Used by: Mithril Katars)
- "katar_07"             (Used by: Serrated Knuckles)
- "katar_08"             (Used by: Golemfist Katars)
- "katar_09"             (Used by: Rummok Bladerings)
- "katar_10"             (Used by: Dense Katars)
- "katar_11"             (Used by: Sapphite Katars)
```
- **Bows**
```
- "bow_01"       (Used by: Wooden Bow, Iron Bow, Mithril Bow)
- "bow_02"       (Used by: Crypt Bow)
- "bow_02_alt00" (Used by: Necroroyal Bow)
- "bow_03"       (Used by: Mekspike Bow)
- 'bow_04"       (Used by: Menance Bow)
- "bow_05"       (Used by: Petrified Bow)
- "bow_05_alt00" (Used by: Coldgeist Bow)
- "bow_06"       (Used by: Serrated Longbow)
- "bow_07"       (Used by: Torrentius Longbow)
```
- **Shotguns**
```
- "gun_00" (Used by: Magitek Burstgun)
- "gun_01" (Used by: Follycannon)
- "gun_02" (Used by: Amberite Boomstick)
```
- **Scepters**
```
  - "_magicScepter_scepter01" (Used by: Wood Scepter)
  - "_scepter02"              (Used by: Splitbark Scepter, Iron Scepter)
  - "_scepter02_alt00"        (Used by: Mithril Scepter)
  - "_scepter03"              (Used by: Slime Diva Baton)
  - "_scepter04"              (Used by: Cryo and Pyre Cane)
  - "_scepter05"              (Used by: Marrow Bauble, Demicrypt Bauble, Nethercrypt Bauble)
  - "_scepter06"              (Used by: Aquapetal Staff, Flamepetal Staff)
  - "_scepter07"              (Used by: Wizwand)
  - "_scepter08"              (Used by: Voalstark Wand)
  - "_scepter09"              (Used by: Sapphite Scepter)
```
- **Bells**
```
- "_bell_01" (Used by: Wooden and Iron Bells)
- "_bell_02" (Used by: Cryptcall Bell)
- "_bell_03" (Used by: Coldgeist Frostcaller)
- "_bell_04" (Used by: Mithril Bell)
- "_bell_05" (Used by: Colossus Tone)
- "_bell_06" (Used by: Sapphite Bell)
```