-- Modules/weaponmods.lua

local WeaponMods = {}
local Functions = require("Utilities/functions")

function WeaponMods.init()
    local mods = {
        -- Common Mods
        { id = "Crunch",         item = "SimpleWeaponMod01", sc = 1 },
        { id = "Penetrator",     item = "SimpleWeaponMod02", sc = 1 },
        { id = "Pacifier",       item = "SimpleWeaponMod03", sc = 1 },
        { id = "CombatAmplifier",item = "SimpleWeaponMod04", sc = 1 },
        { id = "Pulverize",      item = "SimpleWeaponMod12", sc = 1 },
        { id = "Countermass",    item = "SimpleWeaponMod11", sc = 25 },
        { id = "Pax",            item = "SimpleWeaponMod17", sc = 1 },

        -- Faction Mods
        { id = "Vendetta",       item = "ValentinosRangedWeaponMod", sc = 21 },
        { id = "Phantom",        item = "WraithsRangedWeaponMod", sc = 18 },
        { id = "NeonArrow",      item = "TygerRangedWeaponMod", sc = 15 },

        { id = "Scourge",        item = "WraithsMeleeWeaponMod", sc = 15 },
        { id = "Kunai",          item = "ArasakaMeleeWeaponMod", sc = 15 },
        { id = "WhiteKnuckled",  item = "TygerMeleeWeaponMod", sc = 15 },
        { id = "ColdShoulder",   item = "ValentinosMeleeWeaponMod", sc = 15 },

        -- Scopes (Short, Long, Sniper)
        { id = "ScopeLong1",     item = "w_att_scope_long_01", sc = 10 },
        { id = "ScopeLong2",     item = "w_att_scope_long_02", sc = 10 },
        { id = "ScopeLong3",     item = "w_att_scope_long_03", sc = 12 },
        { id = "ScopeShort1",    item = "w_att_scope_short_01", sc = 10 },
        { id = "ScopeShort2",    item = "w_att_scope_short_02", sc = 10 },
        { id = "ScopeShort3",    item = "w_att_scope_short_03", sc = 12 },
        { id = "ScopeSniper1",   item = "w_att_scope_sniper_01", sc = 15 },
        { id = "ScopeSniper2",   item = "w_att_scope_sniper_02", sc = 15 },
        { id = "ScopeSniper3",   item = "w_att_scope_sniper_03", sc = 15 },

        -- Muzzle Brakes / Silencers
        { id = "MuzzleBrake1",   item = "w_muzzle_brake_01", sc = 10 },
        { id = "MuzzleBrake2",   item = "w_muzzle_brake_02", sc = 10 },
        { id = "MuzzleBrake3",   item = "w_muzzle_brake_03", sc = 12 },
        { id = "MuzzleBrake5",   item = "w_muzzle_brake_05", sc = 15 },
        { id = "MuzzleBrake6",   item = "w_muzzle_brake_06", sc = 15 },
        { id = "MuzzleBrake10",  item = "w_muzzle_brake_10", sc = 18 },
        { id = "MuzzleBrake11",  item = "w_muzzle_brake_11", sc = 18 }
    }

    for _, mod in ipairs(mods) do
        Functions.createVendorItem("Vendor" .. mod.id, mod.sc, "Items." .. mod.item)
    end
end

return WeaponMods
