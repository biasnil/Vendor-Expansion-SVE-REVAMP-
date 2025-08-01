-- Utilities/setgroups.lua

function CombineTables(...)
    local combined = {}
    for _, tbl in ipairs({...}) do
        for _, v in ipairs(tbl) do
            table.insert(combined, v)
        end
    end
    return combined
end

local Sets = {}

Sets.WeaponsSetA = {
    "VendorEpicCopperhead", "VendorEpicUnity", "VendorEpicTestera", "VendorEpicOverture",
    "VendorLegendarySatara", "VendorLegendaryLexington", "VendorLegendaryGuillotine"
}

Sets.WeaponsSetPower = {
    "VendorEpicAjax", "VendorEpicCarnage", "VendorEpicCrusher", "VendorEpicDefender",
    "VendorEpicGrad", "VendorEpicIgla", "VendorEpicLexington", "VendorEpicLiberty", "VendorEpicMasamune",
    "VendorEpicNova", "VendorEpicNue", "VendorEpicPulsar", "VendorEpicSaratoga", "VendorEpicSor22",
    "VendorEpicTactician", "VendorEpicTestera", "VendorEpicUmbra", "VendorLegendaryAjax",
    "VendorLegendaryCarnage", "VendorLegendaryCrusher", "VendorLegendaryDefender", "VendorLegendaryGrad",
    "VendorLegendaryIgla", "VendorLegendaryLexington", "VendorLegendaryLiberty", "VendorLegendaryMasamune",
    "VendorLegendaryNova", "VendorLegendaryNue", "VendorLegendaryPulsar", "VendorLegendarySaratoga",
    "VendorLegendarySor22", "VendorLegendaryTactician", "VendorLegendaryTestera", "VendorLegendaryUmbra"
}

Sets.WeaponsSetSmart = {
    "VendorEpicAshura", "VendorEpicChao", "VendorEpicDian", "VendorEpicPalica", "VendorEpicShingen",
    "VendorEpicSidewinder", "VendorEpicYukimura", "VendorEpicZhuo", "VendorLegendaryAshura",
    "VendorLegendaryChao", "VendorLegendaryDian", "VendorLegendaryPalica", "VendorLegendaryShingen",
    "VendorLegendarySidewinder", "VendorLegendaryYukimura", "VendorLegendaryZhuo"
}

Sets.WeaponsSetTech = {
    "VendorEpicAchilles", "VendorEpicBurya", "VendorEpicKenshin", "VendorEpicNekomata",
    "VendorEpicOmaha", "VendorEpicQuasar", "VendorLegendaryAchilles", "VendorLegendaryBurya",
    "VendorLegendaryKenshin", "VendorLegendaryNekomata", "VendorLegendaryOmaha", "VendorLegendaryQuasar"
}

Sets.Knives = {
    "VendorEpicButchersKnife", "VendorLegendaryButchersKnife",
    "VendorEpicChefsKnife", "VendorLegendaryChefsKnife",
    "VendorEpicKnife", "VendorLegendaryKnife",
    "VendorEpicKukri", "VendorLegendaryKukri",
    "VendorEpicMachete", "VendorLegendaryMachete",
    "VendorEpicTanto", "VendorLegendaryTanto",
    "VendorEpicTomahawk", "VendorLegendaryTomahawk"
}

Sets.BluntWeapons = {
    "VendorEpicBaseballBat", "VendorLegendaryBaseballBat",
    "VendorEpicCrowbar", "VendorLegendaryCrowbar",
    "VendorEpicHammer", "VendorLegendaryHammer",
    "VendorEpicIronPipe", "VendorLegendaryIronPipe",
    "VendorEpicKanabo", "VendorLegendaryKanabo",
    "VendorEpicPipeWrench", "VendorLegendaryPipeWrench",
    "VendorEpicTireIron", "VendorLegendaryTireIron",
    "VendorEpicBatonAlpha", "VendorLegendaryBatonAlpha",
    "VendorEpicBatonBeta", "VendorLegendaryBatonBeta",
    "VendorEpicBatonGamma", "VendorLegendaryBatonGamma"
}

Sets.Katanas = {
    "VendorEpicKatana", "VendorLegendaryKatana"
}

Sets.GrenadeSet = {
    "VendorGrenadeBiohazardRegular", "VendorGrenadeBiohazardHoming", "VendorGrenadeEMPRegular",
    "VendorGrenadeEMPSticky", "VendorGrenadeFlashRegular", "VendorGrenadeFlashHoming",
    "VendorGrenadeFragRegular", "VendorGrenadeFragSticky", "VendorGrenadeIncendiaryRegular",
    "VendorGrenadeIncendiarySticky", "VendorGrenadeReconRegular", "VendorGrenadeReconSticky",
    "VendorGrenadeCuttingRegular"
}

