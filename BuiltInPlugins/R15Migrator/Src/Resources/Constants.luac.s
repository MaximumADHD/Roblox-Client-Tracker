MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPTABLE R1 K5 [{"AdapterTag", "CharacterTag", "AnimationTag", "ScriptTag", "AvatarTag"}]
  LOADK R2 K6 ["R15MigratorHasAdapter"]
  SETTABLEKS R2 R1 K0 ["AdapterTag"]
  LOADK R2 K7 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R2 R1 K1 ["CharacterTag"]
  LOADK R2 K8 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R2 R1 K2 ["AnimationTag"]
  LOADK R2 K9 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R2 R1 K3 ["ScriptTag"]
  LOADK R2 K10 ["R15MigratorAvatarType"]
  SETTABLEKS R2 R1 K4 ["AvatarTag"]
  SETTABLEKS R1 R0 K11 ["Tags"]
  DUPTABLE R2 K14 [{"TempId", "OriginalId"}]
  LOADK R3 K15 ["R15MigratorTempId"]
  SETTABLEKS R3 R2 K12 ["TempId"]
  LOADK R3 K13 ["OriginalId"]
  SETTABLEKS R3 R2 K13 ["OriginalId"]
  SETTABLEKS R2 R0 K16 ["Attributes"]
  DUPTABLE R3 K19 [{"TEXT_COLUMN_INDEX", "STATUS_COLUMN_INDEX"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K17 ["TEXT_COLUMN_INDEX"]
  LOADN R4 2
  SETTABLEKS R4 R3 K18 ["STATUS_COLUMN_INDEX"]
  SETTABLEKS R3 R0 K20 ["StatusTableData"]
  RETURN R0 1
