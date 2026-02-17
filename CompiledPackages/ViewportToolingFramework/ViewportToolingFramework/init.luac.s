MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ViewportToolingFrameworkRemoveTypes"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K8 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"SharedFlags", "Toolbar", "Types"}]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["SharedFlags"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K12 ["Components"]
  GETTABLEKS R4 R5 K10 ["Toolbar"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["Toolbar"]
  JUMPIFNOT R0 [+2]
  LOADNIL R3
  JUMP [+1]
  MOVE R3 R1
  SETTABLEKS R3 R2 K8 ["Types"]
  RETURN R2 1
