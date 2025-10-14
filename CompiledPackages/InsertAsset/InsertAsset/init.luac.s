MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Context", "Utility"}]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K0 ["Context"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Context"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K1 ["Utility"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Utility"]
  RETURN R0 1