Sets.RangeWeaponModSet = {
    "VendorCrunch", "VendorPenetrator", "VendorPacifier", "VendorCombatAmplifier", "VendorPulverize",
    "VendorCountermass", "VendorPax",
    "VendorVendetta", "VendorPhantom", "VendorNeonArrow",

    "VendorScopeLong1", "VendorScopeLong2", "VendorScopeLong3",
    "VendorScopeShort1", "VendorScopeShort2", "VendorScopeShort3",
    "VendorScopeSniper1", "VendorScopeSniper2", "VendorScopeSniper3",

    "VendorMuzzleBrake1", "VendorMuzzleBrake2", "VendorMuzzleBrake3",
    "VendorMuzzleBrake5", "VendorMuzzleBrake6", "VendorMuzzleBrake10", "VendorMuzzleBrake11"
}

Sets.MeleeWeaponModSet = {
    "VendorScourge", "VendorKunai", "VendorWhiteKnuckled", "VendorColdShoulder"
}

Sets.CyberwareSet = {
    "VendorBionicJoints", "VendorBionicJointsPlus2", "VendorDenseBones", "VendorDenseBonesPlus2",
    "VendorSynapticAccelerator", "VendorSynapticAccelPlus2", "VendorKerenzikov",
    "VendorSubdermalArmor", "VendorNetWatchNetdriver", "VendorNetwatchNetdriverPlus", "VendorNetwatchNetdriverPlusPlus"
}

Sets.NetrunnerClothing = {
    "VendorNetrunnerSuit1", "VendorNetrunnerSuit2", "VendorNetrunnerSuit3", "VendorNetrunnerSuit4", "VendorNetrunnerSuit5", "VendorNetrunnerSuit6",
    "VendorLegendaryNetrunnerSuit1", "VendorLegendaryNetrunnerSuit2", "VendorLegendaryNetrunnerSuit3", "VendorLegendaryNetrunnerSuit4", "VendorLegendaryNetrunnerSuit5", "VendorLegendaryNetrunnerSuit6",
    "VendorNetrunnerVisor1", "VendorNetrunnerVisor2", "VendorNetrunnerVisor3", "VendorNetrunnerVisor4", "VendorNetrunnerVisor5",
    "VendorLegendaryNetrunnerVisor1", "VendorLegendaryNetrunnerVisor2", "VendorLegendaryNetrunnerVisor3", "VendorLegendaryNetrunnerVisor4", "VendorLegendaryNetrunnerVisor5"
}

Sets.Undershirts = {
    "VendorUndershirt1", "VendorUndershirt2", "VendorUndershirt3", "VendorUndershirt4",
    "VendorUndershirt5", "VendorUndershirt6", "VendorUndershirt7", "VendorUndershirt8",
    "VendorUndershirt9", "VendorUndershirt10",
    "VendorLegendaryUndershirt1", "VendorLegendaryUndershirt2", "VendorLegendaryUndershirt3", "VendorLegendaryUndershirt4",
    "VendorLegendaryUndershirt5", "VendorLegendaryUndershirt6", "VendorLegendaryUndershirt7", "VendorLegendaryUndershirt8",
    "VendorLegendaryUndershirt9", "VendorLegendaryUndershirt10"
}

Sets.Wreaths = {
    "VendorWreath1", "VendorWreath2", "VendorWreath3", "VendorWreath4", "VendorWreath5",
    "VendorLegendaryWreath1", "VendorLegendaryWreath2", "VendorLegendaryWreath3", "VendorLegendaryWreath4", "VendorLegendaryWreath5"
}

Sets.Menpos = {
    "VendorMenpo1", "VendorMenpo2", "VendorMenpo3", "VendorMenpo4", "VendorMenpo5", "VendorMenpo6",
    "VendorLegendaryMenpo1", "VendorLegendaryMenpo2", "VendorLegendaryMenpo3", "VendorLegendaryMenpo4", "VendorLegendaryMenpo5", "VendorLegendaryMenpo6"
}

Sets.Kabutos = {
    "VendorKabuto1", "VendorKabuto2", "VendorKabuto3", "VendorKabuto4", "VendorKabuto5", "VendorKabuto6",
    "VendorLegendaryKabuto1", "VendorLegendaryKabuto2", "VendorLegendaryKabuto3", "VendorLegendaryKabuto4", "VendorLegendaryKabuto5", "VendorLegendaryKabuto6"
}

Sets.Yoros = {
    "VendorYoro1", "VendorYoro2", "VendorYoro3", "VendorYoro4", "VendorYoro5", "VendorYoro6",
    "VendorLegendaryYoro1", "VendorLegendaryYoro2", "VendorLegendaryYoro3", "VendorLegendaryYoro4", "VendorLegendaryYoro5", "VendorLegendaryYoro6"
}

Sets.Yukatas = {
    "VendorYukata1", "VendorYukata2", "VendorYukata3", "VendorYukata4", "VendorYukata5",
    "VendorLegendaryYukata1", "VendorLegendaryYukata2", "VendorLegendaryYukata3", "VendorLegendaryYukata4", "VendorLegendaryYukata5"
}

Sets.Ocusets = {
    "VendorOcuset1", "VendorOcuset2", "VendorOcuset3", "VendorOcuset4", "VendorOcuset5",
    "VendorLegendaryOcuset1", "VendorLegendaryOcuset2", "VendorLegendaryOcuset3", "VendorLegendaryOcuset4", "VendorLegendaryOcuset5"
}

