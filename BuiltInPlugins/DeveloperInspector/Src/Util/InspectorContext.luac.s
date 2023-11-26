MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["ContextServices"]
  GETTABLEKS R2 R3 K8 ["ContextItem"]
  LOADK R5 K9 ["Inspector"]
  NAMECALL R3 R2 K10 ["createSimple"]
  CALL R3 2 -1
  RETURN R3 -1
