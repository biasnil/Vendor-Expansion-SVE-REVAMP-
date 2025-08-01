-- Modules/quickhacks.lua

local Quickhacks = {}
local Functions = require("Utilities/functions")

function Quickhacks.init()
    local entries = {
        { id = "EMPOverloadLvl4Program", sc = 43 },
        { id = "GrenadeExplodeLvl4Program", sc = 43 },
        { id = "LocomotionMalfunctionLvl4Program", sc = 43 },
        { id = "MadnessLvl4Program", sc = 43 },
        { id = "OverheatLvl4Program", sc = 43 },
        { id = "PingLvl4Program", sc = 43 },
        { id = "SuicideLvl4Program", sc = 43 },
        { id = "SystemCollapseLvl4Program", sc = 43 },
        { id = "WeaponMalfunctionLvl4Program", sc = 43 },
        { id = "BlindLvl4Program", sc = 43 },
        { id = "BrainMeltLvl4Program", sc = 43 },
        { id = "CommsNoiseLvl4Program", sc = 43 },
        { id = "ContagionLvl4Program", sc = 43 }
    }

    for _, q in ipairs(entries) do
        Functions.createVendorItem("Vendor" .. q.id, q.sc, "Items." .. q.id)
    end
end

return Quickhacks
