-- Modules/nadeking.lua

local Grenades = {}
local Functions = require("Utilities/functions")

function Grenades.init()
    local entries = {
        -- Biohazard
        { id = "GrenadeBiohazardRegular", base = "GrenadeBiohazardRegular", sc = 25, quantity = 15 },
        { id = "GrenadeBiohazardHoming", base = "GrenadeBiohazardHoming", sc = 25, quantity = 15 },

        -- EMP
        { id = "GrenadeEMPRegular", base = "GrenadeEMPRegular", sc = 25, quantity = 15 },
        { id = "GrenadeEMPSticky", base = "GrenadeEMPSticky", sc = 25, quantity = 15 },

        -- Flashbang
        { id = "GrenadeFlashRegular", base = "GrenadeFlashRegular", sc = 25, quantity = 15 },
        { id = "GrenadeFlashHoming", base = "GrenadeFlashHoming", sc = 25, quantity = 15 },

        -- Frag
        { id = "GrenadeFragRegular", base = "GrenadeFragRegular", sc = 25, quantity = 15 },
        { id = "GrenadeFragSticky", base = "GrenadeFragSticky", sc = 25, quantity = 15 },

        -- Incendiary
        { id = "GrenadeIncendiaryRegular", base = "GrenadeIncendiaryRegular", sc = 25, quantity = 15 },
        { id = "GrenadeIncendiarySticky", base = "GrenadeIncendiarySticky", sc = 25, quantity = 15 },

        -- Recon
        { id = "GrenadeReconRegular", base = "GrenadeReconRegular", sc = 25, quantity = 15 },
        { id = "GrenadeReconSticky", base = "GrenadeReconSticky", sc = 25, quantity = 15 },

        -- GASH
        { id = "GrenadeCuttingRegular", base = "GrenadeCuttingRegular", sc = 25, quantity = 51 }
    }

    for _, g in ipairs(entries) do
        Functions.createQuantityVendorItem("Vendor" .. g.id, g.sc, "Items." .. g.base, g.quantity)
    end
end

return Grenades
