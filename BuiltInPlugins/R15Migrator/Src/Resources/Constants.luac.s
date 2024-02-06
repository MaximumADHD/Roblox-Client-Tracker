MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPTABLE R1 K4 [{"AdapterTag", "CharacterTag", "AnimationTag", "ScriptTag"}]
  LOADK R2 K5 ["R15MigratorHasAdapter"]
  SETTABLEKS R2 R1 K0 ["AdapterTag"]
  LOADK R2 K6 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R2 R1 K1 ["CharacterTag"]
  LOADK R2 K7 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R2 R1 K2 ["AnimationTag"]
  LOADK R2 K8 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R2 R1 K3 ["ScriptTag"]
  SETTABLEKS R1 R0 K9 ["Tags"]
  DUPTABLE R2 K11 [{"TempId"}]
  LOADK R3 K12 ["R15MigratorTempId"]
  SETTABLEKS R3 R2 K10 ["TempId"]
  SETTABLEKS R2 R0 K13 ["Attributes"]
  RETURN R0 1
