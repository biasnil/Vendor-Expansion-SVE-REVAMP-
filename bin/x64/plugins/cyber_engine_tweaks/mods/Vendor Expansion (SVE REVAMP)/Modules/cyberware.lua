-- Modules/cyberware.lua

local Cyberware = {}
local Functions = require("Utilities/functions")

function Cyberware.init()
    local entries = {
        -- Skeleton
        { id = "BionicJoints", item = "AdvancedBionicJointsLegendaryPlus", sc = 30 },
        { id = "BionicJointsPlus2", item = "AdvancedBionicJointsLegendary2Plus", sc = 35 },
        { id = "DenseBones", item = "AdvancedDenseMarrowLegendaryPlus", sc = 30 },
        { id = "DenseBonesPlus2", item = "AdvancedDenseMarrowLegendary2Plus", sc = 35 },

        -- Nervous System
        { id = "SynapticAccelerator", item = "AdvancedSynapticAcceleratorLegendaryPlus", sc = 30 },
        { id = "SynapticAccelPlus2", item = "AdvancedSynapticAcceleratorLegendaryPlusPlus", sc = 35 },
        { id = "Kerenzikov", item = "KerenzikovLegendary", sc = 35 },

        -- Integumentary System
        { id = "SubdermalArmor", item = "SubdermalArmorLegendary", sc = 32 },

        -- Operating System
        { id = "NetWatchNetdriver", item = "NetwatchNetdriverLegendaryMKV", sc = 45 },
        { id = "NetwatchNetdriverPlus", item = "AdvancedNetwatchNetdriverMKLegendaryPlus", sc = 47 },
        { id = "NetwatchNetdriverPlusPlus", item = "AdvancedNetwatchNetdriverMKLegendaryPlusPlus", sc = 50 }
    }

    for _, entry in ipairs(entries) do
        Functions.createVendorItem("Vendor" .. entry.id, entry.sc, "Items." .. entry.item)
    end
end

return Cyberware
