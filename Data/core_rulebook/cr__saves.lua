-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr__saves.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineSave({
  Name="Fortitude",
  SortKey="1",
  Bonus={
    Category="SAVE",
    Variables={
      "Fortitude",
    },
    Formula=Formula("CON"),
  },
})
DefineSave({
  Name="Reflex",
  SortKey="2",
  Bonus={
    Category="SAVE",
    Variables={
      "Reflex",
    },
    Formula=Formula("DEX"),
  },
})
DefineSave({
  Name="Will",
  SortKey="3",
  Bonus={
    Category="SAVE",
    Variables={
      "Will",
    },
    Formula=Formula("WIS"),
  },
})