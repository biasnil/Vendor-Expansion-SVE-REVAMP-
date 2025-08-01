-- Modules/stock.lua

local Stock = {}

function Stock.init()
    -- General vendor setup
    local generalFlats = {
        { key = "Vendors.CanBePresent.min", value = 1 },
        { key = "Vendors.ClothingCanBePresent.min", value = 1 },
        { key = "Vendors.TierScaledBaseMoney_inline0.value", value = 100000 }
    }

    for _, entry in ipairs(generalFlats) do
        TweakDB:SetFlat(entry.key, entry.value, "Int32")
    end

    -- Vendor stock configuration: { keyPrefix, min, max }
    local stockConfigs = {
        -- Crafting materials
        { prefix = "Vendors.CommonMaterialVendorStock_inline0", min = 3000, max = 5000 },
        { prefix = "Vendors.UncommonMaterialVendorStock_inline0", min = 1300, max = 2000 },
        { prefix = "Vendors.RareMaterialVendorStock_inline0", min = 1300, max = 2000 },
        { prefix = "Vendors.RareMaterial2VendorStock_inline0", min = 1300, max = 2000 },
        { prefix = "Vendors.EpicMaterialVendorStock_inline0", min = 800, max = 1300 },
        { prefix = "Vendors.EpicMaterial2VendorStock_inline0", min = 800, max = 1300 },
        { prefix = "Vendors.LegendaryMaterialVendorStock_inline0", min = 500, max = 800 },
        { prefix = "Vendors.LegendaryMaterial2VendorStock_inline0", min = 500, max = 800 },

        -- Quickhack components
        { prefix = "Vendors.QuickhackUncommonMaterialVendorStock_inline0", min = 1200, max = 2000 },
        { prefix = "Vendors.QuickhackRareMaterialVendorStock_inline0", min = 800, max = 1200 },
        { prefix = "Vendors.QuickhackEpicMaterialVendorStock_inline0", min = 500, max = 800 },
        { prefix = "Vendors.QuickhackLegendaryMaterialVendorStock_inline0", min = 300, max = 500 }
    }

    for _, stock in ipairs(stockConfigs) do
        TweakDB:SetFlat(stock.prefix .. ".min", stock.min, "Int32")
        TweakDB:SetFlat(stock.prefix .. ".max", stock.max, "Int32")
    end
end

return Stock
