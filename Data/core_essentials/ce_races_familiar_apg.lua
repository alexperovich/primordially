-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_races_familiar_apg.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Advanced Player's Guide",
  SourceShort="APG",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8fo1",
  SourceDate="2010-08",
})
DefineRace({
  Name="Familiar (Centipede (House))",
  SortKey="z_Companion",
  ChallengeRating="1/8",
  DisplayName="Familiar [NAME]",
  HandCount=0,
  LegCount=100,
  RaceType="Vermin",
  Reach=5,
  Size="T",
  SourcePage="p.43",
  StartingKitCount=1,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Weapon Finesse",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Can't Be Tripped",
        "Giant Centipede Companion ~ Poison",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Centipede (House)",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=40,
    Climb=40,
  },
  MonsterClass={
    Class="Vermin",
    Level=1,
  },
})
DefineRace({
  Name="Familiar (Crab (Giant King))",
  SortKey="z_Companion",
  ChallengeRating="1/4",
  DisplayName="Familiar [NAME]",
  HandCount=2,
  LegCount=8,
  RaceType="Vermin",
  Reach=0,
  Size="T",
  SourcePage="p.50",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Constrict",
        "Crab Companion ~ Water Dependency",
        "Grab",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ConstrictDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("STR"),
      Variables={
        "ConstrictBonusDamage",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Crab (Giant King)",
  },
  Templates={
    "Aquatic",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=30,
    Swim=20,
  },
  MonsterClass={
    Class="Vermin",
    Level=1,
  },
})
DefineRace({
  Name="Familiar (Fox)",
  SortKey="z_Companion",
  ChallengeRating="1/3",
  DisplayName="Familiar [NAME]",
  HandCount=0,
  LegCount=4,
  RaceType="Animal",
  Reach=5,
  Size="S",
  SourcePage="p.87",
  StartingFeats=1,
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Acrobatics=When Jumping",
      },
    },
    {
      Category="SITUATION",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Survival=Track by scent",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Fox",
  },
  Templates={
    "Young Creature",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Animal",
    Level=1,
  },
})
DefineRace({
  Name="Familiar (Octopus)",
  SortKey="z_Companion",
  ChallengeRating="1",
  DisplayName="Familiar [NAME]",
  HandCount=8,
  LegCount=0,
  RaceType="Animal",
  Reach=5,
  Size="S",
  SourcePage="p.219",
  StartingFeats=1,
  StartingKitCount=1,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Multiattack",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Can't Be Tripped",
        "Grab",
        "Octopus Companion ~ Ink Cloud",
        "Octopus Companion ~ Jet",
        "Octopus Companion ~ Poison",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Tentacle",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("10"),
      Type={
        Name="Racial",
      },
      Variables={
        "Escape Artist",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "TentacleAttacks",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Octopus",
  },
  Templates={
    "Aquatic",
    "Young Creature",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=20,
    Swim=30,
  },
  MonsterClass={
    Class="Animal",
    Level=2,
  },
})
DefineRace({
  Name="Familiar (Scorpion (Greensting))",
  SortKey="z_Companion",
  ChallengeRating="1/4",
  DisplayName="Familiar [NAME]",
  HandCount=3,
  LegCount=8,
  RaceType="Vermin",
  Reach=0,
  Size="T",
  SourceLong="Ultimate Magic",
  SourcePage="p.118",
  SourceShort="UM",
  StartingKitCount=1,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Weapon Finesse",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Greensting Scorpion Companion ~ Poison",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Sting",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Climb",
        "Perception",
        "Stealth",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Scorpion (Greensting)",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Vermin",
    Level=1,
  },
})
DefineRace({
  Name="Familiar (Spider (Scarlet))",
  SortKey="z_Companion",
  ChallengeRating="1/4",
  DisplayName="Familiar [NAME]",
  LegCount=8,
  RaceType="Vermin",
  Reach=0,
  Size="T",
  SourcePage="p.258",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Giant Spider Companion ~ Poison",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Giant Spider Type",
      },
    },
    {
      Category="SITUATION",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth=In webs",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
        "Stealth",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Climb",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  StartingKitChoices={
    "Familiar ~ Spider (Scarlet)",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Visions={
    {
      Kind={
        "Tremorsense (60')",
      },
    },
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=30,
    Climb=30,
  },
  MonsterClass={
    Class="Vermin",
    Level=1,
  },
})
DefineRace({
  Name="Familiar (Parrot)",
  SortKey="z_Companion",
  ChallengeRating="1/6",
  DisplayName="Familiar [NAME]",
  LegCount=2,
  RaceType="Animal",
  Reach=0,
  Size="T",
  SourcePage="p.133",
  StartingFeats=1,
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("DEX-STR"),
      Variables={
        "Climb",
        "Swim",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Claw",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "Familiar",
    "Augmented Magical Beast",
    "FamiliarBase",
  },
  StartingKitChoices={
    "Animal ~ Raven",
  },
  Types={
    "Companion",
    "Familiar",
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=10,
    Fly=40,
  },
  MonsterClass={
    Class="Animal",
    Level=1,
  },
})
DefineRace({
  Name="Parrot",
  ChallengeRating="1/6",
  LegCount=2,
  RaceType="Animal",
  Reach=0,
  Size="T",
  SourcePage="p.133",
  StartingFeats=1,
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("DEX-STR"),
      Variables={
        "Climb",
        "Swim",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Claw",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  StartingKitChoices={
    "Animal ~ Raven",
  },
  Types={
    "Animal",
  },
  Facts={
    BaseSize="T",
  },
  Movement={
    Walk=10,
    Fly=40,
  },
  MonsterClass={
    Class="Animal",
    Level=1,
  },
})