Sets.Techgogs = {
    "VendorTechgog1", "VendorTechgog2", "VendorTechgog3", "VendorTechgog4", "VendorTechgog5", "VendorTechgog6", "VendorTechgog7", "VendorTechgog8",
    "VendorLegendaryTechgog1", "VendorLegendaryTechgog2", "VendorLegendaryTechgog3", "VendorLegendaryTechgog4", "VendorLegendaryTechgog5", "VendorLegendaryTechgog6", "VendorLegendaryTechgog7", "VendorLegendaryTechgog8"
}

Sets.QuickhackSetA = {
    "VendorEMPOverloadLvl4Program", "VendorGrenadeExplodeLvl4Program", "VendorLocomotionMalfunctionLvl4Program",
    "VendorMadnessLvl4Program", "VendorOverheatLvl4Program", "VendorPingLvl4Program", "VendorSuicideLvl4Program",
    "VendorSystemCollapseLvl4Program", "VendorWeaponMalfunctionLvl4Program", "VendorBlindLvl4Program",
    "VendorBrainMeltLvl4Program", "VendorCommsNoiseLvl4Program", "VendorContagionLvl4Program"
}

Sets.ConsumableSetA = {
    "VendorRAMJolt", "VendorHealthBooster", "VendorStaminaBooster", "VendorCarryCapacityBooster"
}

Sets.SkillBooks = {
    "VendorSkillbookBody_Strong", "VendorSkillbookBody_Reward", "VendorSkillbookBody_Legendary",
    "VendorSkillbookReflexes_Strong", "VendorSkillbookReflexes_Reward", "VendorSkillbookReflexes_Legendary",
    "VendorSkillbookCool_Strong", "VendorSkillbookCool_Reward", "VendorSkillbookCool_Legendary",
    "VendorSkillbookTech_Strong", "VendorSkillbookTech_Reward", "VendorSkillbookTech_Legendary",
    "VendorSkillbookIntelligence_Strong", "VendorSkillbookIntelligence_Reward", "VendorSkillbookIntelligence_Legendary"
}

Sets.GrenadeBlueprints = {
    "VendorRecipeGrenadeBiohazardRegular", "VendorRecipeGrenadeBiohazardHoming",
    "VendorRecipeGrenadeEMPRegular", "VendorRecipeGrenadeEMPSticky",
    "VendorRecipeGrenadeFlashRegular", "VendorRecipeGrenadeFlashHoming",
    "VendorRecipeGrenadeFragSticky", "VendorRecipeGrenadeFragHoming",
    "VendorRecipeGrenadeFragUncommon", "VendorRecipeGrenadeFragEpic",
    "VendorRecipeGrenadeIncendiaryRegular", "VendorRecipeGrenadeIncendiarySticky",
    "VendorRecipeGrenadeReconRegular", "VendorRecipeGrenadeReconSticky",
    "VendorRecipeGrenadeCuttingRegular"
}

Sets.DrugBlueprints = {
    "VendorRecipeHealthBooster", "VendorRecipeMemoryBooster",
    "VendorRecipeOxyBooster", "VendorRecipeCarryCapacityBooster",
    "VendorRecipeStaminaBooster"
}

Sets.PowerWithMods              = CombineTables(Sets.WeaponsSetPower, Sets.RangeWeaponModSet)
Sets.SmartWithMods              = CombineTables(Sets.WeaponsSetSmart, Sets.RangeWeaponModSet)
Sets.TechWithMods               = CombineTables(Sets.WeaponsSetTech, Sets.RangeWeaponModSet)
Sets.AllGuns                    = CombineTables(Sets.WeaponsSetPower, Sets.WeaponsSetSmart, Sets.WeaponsSetTech)
Sets.AllGunsAndMods             = CombineTables(Sets.AllGuns, Sets.RangeWeaponModSet)
Sets.SecondAmendment            = CombineTables(Sets.WeaponsSetPower, Sets.WeaponsSetTech, Sets.RangeWeaponModSet, Sets.ConsumableSetA, Sets.GrenadeSet, Sets.GrenadeBlueprints)

Sets.AllKnivesAndMods           = CombineTables(Sets.Knives, Sets.MeleeWeaponModSet)
Sets.AllBluntWeaponsAndMods     = CombineTables(Sets.BluntWeapons , Sets.MeleeWeaponModSet)
Sets.AllKatanasAndMods          = CombineTables(Sets.Katanas, Sets.MeleeWeaponModSet)

Sets.NetRunnerAndCloths         = CombineTables(Sets.QuickhackSetA, Sets.NetrunnerClothing, Sets.Ocusets, Sets.Techgogs, Sets.SkillBooks)
Sets.AllClothing                = CombineTables(Sets.Techgogs, Sets.Yukatas,Sets.Ocusets, Sets.Yoros,Sets.Kabutos, Sets.Menpos,Sets.Wreaths, Sets.Undershirts)

Sets.Ripperdoc                  = CombineTables(Sets.DrugBlueprints, Sets.ConsumableSetA, Sets.CyberwareSet)
return Sets