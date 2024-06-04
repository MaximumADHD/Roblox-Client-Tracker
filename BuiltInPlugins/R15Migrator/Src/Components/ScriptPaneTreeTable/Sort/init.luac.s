MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"booleanSort", "scriptLinkSort", "optionalNumSort"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["booleanSort"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["booleanSort"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["scriptLinkSort"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["scriptLinkSort"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["optionalNumSort"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["optionalNumSort"]
  RETURN R0 1
