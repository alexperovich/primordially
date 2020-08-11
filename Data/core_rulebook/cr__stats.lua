-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr__stats.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineStat({
  Name="Strength",
  SortKey="1",
  Abbreviation="STR",
  Key="STR",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="STR",
      Action="SET",
      Value="Mod",
    },
    {
      Target="STRSCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_STR",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=STR",
      InitialValue=Formula("STRSCORE-10"),
    },
    {
      Name="LOADSCORE",
      InitialValue=Formula("0"),
    },
    {
      Name="TWOHANDDAMAGEDIVISOR",
      InitialValue=Formula("0"),
    },
    {
      Name="OFFHANDLIGHTBONUS",
      InitialValue=Formula("0"),
    },
    {
      Name="RacialVision",
      InitialValue=Formula("0"),
    },
    {
      Name="OversizeWeaponToHitBonus",
      InitialValue=Formula("0"),
    },
    {
      Name="AltSTRSCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.Melee",
      },
      Formula=Formula("STR"),
      Conditions={
        function (character)
          return (character.Variables["DisableToHitMeleeStr"] == 0)
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGE.Melee",
        "DAMAGE.Thrown",
      },
      Formula=Formula("STR"),
      Type={
        Name="Ability",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGEMULT:0",
      },
      Formula=Formula("if(STR>0,0.5,1)"),
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGEMULT:1",
      },
      Formula=Formula("1"),
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGEMULT:2",
      },
      Formula=Formula("if(STR>0,1.5,1)"),
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGE.Splash",
      },
      Formula=Formula("-STR"),
      Type={
        Name="Ability",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "PreStatScore_STR",
      },
      Formula=Formula("max(STRSCORE,AltSTRSCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "LOADSCORE",
      },
      Formula=Formula("STRSCORE"),
    },
    {
      Category="VAR",
      Variables={
        "TWOHANDDAMAGEDIVISOR",
        "OFFHANDLIGHTBONUS",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "RacialVision",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "Racial Vision")
          end))
        end,
      },
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Default",
      },
    },
  },
})
DefineStat({
  Name="Dexterity",
  SortKey="2",
  Abbreviation="DEX",
  Key="DEX",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="DEX",
      Action="SET",
      Value="Mod",
    },
    {
      Target="DEXSCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_DEX",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=DEX",
      InitialValue=Formula("DEXSCORE-10"),
    },
    {
      Name="INITCOMP",
      InitialValue=Formula("0"),
    },
    {
      Name="ACAbilityStat",
      InitialValue=Formula("0"),
    },
    {
      Name="MXDXEN",
      InitialValue=Formula("0"),
    },
    {
      Name="FightingDefensivelyACBonus",
      InitialValue=Formula("0"),
    },
    {
      Name="FightingDefensivelyAC",
      InitialValue=Formula("0"),
    },
    {
      Name="TotalDefenseACBonus",
      InitialValue=Formula("0"),
    },
    {
      Name="TotalDefenseAC",
      InitialValue=Formula("0"),
    },
    {
      Name="AltDEXSCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.Ranged",
      },
      Formula=Formula("DEX"),
      Conditions={
        function (character)
          return (character.Variables["DisableToHitRangedDex"] == 0)
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("10"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("min(ACAbilityStat, min(MXDXEN,MODEQUIPMAXDEX))"),
      Conditions={
        function (character)
          return (character.Variables["ACStatNotDex"] == 0)
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("max(FightingDefensivelyAC,TotalDefenseAC)"),
      Type={
        Name="Dodge",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "PreStatScore_DEX",
      },
      Formula=Formula("max(DEXSCORE,AltDEXSCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "INITCOMP",
      },
      Formula=Formula("DEX"),
    },
    {
      Category="VAR",
      Variables={
        "ACAbilityStat",
      },
      Formula=Formula("DEX"),
    },
    {
      Category="VAR",
      Variables={
        "MXDXEN",
      },
      Formula=Formula("1000"),
      Conditions={
        function (character)
          return (character.Variables["ENCUMBERANCE"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "MXDXEN",
      },
      Formula=Formula("3"),
      Conditions={
        function (character)
          return (character.Variables["ENCUMBERANCE"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "MXDXEN",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["ENCUMBERANCE"] == 2)
        end,
      },
    },
  },
})
DefineStat({
  Name="Constitution",
  SortKey="3",
  Abbreviation="CON",
  Key="CON",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="CON",
      Action="SET",
      Value="Mod",
    },
    {
      Target="CONSCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_CON",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=CON",
      InitialValue=Formula("CONSCORE-10"),
    },
    {
      Name="UseAlternateDamage",
      InitialValue=Formula("0"),
    },
    {
      Name="UseCombatManueverBonus",
      InitialValue=Formula("0"),
    },
    {
      Name="AltCONSCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="HP",
      Variables={
        "WOUNDPOINTS",
      },
      Formula=Formula("CON"),
    },
    {
      Category="HP",
      Variables={
        "BONUS",
      },
      Formula=Formula("CON"),
      Conditions={
        function (character)
          return ((IsRuleEnabled("DAMAGE_HP"))) >= 1
        end,
      },
    },
    {
      Category="HP",
      Variables={
        "ALTHP",
      },
      Formula=Formula("CONSCORE*2"),
    },
    {
      Category="VAR",
      Variables={
        "PreStatScore_CON",
      },
      Formula=Formula("max(CONSCORE,AltCONSCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "UseAlternateDamage",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return ((IsRuleEnabled("DAMAGE_VW"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "UseCombatManueverBonus",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return ((IsRuleEnabled("USE_CMB"))) >= 1
        end,
      },
    },
  },
})
DefineStat({
  Name="Intelligence",
  SortKey="4",
  Abbreviation="INT",
  Key="INT",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="INT",
      Action="SET",
      Value="Mod",
    },
    {
      Target="INTSCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_INT",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=INT",
      InitialValue=Formula("MaxLevelStat_Int"),
    },
    {
      Name="AdditionalLanguage",
      InitialValue=Formula("0"),
    },
    {
      Name="BonusRetroSkillPoints",
      InitialValue=Formula("0"),
    },
    {
      Name="MaxLevelStat_Int",
      InitialValue=Formula("0"),
    },
    {
      Name="AltINTSCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PreStatScore_INT",
      },
      Formula=Formula("max(INTSCORE,AltINTSCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "MaxLevelStat_Int",
      },
      Formula=Formula("INTSCORE-10"),
    },
    {
      Category="LANG",
      Variables={
        "BONUS",
      },
      Formula=Formula("max(INT,0)+var(\"AdditionalLanguage\")"),
    },
    {
      Category="MODSKILLPOINTS",
      Variables={
        "NUMBER",
      },
      Formula=Formula("var(\"STAT.3.MOD.NOEQUIP.NOTEMP\")+BonusRetroSkillPoints"),
    },
  },
})
DefineStat({
  Name="Wisdom",
  SortKey="5",
  Abbreviation="WIS",
  Key="WIS",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="WIS",
      Action="SET",
      Value="Mod",
    },
    {
      Target="WISSCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_WIS",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=WIS",
      InitialValue=Formula("WISSCORE-10"),
    },
    {
      Name="AltWISSCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PreStatScore_WIS",
      },
      Formula=Formula("max(WISSCORE,AltWISSCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})
DefineStat({
  Name="Charisma",
  SortKey="6",
  Abbreviation="CHA",
  Key="CHA",
  StatModFormula="floor(SCORE/2)-5",
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value="input(\"STATSCORE\")",
    },
    {
      Target="Mod",
      Action="SET",
      Value="d20Mod(Score)",
    },
    {
      Target="CHA",
      Action="SET",
      Value="Mod",
    },
    {
      Target="CHASCORE",
      Action="SET",
      Value="Score",
    },
  },
  Definitions={
    {
      Name="PreStatScore_CHA",
      InitialValue=Formula("0"),
    },
    {
      Name="MAXLEVELSTAT=CHA",
      InitialValue=Formula("CHASCORE-10"),
    },
    {
      Name="BypassSizeMods",
      InitialValue=Formula("0"),
    },
    {
      Name="NormalMount",
      InitialValue=Formula("0"),
    },
    {
      Name="SizeIncrease",
      InitialValue=Formula("0"),
    },
    {
      Name="SizeDecrease",
      InitialValue=Formula("0"),
    },
    {
      Name="NormalFollower",
      InitialValue=Formula("0"),
    },
    {
      Name="AltCHASCORE",
      InitialValue=Formula("0"),
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("min(CHA, min(MXDXEN,MODEQUIPMAXDEX))"),
      Conditions={
        function (character)
          return (character.Variables["ACStatIsCha"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PreStatScore_CHA",
      },
      Formula=Formula("max(CHASCORE,AltCHASCORE)"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "NormalMount",
        "NormalFollower",
      },
      Formula=Formula("1"),
    },
  },
})