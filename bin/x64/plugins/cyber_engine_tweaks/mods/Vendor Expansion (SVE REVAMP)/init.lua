local Functions = require("Utilities/functions")
local VendorList = require("Utilities/vendorlist")
local Stock = require("Utilities/stock")

local Consumables = require("Modules/consumables")
local Nades = require("Modules/nadeking")
local Quickhacks = require("Modules/quickhacks")
local Clothing = require("Modules/clothing")
local RangeWeapons = require("Modules/rangeweapons")
local MeleeWeapons = require("Modules/meleeweapons")
local WeaponMods = require("Modules/weaponmods")
local Cyberware = require("Modules/cyberware")
local PerkAndSkillBooks = require("Modules/perkandskillbook")

local BlueprintNades = require("Blueprint/nadekingblueprint")
local DrugBlueprints = require("Blueprint/drugblueprint")

registerForEvent("onInit", function()
    Functions.init()
    Stock.init()
    
    Consumables.init()
    Nades.init()
    Quickhacks.init()
    Clothing.init()
    RangeWeapons.init()
    MeleeWeapons.init() 
    WeaponMods.init()
    Cyberware.init()
    PerkAndSkillBooks.init()

    BlueprintNades.init()
    DrugBlueprints.init()

    VendorList.init()

    print("Vendor Expansion (SVE REVAMP) fully loaded!")
end)
