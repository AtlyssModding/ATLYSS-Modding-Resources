# Dye References
### Up-to-Dateness
- **Date:** October 8th 2026
- **ATLYSS:** 12026.a3
- **Homebrewery:** 4.7.40

For more information: [Proprties that only Dyes have](https://github.com/Catman-232/Homebrewery/wiki/Properties-that-only-Dyes-have)
#
```jsonc
"_dyeParams":
{
  "_hue":        0.0,    // -360 — 360. Colour value.
  "_saturation": 1.0,    // 0  — 2. Colour intensity value.
  "_brightness": 0.0,    // -1 — 1. Darkness to Lightness value.
  "_contrast":   1.0     // 0  — 2. Value for distinguishing colours.
}
```
`_consumableObject` from [Consumables](../Homebrewery/Item%20Templates/7-Consumable%20References.md#_consumableobject-cheatsheet) applies here too!
#
## Dyes Cheatsheet
<details open>

### Red
<sup>Reduce saturation to 1.35 for OG Red Dye.</sup>
```json
"_dyeParams":
{
  "_hue": -107,
  "_saturation": 2,
  "_brightness": 0,
  "_contrast": 1
}
```
#
### Orange
```json
"_dyeParams":
{
  "_hue": -84,
  "_saturation": 2,
  "_brightness": 0,
  "_contrast": 1.25
}
```
#
### Green
<sup>Reduce saturation to 1 for OG Green Dye.</sup>
```json
"_dyeParams":
{
  "_hue": 0,
  "_saturation": 1.5,
  "_brightness": 0.08,
  "_contrast": 1
}
```
#
### Lime
```json
"_dyeParams":
{
  "_hue": 327,
  "_saturation": 1.35,
  "_brightness": 0,
  "_contrast": 1
}
```
#
### Blue
```json
"_dyeParams":
{
  "_hue": 86,
  "_saturation": 2,
  "_brightness": 0.1,
  "_contrast": 1
}
```
#
### Cyan
```json
"_dyeParams":
{
  "_hue": 59,
  "_saturation": 2,
  "_brightness": 0.15,
  "_contrast": 1
}
```
#
### Yellow
```json
"_dyeParams":
{
  "_hue": -64,
  "_saturation": 1.8,
  "_brightness": 0.0,
  "_contrast": 1.15
}
```
#
### Brown
```json
"_dyeParams":
{
  "_hue": -86,
  "_saturation": 0.612,
  "_brightness": -0.051,
  "_contrast": 1.701
}
```
#
### Pink
```json
"_dyeParams":
{
  "_hue": -132,
  "_saturation": 2,
  "_brightness": 0.1,
  "_contrast": 1
}
```
#
### Purple
```json
"_dyeParams":
{
  "_hue": 155,
  "_saturation": 1.3,
  "_brightness": 0,
  "_contrast": 1
}
```
#
### Grey
```json
"_dyeParams":
{
  "_hue": 0,
  "_saturation": 0,
  "_brightness": 0.08,
  "_contrast": 1
}
```
#
### White
```json
"_dyeParams":
{
  "_hue": 0,
  "_saturation": 0,
  "_brightness": 0.2,
  "_contrast": 2
}
```
#
### Black
```json
"_dyeParams":
{
  "_hue": 84,
  "_saturation": 0.15,
  "_brightness": -0.25,
  "_contrast": 1.5
}
```
#
### OG Black
```json
"_dyeParams":
{
  "_hue": 0,
  "_saturation": 0,
  "_brightness": -0.5,
  "_contrast": 1.5
}
```
</details>