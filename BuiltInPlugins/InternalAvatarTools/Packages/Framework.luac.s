MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K3 ["_Index"]
  GETTABLEKS R2 R0 K4 ["DeveloperFramework"]
  GETTABLEKS R1 R2 K4 ["DeveloperFramework"]
  GETTABLEKS R2 R1 K5 ["ClassName"]
  JUMPIFNOTEQKS R2 K6 ["ModuleScript"] [+6]
  GETIMPORT R2 K8 [require]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R1 1
