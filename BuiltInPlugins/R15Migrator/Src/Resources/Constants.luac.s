MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"PublishTags", "NonePublishTags", "AttributePrefix", "PreviewSpeeds", "StatusTableData", "CrossPluginCommunicationName", "CrossPluginCommunicationInstructions"}]
  DUPTABLE R1 K12 [{"AdapterTagging", "CharacterTagging", "AnimationTagging", "ScriptTagging"}]
  DUPTABLE R2 K15 [{"Name", "Mask"}]
  LOADK R3 K16 ["R15MigratorHasAdapter"]
  SETTABLEKS R3 R2 K13 ["Name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K14 ["Mask"]
  SETTABLEKS R2 R1 K8 ["AdapterTagging"]
  DUPTABLE R2 K15 [{"Name", "Mask"}]
  LOADK R3 K17 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R3 R2 K13 ["Name"]
  LOADN R3 2
  SETTABLEKS R3 R2 K14 ["Mask"]
  SETTABLEKS R2 R1 K9 ["CharacterTagging"]
  DUPTABLE R2 K15 [{"Name", "Mask"}]
  LOADK R3 K18 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R3 R2 K13 ["Name"]
  LOADN R3 4
  SETTABLEKS R3 R2 K14 ["Mask"]
  SETTABLEKS R2 R1 K10 ["AnimationTagging"]
  DUPTABLE R2 K15 [{"Name", "Mask"}]
  LOADK R3 K19 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R3 R2 K13 ["Name"]
  LOADN R3 8
  SETTABLEKS R3 R2 K14 ["Mask"]
  SETTABLEKS R2 R1 K11 ["ScriptTagging"]
  SETTABLEKS R1 R0 K0 ["PublishTags"]
  DUPTABLE R1 K21 [{"CharactersConvertedToR15Tag"}]
  LOADK R2 K22 ["R15MigratorCharactersConvertedToR15"]
  SETTABLEKS R2 R1 K20 ["CharactersConvertedToR15Tag"]
  SETTABLEKS R1 R0 K1 ["NonePublishTags"]
  LOADK R1 K23 ["RBX_R15Migrator_"]
  SETTABLEKS R1 R0 K2 ["AttributePrefix"]
  NEWTABLE R1 0 8
  LOADK R2 K24 [0.25]
  LOADK R3 K25 [0.5]
  LOADK R4 K26 [0.75]
  LOADN R5 1
  LOADK R6 K27 [1.25]
  LOADK R7 K28 [1.5]
  LOADK R8 K29 [1.75]
  LOADN R9 2
  SETLIST R1 R2 8 [1]
  SETTABLEKS R1 R0 K3 ["PreviewSpeeds"]
  DUPTABLE R1 K32 [{"TEXT_COLUMN_INDEX", "STATUS_COLUMN_INDEX"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K30 ["TEXT_COLUMN_INDEX"]
  LOADN R2 2
  SETTABLEKS R2 R1 K31 ["STATUS_COLUMN_INDEX"]
  SETTABLEKS R1 R0 K4 ["StatusTableData"]
  LOADK R1 K33 ["R15Migrator"]
  SETTABLEKS R1 R0 K5 ["CrossPluginCommunicationName"]
  DUPTABLE R1 K36 [{"Open", "Published"}]
  LOADK R2 K34 ["Open"]
  SETTABLEKS R2 R1 K34 ["Open"]
  LOADK R2 K35 ["Published"]
  SETTABLEKS R2 R1 K35 ["Published"]
  SETTABLEKS R1 R0 K6 ["CrossPluginCommunicationInstructions"]
  DUPTABLE R1 K40 [{"TempId", "OriginalId", "Name", "Adapted"}]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K41 ["R15MigratorTempId"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K37 ["TempId"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K38 ["OriginalId"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K38 ["OriginalId"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K42 ["name"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K13 ["Name"]
  GETTABLEKS R3 R0 K2 ["AttributePrefix"]
  LOADK R4 K39 ["Adapted"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K39 ["Adapted"]
  SETTABLEKS R1 R0 K43 ["Attributes"]
  RETURN R0 1
