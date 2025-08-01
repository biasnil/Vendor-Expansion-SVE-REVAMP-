local Functions = {}

function Functions.init()
    Override('Vendor', 'GetMaxItemStacksPerVendor;Bool', function(_, useIncreasedLimit)
        return 9000
    end)
end

function Functions.assignStreetCredPrereq(id, scLevel)
    local prereqID = id .. "_StreetCredPrereq"
    TweakDB:CloneRecord(prereqID, "Vendors.GlenCredAvailability")
    TweakDB:SetFlat(prereqID .. ".statType", "BaseStats.StreetCredLevel")
    TweakDB:SetFlat(prereqID .. ".comparisonType", "GreaterThanOrEqualTo")
    TweakDB:SetFlat(prereqID .. ".valueToCheck", scLevel)
    TweakDB:SetFlat(id .. ".availabilityPrereq", prereqID)
    TweakDB:Update(prereqID)
end

function Functions.createVendorItem(id, scLevel, item)
    TweakDB:CloneRecord(id, "Vendors.Market_inline0")
    TweakDB:SetFlat(id .. ".spawnedItem", item, "TweakDBID")
    Functions.assignStreetCredPrereq(id, scLevel)
    TweakDB:Update(id)
end

function Functions.createQuantityVendorItem(id, scLevel, item, quantity)
    Functions.createVendorItem(id, scLevel, item)
    TweakDB:SetFlat(id .. ".stock", quantity, "Int32")
    TweakDB:Update(id)
end

function Functions.createRandomQuantityVendorItem(id, scLevel, item, min, max)
    Functions.createVendorItem(id, scLevel, item)
    local statID = id .. "Quantity"
    TweakDB:CreateRecord(statID, "gamedataRandomStatModifier_Record")
    TweakDB:SetFlat(statID .. ".statType", "BaseStats.Quantity")
    TweakDB:SetFlat(statID .. ".modifierType", "Additive")
    TweakDB:SetFlat(statID .. ".min", min)
    TweakDB:SetFlat(statID .. ".max", max)
    TweakDB:SetFlat(id .. ".stock", { statID })
    TweakDB:Update(statID)
    TweakDB:Update(id)
end

function Functions.createQualityVendorItem(id, scLevel, item, quality)
    Functions.createVendorItem(id, scLevel, item)
    TweakDB:SetFlat(id .. ".forceQuality", quality, "TweakDBID")
    TweakDB:Update(id)
end

function Functions.addToList(flatPath, value)
    local list = TweakDB:GetFlat(flatPath) or {}
    table.insert(list, value)
    TweakDB:SetFlat(flatPath, list)
end

function Functions.addItemToVendor(vendorID, vendorItem)
    local queries = TweakDB:GetFlat(vendorID .. ".itemQueries")
    if queries and #queries > 0 then
        print("[SVE] Skipped itemStock injection for " .. vendorID .. " (uses itemQueries)")
        return
    end

    local stock = TweakDB:GetFlat(vendorID .. ".itemStock") or {}
    table.insert(stock, vendorItem)
    TweakDB:SetFlat(vendorID .. ".itemStock", stock)
    print("[SVE] Injected " .. vendorItem .. " into " .. vendorID .. ".itemStock")
end

function Functions.addItemToVendorList(vendorID, vendorItem)
    local currentList = TweakDB:GetFlat(vendorID .. ".itemStock") or {}
    table.insert(currentList, vendorItem)
    TweakDB:SetFlat(vendorID .. ".itemStock", currentList)
end

function Functions.createAlwaysTruePrereq(id)
    TweakDB:CloneRecord(id, "Vendors.GlenCredAvailability")
    TweakDB:SetFlat(id .. ".valueToCheck", 1)
    TweakDB:Update(id)
end

function Functions.getStreetCred()
    local player = Game.GetPlayer()
    if not player then return 0 end
    return Game.GetStatsSystem():GetStatValue(player, gamedataStatType.StreetCred)
end

function Functions.injectVendorItem(vendorTweakIDStr, itemTweakIDStr, quantity)
    local vendorTweakID = TweakDBID.new(vendorTweakIDStr)
    local itemTweakID = TweakDBID.new(itemTweakIDStr)

    local request = AddItemToVendorRequest.new()
    request.vendorID = vendorTweakID
    request.itemToAddID = itemTweakID
    request.quantity = quantity or 1

    local marketSystem = GameInstance:GetScriptableSystemsContainer():Get("MarketSystem")
    marketSystem:QueueRequest(request)

    print("[SVE] Injected item '" .. itemTweakIDStr .. "' into vendor '" .. vendorTweakIDStr .. "'")
end

function Functions.injectVendorItemIfSC(vendorTweakIDStr, itemTweakIDStr, quantity, requiredSC)
    if Functions.getStreetCred() >= requiredSC then
        Functions.injectVendorItem(vendorTweakIDStr, itemTweakIDStr, quantity)
    else
        print("[SVE] Street Cred not high enough for: " .. itemTweakIDStr)
    end
end

return Functions
