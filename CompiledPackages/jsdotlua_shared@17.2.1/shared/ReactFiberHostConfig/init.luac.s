MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"WithNoHydration", "WithNoPersistence", "WithNoTestSelectors"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R2 K7 [script]
  LOADK R4 K0 ["WithNoHydration"]
  NAMECALL R2 R2 K8 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K0 ["WithNoHydration"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R2 K7 [script]
  LOADK R4 K1 ["WithNoPersistence"]
  NAMECALL R2 R2 K8 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K1 ["WithNoPersistence"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R2 K7 [script]
  LOADK R4 K2 ["WithNoTestSelectors"]
  NAMECALL R2 R2 K8 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K2 ["WithNoTestSelectors"]
  RETURN R0 1
