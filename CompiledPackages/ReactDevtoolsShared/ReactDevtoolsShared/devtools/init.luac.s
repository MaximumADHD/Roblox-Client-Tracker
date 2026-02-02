MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"utils", "store", "cache", "devtools"}]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K0 ["utils"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["utils"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K1 ["store"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["store"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K2 ["cache"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["cache"]
  DUPTABLE R1 K10 [{"Components"}]
  DUPTABLE R2 K12 [{"views"}]
  DUPTABLE R3 K14 [{"types"}]
  GETIMPORT R4 K6 [require]
  GETIMPORT R8 K8 [script]
  GETTABLEKS R7 R8 K11 ["views"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K13 ["types"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["types"]
  SETTABLEKS R3 R2 K11 ["views"]
  SETTABLEKS R2 R1 K9 ["Components"]
  SETTABLEKS R1 R0 K3 ["devtools"]
  RETURN R0 1
