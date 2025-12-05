MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"Components", "DraggerTools", "Handles", "Implementation", "Utility"}]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K0 ["Components"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Components"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K1 ["DraggerTools"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["DraggerTools"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K2 ["Handles"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Handles"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K3 ["Implementation"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Implementation"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K4 ["Utility"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Utility"]
  RETURN R0 1
