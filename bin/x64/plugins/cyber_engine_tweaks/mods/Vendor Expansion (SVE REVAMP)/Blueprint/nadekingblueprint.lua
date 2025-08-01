-- Modules/blueprint/nadekingblueprint.lua

local BlueprintNades = {}
local Functions = require("Utilities/functions")

function BlueprintNades.init()
    local blueprints = {
        -- Biohazard
        { id = "RecipeGrenadeBiohazardRegular", sc = 1 },
        { id = "RecipeGrenadeBiohazardHoming", sc = 25 },

        -- EMP
        { id = "RecipeGrenadeEMPRegular", sc = 1 },
        { id = "RecipeGrenadeEMPSticky", sc = 6 },

        -- Flashbang
        { id = "RecipeGrenadeFlashRegular", sc = 1 },
        { id = "RecipeGrenadeFlashHoming", sc = 27 },

        -- Frag
        { id = "RecipeGrenadeFragSticky", sc = 6 },
        { id = "RecipeGrenadeFragHoming", sc = 25 },
        { id = "RecipeGrenadeFragUncommon", sc = 3 },
        { id = "RecipeGrenadeFragEpic", sc = 28 },

        -- Incendiary
        { id = "RecipeGrenadeIncendiaryRegular", sc = 1 },
        { id = "RecipeGrenadeIncendiarySticky", sc = 6 },

        -- Recon
        { id = "RecipeGrenadeReconRegular", sc = 6 },
        { id = "RecipeGrenadeReconSticky", sc = 11 },

        -- GASH
        { id = "RecipeGrenadeCuttingRegular", sc = 31 }
    }

    for _, bp in ipairs(blueprints) do
        Functions.createVendorItem("Vendor" .. bp.id, bp.sc, "Items." .. bp.id)
    end
end

return BlueprintNades
