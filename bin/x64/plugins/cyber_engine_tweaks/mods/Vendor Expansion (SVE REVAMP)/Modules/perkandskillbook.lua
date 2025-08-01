local PerkAndSkillBooks = {}
local Functions = require("Utilities/functions")

function PerkAndSkillBooks.init()
    local books = {
        { id = "VendorSkillbookBody_Strong",                item = "Items.BodySkill_Skillbook_Strong",                  sc = 10 },
        { id = "VendorSkillbookBody_Reward",                item = "Items.BodySkill_Skillbook_Reward",                  sc = 20 },
        { id = "VendorSkillbookBody_Legendary",             item = "Items.BodySkill_Skillbook_Legendary",               sc = 30 },

        { id = "VendorSkillbookReflexes_Strong",            item = "Items.ReflexesSkill_Skillbook_Strong",              sc = 10 },
        { id = "VendorSkillbookReflexes_Reward",            item = "Items.ReflexesSkill_Skillbook_Reward",              sc = 20 },
        { id = "VendorSkillbookReflexes_Legendary",         item = "Items.ReflexesSkill_Skillbook_Legendary",           sc = 30 },

        { id = "VendorSkillbookCool_Strong",                item = "Items.CoolSkill_Skillbook_Strong",                  sc = 10 },
        { id = "VendorSkillbookCool_Reward",                item = "Items.CoolSkill_Skillbook_Reward",                  sc = 20 },
        { id = "VendorSkillbookCool_Legendary",             item = "Items.CoolSkill_Skillbook_Legendary",               sc = 30 },

        { id = "VendorSkillbookTech_Strong",                item = "Items.TechnicalAbilitySkill_Skillbook_Strong",      sc = 10 },
        { id = "VendorSkillbookTech_Reward",                item = "Items.TechnicalAbilitySkill_Skillbook_Reward",      sc = 20 },
        { id = "VendorSkillbookTech_Legendary",             item = "Items.TechnicalAbilitySkill_Skillbook_Legendary",   sc = 30 },

        { id = "VendorSkillbookIntelligence_Strong",        item = "Items.IntelligenceSkillbook_Strong",                sc = 10 },
        { id = "VendorSkillbookIntelligence_Reward",        item = "Items.IntelligenceSkill_Skillbook_Reward",          sc = 20 },
        { id = "VendorSkillbookIntelligence_Legendary",     item = "Items.IntelligenceSkill_Skillbook_Legendary",       sc = 30 }
    }

    for _, book in ipairs(books) do
        Functions.createVendorItem(book.id, book.sc, book.item)
    end
end

return PerkAndSkillBooks
