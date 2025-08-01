-- Modules/rangeweapons.lua

local Weapons = {}
local Functions = require("Utilities/functions")

function Weapons.init()
    local weaponEntries = {
        -- TECH
        { id = "Achilles",     base = "Preset_Achilles_Neon",     epicSC = 28, legendarySC = 43 },
        { id = "Burya",        base = "Preset_Burya_Neon",        epicSC = 26, legendarySC = 41 },
        { id = "Kenshin",      base = "Preset_Kenshin_Neon",      epicSC = 25, legendarySC = 40 },
        { id = "Nekomata",     base = "Preset_Nekomata_Neon",     epicSC = 30, legendarySC = 45 },
        { id = "Omaha",        base = "Preset_Omaha_Neon",        epicSC = 25, legendarySC = 40 },
        { id = "Quasar",       base = "Preset_Quasar_Neon",       epicSC = 33, legendarySC = 48 },
        { id = "Satara",       base = "Preset_Satara_Neon",       epicSC = 29, legendarySC = 44 },

        -- SMART
        { id = "Ashura",       base = "Preset_Ashura_Pimp",       epicSC = 29, legendarySC = 44 },
        { id = "Chao",         base = "Preset_Chao_Pimp",         epicSC = 25, legendarySC = 40 },
        { id = "Dian",         base = "Preset_Dian_Pimp",         epicSC = 26, legendarySC = 41 },
        { id = "Palica",       base = "Preset_Palica_Pimp",       epicSC = 28, legendarySC = 43 },
        { id = "Shingen",      base = "Preset_Shingen_Pimp",      epicSC = 28, legendarySC = 43 },
        { id = "Sidewinder",   base = "Preset_Sidewinder_Pimp",   epicSC = 27, legendarySC = 42 },
        { id = "Yukimura",     base = "Preset_Yukimura_Pimp",     epicSC = 26, legendarySC = 41 },
        { id = "Zhuo",         base = "Preset_Zhuo_Pimp",         epicSC = 35, legendarySC = 50 },

        -- POWER
        { id = "Ajax",         base = "Preset_Ajax_Military",     epicSC = 23, legendarySC = 38 },
        { id = "Carnage",      base = "Preset_Carnage_Military",  epicSC = 20, legendarySC = 35 },
        { id = "Copperhead",   base = "Preset_Copperhead_Military",epicSC = 18, legendarySC = 33 },
        { id = "Crusher",      base = "Preset_Crusher_Military",  epicSC = 20, legendarySC = 35 },
        { id = "Defender",     base = "Preset_Defender_Military", epicSC = 25, legendarySC = 40 },
        { id = "Grad",         base = "Preset_Grad_Military",     epicSC = 26, legendarySC = 41 },
        { id = "Igla",         base = "Preset_Igla_Military",     epicSC = 15, legendarySC = 30 },
        { id = "Lexington",    base = "Preset_Lexington_Military",epicSC = 17, legendarySC = 32 },
        { id = "Liberty",      base = "Preset_Liberty_Military",  epicSC = 18, legendarySC = 33 },
        { id = "Masamune",     base = "Preset_Masamune_Military", epicSC = 25, legendarySC = 40 },
        { id = "Nova",         base = "Preset_Nova_Military",     epicSC = 15, legendarySC = 30 },
        { id = "Nue",          base = "Preset_Nue_Military",      epicSC = 19, legendarySC = 34 },
        { id = "Overture",     base = "Preset_Overture_Military", epicSC = 21, legendarySC = 36 },
        { id = "Pulsar",       base = "Preset_Pulsar_Military",   epicSC = 17, legendarySC = 32 },
        { id = "Saratoga",     base = "Preset_Saratoga_Military", epicSC = 23, legendarySC = 38 },
        { id = "Sor22",        base = "Preset_Sor22_Military",    epicSC = 23, legendarySC = 38 },
        { id = "Tactician",    base = "Preset_Tactician_Military",epicSC = 20, legendarySC = 35 },
        { id = "Testera",      base = "Preset_Testera_Military",  epicSC = 22, legendarySC = 37 },
        { id = "Unity",        base = "Preset_Unity_Military",    epicSC = 18, legendarySC = 33 },
        { id = "Umbra",        base = "Preset_Umbra_Military",    epicSC = 20, legendarySC = 33 },
        { id = "Guillotine",   base = "Preset_Guillotine_Military",epicSC = 23, legendarySC = 35 }
    }

    for _, w in ipairs(weaponEntries) do
        Functions.createQualityVendorItem("VendorEpic" .. w.id, w.epicSC, "Items." .. w.base, "Epic")
        Functions.createQualityVendorItem("VendorLegendary" .. w.id, w.legendarySC, "Items." .. w.base, "Legendary")
    end
end

return Weapons
