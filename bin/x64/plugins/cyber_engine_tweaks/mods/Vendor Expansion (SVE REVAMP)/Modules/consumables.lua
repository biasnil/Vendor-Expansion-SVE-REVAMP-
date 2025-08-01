-- Modules/consumables.lua

local Consumables = {}
local Functions = require("Utilities/functions")

function Consumables.init()
    local entries = {
        { id = "VendorRAMJolt", item = "MemoryBooster", sc = 1, quantity = 15 },
        { id = "VendorHealthBooster", item = "HealthBooster", sc = 1, quantity = 15 },
        { id = "VendorStaminaBooster", item = "StaminaBooster", sc = 1, quantity = 15 },
        { id = "VendorCarryCapacityBooster", item = "CarryCapacityBooster", sc = 1, quantity = 15 }
    }

    for _, entry in ipairs(entries) do
        Functions.createQuantityVendorItem(entry.id, entry.sc, "Items." .. entry.item, entry.quantity)
    end
end

return Consumables
