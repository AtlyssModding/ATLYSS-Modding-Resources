using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEngine;
internal static class Dump {
internal static void Dumper() {
    IEnumerable<ScriptableItem> VanillaItems = GameManager._current._cachedScriptableItems.Values.Where(i => i.GetInstanceID() >= 0);
    DirectoryInfo dataPath = new DirectoryInfo(Application.dataPath);
    DirectoryInfo ScriptableF = dataPath.CreateSubdirectory("Scriptable");
    Dictionary<Type, DirectoryInfo> Scriptables = new Dictionary<Type, DirectoryInfo>(){
    {typeof(ScriptableArmorDye), ScriptableF.CreateSubdirectory("ArmorDye")},
    {typeof(ScriptableCape), ScriptableF.CreateSubdirectory("Cape")},
    {typeof(ScriptableChestpiece), ScriptableF.CreateSubdirectory("Chestpiece")},
    {typeof(ScriptableHelm), ScriptableF.CreateSubdirectory("Helm")},
    {typeof(ScriptableLeggings), ScriptableF.CreateSubdirectory("Leggings")},
    {typeof(ScriptableRing), ScriptableF.CreateSubdirectory("Ring")},
    {typeof(ScriptableShield), ScriptableF.CreateSubdirectory("Shield")},
    {typeof(ScriptableStatusConsumable), ScriptableF.CreateSubdirectory("StatusConsumable")},
    {typeof(ScriptableTradeItem), ScriptableF.CreateSubdirectory("TradeItem")},
    {typeof(ScriptableWeapon), ScriptableF.CreateSubdirectory("Weapon")}};
    foreach (ScriptableItem i in VanillaItems) {
        List<string> Lines = new List<string>();
        Type itemtype = i.GetType();
        if (!Scriptables.TryGetValue(itemtype, out DirectoryInfo fold)) { continue; }
        //ScriptableItem - TradeItem has no other properties of its own so it can exit after this
        Lines.Add("- ScriptableItem -");
        Lines.Add($"name : {i.name}");
        Lines.Add($"_itemName : {i._itemName}");
        Lines.Add($"_itemDescription : {i._itemDescription}");
        Lines.Add($"_destroyOnDrop : {i._destroyOnDrop}");
        Lines.Add($"_vendorCost : {i._vendorCost}");
        Lines.Add($"_maxStackAmount : {i._maxStackAmount}");
        Lines.Add($"_itemIcon : {i._itemIcon}");
        Lines.Add($"_itemRarity : {i._itemRarity}");
        if (itemtype == typeof(ScriptableTradeItem)){_ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);continue;}
        //ScriptableConsumable
        if (itemtype == typeof(ScriptableArmorDye) || itemtype == typeof(ScriptableStatusConsumable)) {
            ScriptableConsumable i2 = (ScriptableConsumable)i;
            Lines.Add("\n- ScriptableConsumable -");
            Lines.Add($"_consumableCooldown : {i2._consumableCooldown}");
            Lines.Add($"_consumableObject : {i2._consumableObject}");
            Lines.Add($"_useOnlyInTown : {i2._useOnlyInTown}");
            Lines.Add($"_unperishable : {i2._unperishable}");
            //ScriptableStatusConsumable
            if (itemtype == typeof(ScriptableStatusConsumable)) {
                ScriptableStatusConsumable i3 = (ScriptableStatusConsumable)i2;
                Lines.Add("\n- ScriptableStatusConsumable -");
                Lines.Add($"_healthApply : {i3._healthApply}");
                Lines.Add($"_manaApply : {i3._manaApply}");
                Lines.Add($"_staminaApply : {i3._staminaApply}");
                Lines.Add($"_expGain : {i3._expGain}");
                Lines.Add($"_resetSkillPoints : {i3._resetSkillPoints}");
                Lines.Add($"_resetAttributePoints : {i3._resetAttributePoints}");
                _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                continue;
            }
            //ScriptableArmorDye
            if (itemtype == typeof(ScriptableArmorDye)) {
                ScriptableArmorDye i3 = (ScriptableArmorDye)i2;
                Lines.Add("\n- ScriptableArmorDye -");
                Lines.Add($"_particleColoration : {ColorUtility.ToHtmlStringRGBA(i3._particleColoration)}");
                Lines.Add("_dyeParams : {");
                Lines.Add($"    _hue : {i3._dyeParams._hue}");
                Lines.Add($"    _saturation : {i3._dyeParams._saturation}");
                Lines.Add($"    _brightness : {i3._dyeParams._brightness}");
                Lines.Add($"    _contrast : {i3._dyeParams._contrast}");
                Lines.Add("}");
                _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
            }
        } else {
            //ScriptableEquipment
            ScriptableEquipment i2 = (ScriptableEquipment)i;
            Lines.Add("\n- ScriptableEquipment -");
            Lines.Add($"_equipmentLevel : {i2._equipmentLevel}");
            Lines.Add($"_classRequirement : {i2._classRequirement}");
            Lines.Add("_statArray : {");
            Lines.Add($"    _maxHealth : {i2._statArray._maxHealth}");
            Lines.Add($"    _maxMana : {i2._statArray._maxMana}");
            Lines.Add($"    _maxStamina : {i2._statArray._maxStamina}");
            Lines.Add($"    _experience : {i2._statArray._experience}");
            Lines.Add($"    _attackPower : {i2._statArray._attackPower}");
            Lines.Add($"    _magicPower : {i2._statArray._magicPower}");
            Lines.Add($"    _dexPower : {i2._statArray._dexPower}");
            Lines.Add($"    _criticalRate : {i2._statArray._criticalRate}");
            Lines.Add($"    _magicCriticalRate : {i2._statArray._magicCriticalRate}");
            Lines.Add($"    _evasion : {i2._statArray._evasion}");
            Lines.Add($"    _defense : {i2._statArray._defense}");
            Lines.Add($"    _magicDefense : {i2._statArray._magicDefense}");
            Lines.Add($"    _fireResist : {i2._statArray._fireResist}");
            Lines.Add($"    _waterResist : {i2._statArray._waterResist}");
            Lines.Add($"    _natureResist : {i2._statArray._natureResist}");
            Lines.Add($"    _earthResist : {i2._statArray._earthResist}");
            Lines.Add($"    _holyResist : {i2._statArray._holyResist}");
            Lines.Add($"    _shadowResist : {i2._statArray._shadowResist}");
            Lines.Add("}");
            if (i2._statModifierCost != null) {
                Lines.Add("_statModifierCost : {");
                Lines.Add($"    _scriptItem : {i2._statModifierCost._scriptItem}");
                Lines.Add($"    _scriptItemQuantity : {i2._statModifierCost._scriptItemQuantity}");
                Lines.Add("}");
            }
            //ScriptableArmor - Ring has no other properties of its own so it can exit after this
            if (itemtype == typeof(ScriptableCape) || itemtype == typeof(ScriptableChestpiece) || itemtype == typeof(ScriptableHelm) || itemtype == typeof(ScriptableLeggings) || itemtype == typeof(ScriptableRing)) {
                ScriptableArmor i3 = (ScriptableArmor)i2;
                Lines.Add("\n- ScriptableArmor -");
                Lines.Add($"_canDyeArmor : {i3._canDyeArmor}");
                Lines.Add("_colorAdjustParams : {");
                Lines.Add($"    _hue : {i3._colorAdjustParams._hue}");
                Lines.Add($"    _saturation : {i3._colorAdjustParams._saturation}");
                Lines.Add($"    _brightness : {i3._colorAdjustParams._brightness}");
                Lines.Add($"    _contrast : {i3._colorAdjustParams._contrast}");
                Lines.Add("}");
                Lines.Add($"_armorTexture : {i3._armorTexture}");
                if (itemtype == typeof(ScriptableRing)) {_ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);continue;}
                //ScriptableCape
                if (itemtype == typeof(ScriptableCape)) {
                    ScriptableCape i4 = (ScriptableCape)i3;
                    Lines.Add("\n- ScriptableCape -");
                    Lines.Add($"_capeMesh : {i4._capeMesh}");
                    _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                    continue;
                }
                //ScriptableChestpiece
                if (itemtype == typeof(ScriptableChestpiece)) {
                    ScriptableChestpiece i4 = (ScriptableChestpiece)i3;
                    Lines.Add("\n- ScriptableChestpiece -");
                    Lines.Add($"_lockBoobs : {i4._lockBoobs}");
                    Lines.Add($"_disableJiggleBoobBones : {i4._disableJiggleBoobBones}");
                    Lines.Add($"_textureArms : {i4._textureArms}");
                    Lines.Add($"_legOverlayTexture : {i4._legOverlayTexture}");
                    Lines.Add($"_boobOverrideTexture : {i4._boobOverrideTexture}");
                    Lines.Add($"_neckCollarMesh : {i4._neckCollarMesh}");
                    Lines.Add($"_neckCollarTexture : {i4._neckCollarTexture}");
                    Lines.Add($"_chestRenderDisplay : {i4._chestRenderDisplay}");
                    Lines.Add($"_chestRenderTexture : {i4._chestRenderTexture}");
                    Lines.Add($"_chestRenderBoobTexture : {i4._chestRenderBoobTexture}");
                    Lines.Add($"_robeSkirtRender : {i4._robeSkirtRender}");
                    Lines.Add($"_robeSkirtTexture : {i4._robeSkirtTexture}");
                    Lines.Add($"_hipMeshDisplay : {i4._hipMeshDisplay}");
                    Lines.Add($"_hipMeshTexture : {i4._hipMeshTexture}");
                    Lines.Add($"_armCuffRender : {i4._armCuffRender}");
                    Lines.Add($"_shoulderpadMesh : {i4._shoulderpadMesh}");
                    Lines.Add($"_shoulderpadTexture : {i4._shoulderpadTexture}");
                    Lines.Add($"_shoulderPadDisplayType : {i4._shoulderPadDisplayType}");
                    _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                    continue;
                }
                //ScriptableHelm
                if (itemtype == typeof(ScriptableHelm)) {
                    ScriptableHelm i4 = (ScriptableHelm)i3;
                    Lines.Add("\n- ScriptableHelm -");
                    Lines.Add($"_blendHelmValue : {i4._blendHelmValue}");
                    Lines.Add($"_useHelmHairDisplay : {i4._useHelmHairDisplay}");
                    Lines.Add($"_hideEars : {i4._hideEars}");
                    Lines.Add($"_hideMisc : {i4._hideMisc}");
                    Lines.Add($"_isFullHelm : {i4._isFullHelm}");
                    Lines.Add($"_helmRender : {i4._helmRender}");
                    Lines.Add($"_helmOverrideMesh : {i4._helmOverrideMesh}");
                    _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                    continue;
                }
                //ScriptableLeggings
                if (itemtype == typeof(ScriptableLeggings)) {
                    ScriptableLeggings i4 = (ScriptableLeggings)i3;
                    Lines.Add("\n- ScriptableLeggings -");
                    Lines.Add($"_textureUpperLegOnly : {i4._textureUpperLegOnly}");
                    Lines.Add($"_textureFeet : {i4._textureFeet}");
                    Lines.Add($"_legPieceRender_01 : {i4._legPieceRender_01}");
                    Lines.Add($"_legPieceTexture_01 : {i4._legPieceTexture_01}");
                    Lines.Add($"_legPieceRender_02 : {i4._legPieceRender_02}");
                    Lines.Add($"_legPieceTexture_02 : {i4._legPieceTexture_02}");
                    Lines.Add($"_legPieceRender_03 : {i4._legPieceRender_03}");
                    Lines.Add($"_legPieceTexture_03 : {i4._legPieceTexture_03}");
                    Lines.Add($"_legPieceRender_04 : {i4._legPieceRender_04}");
                    Lines.Add($"_legPieceTexture_04 : {i4._legPieceTexture_04}");
                    _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                    continue;
                }
            }
            //ScriptableShield
            if (itemtype == typeof(ScriptableShield)) {
                ScriptableShield i3 = (ScriptableShield)i2;
                Lines.Add("\n- ScriptableShield -");
                Lines.Add($"_shieldMesh : {i3._shieldMesh}");
                Lines.Add($"_shieldTexture : {i3._shieldTexture}");
                Lines.Add("_textureColorAdjust : {");
                Lines.Add($"    _hue : {i3._textureColorAdjust._hue}");
                Lines.Add($"    _saturation : {i3._textureColorAdjust._saturation}");
                Lines.Add($"    _brightness : {i3._textureColorAdjust._brightness}");
                Lines.Add($"    _contrast : {i3._textureColorAdjust._contrast}");
                Lines.Add("}");
                _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
                continue;
            }
            //ScriptableWeapon
            if (itemtype == typeof(ScriptableWeapon)) {
                ScriptableWeapon i3 = (ScriptableWeapon)i2;
                Lines.Add("\n- ScriptableWeapon -");
                Lines.Add($"weaponType : {i3.weaponType._weaponTypeClassTag}");
                if (i3._combatElement) {
                    Lines.Add($"_combatElement : {i3._combatElement._elementName} - ID: {i3._combatElement._elementID}");
                }
                if (!i3._combatElement) {
                    Lines.Add("_combatElement : None");
                }
                Lines.Add($"_weaponProjectileSet : {i3._weaponProjectileSet}");
                Lines.Add($"_weaponDamage : {i3._weaponDamage}");
                Lines.Add($"_damageBonus : {i3._damageBonus}");
                Lines.Add($"weaponTexture : {i3.weaponTexture}");
                Lines.Add($"weaponMesh : {i3.weaponMesh}");
                Lines.Add($"trailColors : #{ColorUtility.ToHtmlStringRGBA(i3.trailColors[0])} & #{ColorUtility.ToHtmlStringRGBA(i3.trailColors[1])}");
                Lines.Add("_textureColorAdjust : {");
                Lines.Add($"    _hue : {i3._textureColorAdjust._hue}");
                Lines.Add($"    _saturation : {i3._textureColorAdjust._saturation}");
                Lines.Add($"    _brightness : {i3._textureColorAdjust._brightness}");
                Lines.Add($"    _contrast : {i3._textureColorAdjust._contrast}");
                Lines.Add("}");
                Lines.Add($"_weaponTakeOutSfxIndex : {i3._weaponTakeOutSfxIndex}");
                Lines.Add($"_setWeaponTakeOutSfx : {i3._setWeaponTakeOutSfx}");
                Lines.Add($"_weaponSwingSfxIndex : {i3._weaponSwingSfxIndex}");
                Lines.Add($"_setWeaponSwingSfx : {i3._setWeaponSwingSfx}");
                _ = File.WriteAllLinesAsync(Path.Combine(fold.FullName,$"{i._itemName}.txt"),Lines);
            }
        }
    }
}
}