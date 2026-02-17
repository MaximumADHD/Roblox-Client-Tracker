MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"WithNoHydration", "WithNoPersistence", "WithNoTestSelectors"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["WithNoHydration"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["WithNoHydration"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["WithNoPersistence"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["WithNoPersistence"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["WithNoTestSelectors"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["WithNoTestSelectors"]
  RETURN R0 1
