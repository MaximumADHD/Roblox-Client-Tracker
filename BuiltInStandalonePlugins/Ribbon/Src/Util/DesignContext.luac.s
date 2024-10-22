MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R2 R3 K9 ["ContextItem"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagDevFrameworkRibbonHooks"]
  CALL R3 1 1
  CALL R3 0 1
  NOT R5 R3
  FASTCALL2K ASSERT R5 K13 [+4]
  LOADK R6 K13 ["Ribbon design context has been removed"]
  GETIMPORT R4 K15 [assert]
  CALL R4 2 0
  LOADK R6 K16 ["Design"]
  NAMECALL R4 R2 K17 ["createSimple"]
  CALL R4 2 -1
  RETURN R4 -1
