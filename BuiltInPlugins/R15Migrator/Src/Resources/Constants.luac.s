MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPTABLE R1 K4 [{"AdapterTagging", "CharacterTagging", "AnimationTagging", "ScriptTagging"}]
  DUPTABLE R2 K7 [{"Name", "Mask"}]
  LOADK R3 K8 ["R15MigratorHasAdapter"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["Mask"]
  SETTABLEKS R2 R1 K0 ["AdapterTagging"]
  DUPTABLE R2 K7 [{"Name", "Mask"}]
  LOADK R3 K9 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADN R3 2
  SETTABLEKS R3 R2 K6 ["Mask"]
  SETTABLEKS R2 R1 K1 ["CharacterTagging"]
  DUPTABLE R2 K7 [{"Name", "Mask"}]
  LOADK R3 K10 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADN R3 4
  SETTABLEKS R3 R2 K6 ["Mask"]
  SETTABLEKS R2 R1 K2 ["AnimationTagging"]
  DUPTABLE R2 K7 [{"Name", "Mask"}]
  LOADK R3 K11 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADN R3 8
  SETTABLEKS R3 R2 K6 ["Mask"]
  SETTABLEKS R2 R1 K3 ["ScriptTagging"]
  SETTABLEKS R1 R0 K12 ["PublishTags"]
  DUPTABLE R2 K14 [{"CharactersConvertedToR15Tag"}]
  LOADK R3 K15 ["R15MigratorCharactersConvertedToR15"]
  SETTABLEKS R3 R2 K13 ["CharactersConvertedToR15Tag"]
  SETTABLEKS R2 R0 K16 ["NonePublishTags"]
  DUPTABLE R3 K19 [{"TempId", "OriginalId"}]
  LOADK R4 K20 ["R15MigratorTempId"]
  SETTABLEKS R4 R3 K17 ["TempId"]
  LOADK R4 K18 ["OriginalId"]
  SETTABLEKS R4 R3 K18 ["OriginalId"]
  SETTABLEKS R3 R0 K21 ["Attributes"]
  DUPTABLE R4 K24 [{"TEXT_COLUMN_INDEX", "STATUS_COLUMN_INDEX"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["TEXT_COLUMN_INDEX"]
  LOADN R5 2
  SETTABLEKS R5 R4 K23 ["STATUS_COLUMN_INDEX"]
  SETTABLEKS R4 R0 K25 ["StatusTableData"]
  LOADK R5 K26 ["R15Migrator"]
  SETTABLEKS R5 R0 K27 ["CrossPluginCommunicationName"]
  DUPTABLE R5 K30 [{"Open", "Published"}]
  LOADK R6 K28 ["Open"]
  SETTABLEKS R6 R5 K28 ["Open"]
  LOADK R6 K29 ["Published"]
  SETTABLEKS R6 R5 K29 ["Published"]
  SETTABLEKS R5 R0 K31 ["CrossPluginCommunicationInstructions"]
  RETURN R0 1
