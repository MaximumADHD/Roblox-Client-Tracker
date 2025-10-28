MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["BaseMenu"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["BaseMenuItem"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["BaseMenuContext"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["BaseMenuGroup"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"Root", "Item", "Context", "Group"}]
  SETTABLEKS R0 R4 K8 ["Root"]
  SETTABLEKS R1 R4 K9 ["Item"]
  SETTABLEKS R2 R4 K10 ["Context"]
  SETTABLEKS R3 R4 K11 ["Group"]
  RETURN R4 1
