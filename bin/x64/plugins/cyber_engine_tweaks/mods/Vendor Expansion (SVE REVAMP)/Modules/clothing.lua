-- Modules/clothing.lua

local Clothing = {}
local Functions = require("Utilities/functions")

function Clothing.init()
    local entries = {
        -- Netrunner Suit
        { id = "NetrunnerSuit1", base = "TightJumpsuit_01_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerSuit2", base = "TightJumpsuit_01_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerSuit3", base = "TightJumpsuit_01_old_01", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerSuit4", base = "TightJumpsuit_01_old_02", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerSuit5", base = "TightJumpsuit_01_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerSuit6", base = "TightJumpsuit_01_rich_02", epicSC = 1, legendarySC = 40 },

        -- Netrunner Visor
        { id = "NetrunnerVisor1", base = "Visor_01_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerVisor2", base = "Visor_01_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerVisor3", base = "Visor_01_basic_03", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerVisor4", base = "Visor_01_basic_04", epicSC = 1, legendarySC = 40 },
        { id = "NetrunnerVisor5", base = "Visor_01_basic_05", epicSC = 1, legendarySC = 40 },

          -- Techgog
        { id = "Techgog1", base = "Visor_02_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Techgog2", base = "Visor_02_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Techgog3", base = "Visor_02_basic_03", epicSC = 1, legendarySC = 40 },
        { id = "Techgog4", base = "Visor_02_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Techgog5", base = "Visor_02_old_02", epicSC = 1, legendarySC = 40 },
        { id = "Techgog6", base = "Visor_02_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Techgog7", base = "Visor_02_rich_02", epicSC = 1, legendarySC = 40 },
        { id = "Techgog8", base = "Visor_02_rich_03", epicSC = 1, legendarySC = 40 },


        -- Ocuset
        { id = "Ocuset1", base = "Tech_01_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Ocuset2", base = "Tech_01_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Ocuset3", base = "Tech_01_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Ocuset4", base = "Tech_01_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Ocuset5", base = "Tech_01_rich_02", epicSC = 1, legendarySC = 40 },
        
        -- Wreath
        { id = "Wreath1", base = "Tech_02_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Wreath2", base = "Tech_02_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Wreath3", base = "Tech_02_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Wreath4", base = "Tech_02_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Wreath5", base = "Tech_02_rich_02", epicSC = 1, legendarySC = 40 },

        -- Menpo
        { id = "Menpo1", base = "Mask_03_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Menpo2", base = "Mask_03_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Menpo3", base = "Mask_03_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Menpo4", base = "Mask_03_old_02", epicSC = 1, legendarySC = 40 },
        { id = "Menpo5", base = "Mask_03_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Menpo6", base = "Mask_03_rich_02", epicSC = 1, legendarySC = 40 },

        -- Kabuto
        { id = "Kabuto1", base = "Helmet_04_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Kabuto2", base = "Helmet_04_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Kabuto3", base = "Helmet_04_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Kabuto4", base = "Helmet_04_old_02", epicSC = 1, legendarySC = 40 },
        { id = "Kabuto5", base = "Helmet_04_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Kabuto6", base = "Helmet_04_rich_02", epicSC = 1, legendarySC = 40 },

        -- Yoro
        { id = "Yoro1", base = "Pants_14_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Yoro2", base = "Pants_14_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Yoro3", base = "Pants_14_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Yoro4", base = "Pants_14_old_02", epicSC = 1, legendarySC = 40 },
        { id = "Yoro5", base = "Pants_14_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Yoro6", base = "Pants_14_rich_02", epicSC = 1, legendarySC = 40 },

        -- Yukata
        { id = "Yukata1", base = "Vest_19_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Yukata2", base = "Vest_19_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Yukata3", base = "Vest_19_old_01", epicSC = 1, legendarySC = 40 },
        { id = "Yukata4", base = "Vest_19_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Yukata5", base = "Vest_19_rich_02", epicSC = 1, legendarySC = 40 },

        -- Undershirt
        { id = "Undershirt1", base = "Undershirt_02_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt2", base = "Undershirt_02_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt3", base = "Undershirt_02_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt4", base = "Undershirt_02_rich_02", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt5", base = "Undershirt_03_basic_01", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt6", base = "Undershirt_03_basic_02", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt7", base = "Undershirt_03_basic_03", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt8", base = "Undershirt_03_basic_04", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt9", base = "Undershirt_03_rich_01", epicSC = 1, legendarySC = 40 },
        { id = "Undershirt10", base = "Undershirt_03_rich_02", epicSC = 1, legendarySC = 40 }
    }

    for _, entry in ipairs(entries) do
        Functions.createQualityVendorItem("VendorEpic" .. entry.id, entry.epicSC, "Items." .. entry.base, "Epic")
        Functions.createQualityVendorItem("VendorLegendary" .. entry.id, entry.legendarySC, "Items." .. entry.base, "Legendary")
    end
end

return Clothing