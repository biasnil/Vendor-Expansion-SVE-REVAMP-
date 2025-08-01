-- Modules/meleeweapons.lua

local MeleeWeapons = {}
local Functions = require("Utilities/functions")

function MeleeWeapons.init()
    local meleeEntries = {
        { id = "BaseballBat",     base = "Preset_Baseball_Bat_Default",     epicSC = 18, legendarySC = 33 },
        { id = "ButchersKnife",   base = "Preset_Butchers_Knife_Default",   epicSC = 13, legendarySC = 28 },
        { id = "ChefsKnife",      base = "Preset_Chefs_Knife_Default",      epicSC = 12, legendarySC = 27 },
        { id = "Crowbar",         base = "Preset_Crowbar_Default",          epicSC = 12, legendarySC = 27 },
        { id = "Hammer",          base = "Preset_Hammer_Default",           epicSC = 22, legendarySC = 37 },
        { id = "IronPipe",        base = "Preset_Iron_Pipe_Default",        epicSC = 12, legendarySC = 27 },
        { id = "Kanabo",          base = "Preset_Kanabo_Default",           epicSC = 18, legendarySC = 33 },
        { id = "Katana",          base = "Preset_Katana_Default",           epicSC = 22, legendarySC = 37 },
        { id = "Knife",           base = "Preset_Knife_Default",            epicSC = 19, legendarySC = 34 },
        { id = "Kukri",           base = "Preset_Kukri_Default",            epicSC = 15, legendarySC = 30 },
        { id = "Machete",         base = "Preset_Machete_Default",          epicSC = 15, legendarySC = 30 },
        { id = "PipeWrench",      base = "Preset_Pipe_Wrench_Default",      epicSC = 11, legendarySC = 26 },
        { id = "Tanto",           base = "Preset_Tanto_Default",            epicSC = 13, legendarySC = 28 },
        { id = "TireIron",        base = "Preset_Tire_Iron_Default",        epicSC = 11, legendarySC = 26 },
        { id = "Tomahawk",        base = "Preset_Tomahawk_Default",         epicSC = 15, legendarySC = 30 },
        { id = "BatonAlpha",      base = "Preset_Baton_Alpha",              epicSC = 22, legendarySC = 37 },
        { id = "BatonBeta",       base = "Preset_Baton_Beta",               epicSC = 22, legendarySC = 37 },
        { id = "BatonGamma",      base = "Preset_Baton_Gamma",              epicSC = 22, legendarySC = 37 }
    }

    for _, w in ipairs(meleeEntries) do
        Functions.createQualityVendorItem("VendorEpic" .. w.id, w.epicSC, "Items." .. w.base, "Epic")
        Functions.createQualityVendorItem("VendorLegendary" .. w.id, w.legendarySC, "Items." .. w.base, "Legendary")
    end
end

return MeleeWeapons
