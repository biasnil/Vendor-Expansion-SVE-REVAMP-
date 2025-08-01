-- Blueprint/drugblueprint.lua

local DrugBlueprints = {}
local Functions = require("Utilities/functions")

function DrugBlueprints.init()
    local recipes = {
        { id = "RecipeHealthBooster",               sc = 12 },
        { id = "RecipeMemoryBooster",               sc = 10 },
        { id = "RecipeOxyBooster",                  sc = 8  },
        { id = "RecipeCarryCapacityBooster",        sc = 18 },
        { id = "RecipeStaminaBooster",              sc = 16 }
    }

    for _, r in ipairs(recipes) do
        Functions.createVendorItem("Vendor" .. r.id, r.sc, "Items." .. r.id)
    end
end

return DrugBlueprints
