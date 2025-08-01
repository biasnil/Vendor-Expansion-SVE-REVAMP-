-- Utilities/vendorlist.lua

local VendorList = {}
local Functions = require("Utilities/functions")
local Sets = require("Sets/setgroups")

function VendorList.init()
    local function inferSC(itemName)
        if itemName:find("RAM") or itemName:find("RAMJolt") then return 10 end
        if itemName:find("HealthBooster") then return 12 end
        if itemName:find("Pax") or itemName:find("Pacifier") then return 22 end
        return 25
    end

    local vendorAssignments = {
        -- Gunsmiths
        ["Vendors.bls_ina_se1_gunsmith_01a"] = Sets.AllGunsAndMods,
        ["Vendors.bls_ina_se1_gunsmith_01"]  = Sets.AllGunsAndMods,
        ["Vendors.bls_ina_se1_gunsmith_02"]  = Sets.AllGunsAndMods,
        ["Vendors.bls_ina_se5_gunsmith_01"]  = Sets.AllGunsAndMods,
        ["Vendors.cz_con_gunsmith_01"]       = Sets.AllGunsAndMods,
        ["Vendors.cz_stadium_gunsmith_01"]   = Sets.AllGunsAndMods,
        ["Vendors.hey_gle_gunsmith_01"]      = Sets.AllGunsAndMods,
        ["Vendors.hey_rey_gunsmith_01"]      = Sets.PowerWithMods,
        ["Vendors.hey_spr_gunsmith_01"]      = Sets.AllGunsAndMods,
        ["Vendors.pac_wwd_gunsmith_01"]      = Sets.TechWithMods,
        ["Vendors.std_arr_gunsmith_01"]      = Sets.AllGunsAndMods,
        ["Vendors.std_rcr_gunsmith_01"]      = Sets.AllGunsAndMods,
        ["Vendors.wat_kab_gunsmith_01"]      = Sets.AllGunsAndMods,
        ["Vendors.wat_kab_gunsmith_02"]      = Sets.AllGunsAndMods,
        ["Vendors.wat_lch_gunsmith_01"]      = Sets.SecondAmendment,
        ["Vendors.wat_nid_gunsmith_01"]      = Sets.PowerWithMods,
        ["Vendors.wbr_jpn_gunsmith_01"]      = Sets.AllGunsAndMods,

        -- Melee Store
        ["Vendors.wat_lch_melee_02"]         = Sets.AllKnivesAndMods,
        ["Vendors.wat_lch_melee_01"]         = Sets.AllBluntWeaponsAndMods,
        ["Vendors.wbr_jpn_melee_01"]         = Sets.AllKatanasAndMods,

        -- Netrunners / Tech Stores
        ["Vendors.pac_cvi_techstore_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.std_arr_techstore_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.std_rcr_techstore_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wat_kab_techstore_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wbr_jpn_techstore_01"]     = Sets.NetRunnerAndCloths,

        ["Vendors.cz_con_netrunner_01"]      = Sets.NetRunnerAndCloths,
        ["Vendors.cz_stadium_netrunner_01"]  = Sets.NetRunnerAndCloths,
        ["Vendors.hey_rey_netrunner_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.NetrunnerTrainer"]         = Sets.NetRunnerAndCloths,
        ["Vendors.NetrunnerTrainer_EP1"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wat_kab_netrunner_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wat_lch_netrunner_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wbr_jpn_netrunner_01"]     = Sets.NetRunnerAndCloths,
        ["Vendors.wbr_jpn_netrunner_02"]     = Sets.NetRunnerAndCloths,

        -- Clothing Vendors
        ["Vendors.cz_con_clothingshop_001"]  = Sets.AllClothing,
        ["Vendors.hey_spr_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.pac_cvi_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.pac_wwd_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.std_arr_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.std_rcr_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wat_kab_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wat_lch_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wat_nid_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wbr_hil_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wbr_jpn_clothingshop_01"]  = Sets.AllClothing,
        ["Vendors.wbr_jpn_clothingshop_02"]  = Sets.AllClothing,

        -- Cyberware Stores & Ripperdocs
        ["Vendors.bls_ina_se5_cyberware_store_01"] = Sets.CyberwareSet,
        ["Vendors.hey_gle_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.hey_rey_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.pac_cvi_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.pac_wwd_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.std_arr_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.std_rcr_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.wat_lch_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.wat_nid_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.wbr_hil_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.wbr_jpn_cyberware_store_01"]     = Sets.CyberwareSet,
        ["Vendors.wbr_nok_cyberware_store_01"]     = Sets.CyberwareSet,

        ["Vendors.bls_ina_se1_ripperdoc_01"]       = Sets.Ripperdoc,
        ["Vendors.bls_ina_se1_ripperdoc_02"]       = Sets.Ripperdoc,
        ["Vendors.cz_monument_ripperdoc_anderson"] = Sets.Ripperdoc,
        ["Vendors.cz_monument_ripperdoc_farida"]   = Sets.Ripperdoc,
        ["Vendors.cz_stadium_ripperdoc_01"]        = Sets.Ripperdoc,
        ["Vendors.hey_spr_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.pac_wwd_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.std_arr_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.std_rcr_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.wat_kab_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.wat_kab_ripperdoc_02"]           = Sets.Ripperdoc,
        ["Vendors.wat_kab_ripperdoc_03"]           = Sets.Ripperdoc,
        ["Vendors.wat_lch_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.wat_nid_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.wbr_jpn_ripperdoc_01"]           = Sets.Ripperdoc,
        ["Vendors.wbr_jpn_ripperdoc_02"]           = Sets.Ripperdoc
    }

    for vendorID, items in pairs(vendorAssignments) do
        for _, item in ipairs(items) do
            if item:find("^Items%.") then
                local sc = inferSC(item)
                Functions.injectVendorItemIfSC(vendorID, item, 1, sc)
            elseif item:find("^Vendor") then
                Functions.addItemToVendorList(vendorID, item)
            else
                print("[VendorList] Unknown item format: " .. item .. " (vendor: " .. vendorID .. ")")
            end
        end
    end
end

return VendorList
