# Consumables References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Proprties that only Consumables have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Consumables-have)
#
```jsonc
"food":          2             // Value for HB's custom "fullness" mechanic, which caps at 5 by default.
"cooldown":      7             // Cooldown between uses. Minimum of 1 second.
"_infiniteUses": true/false    // Makes the consumable infinitely usable.
"damage":        0             // Negative healing effect to replicate damage.
"usesound":      "MP3/OGG"     // On-use sound effect.
```
#
## "_consumableObject" cheatsheet
For showcases of the VFXs, check out [**HB Reference Items Pack**](https://thunderstore.io/c/atlyss/p/Catman232/HB_Reference_Items_Pack/).
```jsonc
"_consumableObject": "see below"    // On-use visual effect, including sounds.
```
<details open>

```
- "Nothing"
- "redDye"
- "orangeDye"
- "greenDye"
- "limeDye"
- "blueDye"
- "cyanDye"
- "yellowDye"
- "brownDye"
- "pinkDye"
- "purpleDye"
- "greyDye"
- "whiteDye"
- "blackDye"
- "healthConsumable"
- "manaConsumable"
- "staminaConsumable"
- "experienceConsumable"
- "skillScroll"
- "unlearn"
- "stun"
- "recovery"
- "siphonLeech"
- "legup"
- "alacrity"
- "alacrityEnd"
- "innerFocus"
- "innerFocusEnd"
- "sturdy"
- "taunt"
- "lifeTap"
- "stomp"
- "Blood Gush" (it is spaced)
- "rage"
- "venomShot"
- "KillerJab"
- "payday"
- "deviousSignet"
- "mistVeil"
- "crossFlash"
- "prism"
- "imbue"
- "haste"
- "genesis"
- "shadowWard"
```
</details>

#
## "condXname" cheatsheet
[Consumable Effects List](https://github.com/Catman-232/Homebrewery/wiki/Consumable-Effects-List)
```jsonc
// You can have five of these each.
"condXname": "see below"         // Not all conditions react to each property.
"condXduration": 0               // Modify effect duration.
"condXpower": 1                  // Modify condition strength.
"condXinterval": 0.0166666667    // Amount of time between each tick.
"condXdelayed": true/false       // Whether or not to delay the effect until the first tick.
```
### Effects
<details open>

"damage", "gravity", "speed" and "jump" use all modifiers.
```
- "removeall" — "clearall" — "clear" (None)
- "damage"
- "gash"  — "hurt"  (None)
- "cold" (None)
- "burn"  — "spicy" (None)
- "gravity"
- "speed" — "hyper"
- "jump"  — "superjump"
- "hide"  — "invis" - "invisible" (Duration)
- "drunk" (Power/Duration)
- "sober" (None)
```
</details>

#
### Poses
<details open>

"flip", "spin" and "roll" use all modifiers.
```
- "knockback" (Power)
- "fallforwards" (None)
- "fallbackwards" (None)
- "flip"
- "spin"
- "roll"
```
</details>

#
### Body
<details open>

Uses no modifiers except "flattened" (Duration).
```
- "rainbowhair"
- "rainbowfur"
- "rainbowmisc"
- "hairwash"
- "chestbinded"
- "boobson"
- "boobsoff"
- "flattened"
```
</details>

#
### Proportions
<details open>

Uses all modifiers.
```
- "boobs"  — "megamilk"
- "butt"   — "cakedup"
- "belly"  — "muffintop"
- "size"   — "heightwidthdepth"
- "height" — "elongate"
- "heightwidth"
- "heightdepth"
- "width" — "wideload"
- "girth" — "widthdepth"
- "depth"
- "arms"
- "torso"
- "voicepitch"
```
</details>

#
### Emotes
<details open>

Uses no modifiers.
```
- "sit"   — "sitdown"
- "sit2"
- "dance" — "bustamove"
- "point"
- "ponder"
- "think"
- "taunt"
- "nod"
- "shrug"
- "clap"
```
</details>

#
### Expressions
<details open>

Only uses Duration. 0 makes them "permanent".
```
- "eyescenter"
- "eyesclosed"
- "eyesup"
- "eyesdown"
- "eyesleft"
- "eyesright"
- "eyespissed"
- "eyeshurt"
- "mouthopen"
- "mouthclosed"
```
</details>