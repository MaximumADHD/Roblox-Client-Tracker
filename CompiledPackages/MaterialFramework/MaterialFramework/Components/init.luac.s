MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"MaterialGrid", "MaterialPreview", "ViewTypeSelector"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["MaterialGrid"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["MaterialGrid"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["MaterialPreview"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["MaterialPreview"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["ViewTypeSelector"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ViewTypeSelector"]
  RETURN R0 1
