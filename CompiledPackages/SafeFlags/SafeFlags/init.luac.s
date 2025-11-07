MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"createGetFFlag", "createGetFInt", "createGetFString"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["createGetFFlag"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["createGetFFlag"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["createGetFInt"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["createGetFInt"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["createGetFString"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["createGetFString"]
  RETURN R0 1
