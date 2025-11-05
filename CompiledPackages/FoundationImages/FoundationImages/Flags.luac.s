MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["FoundationImages"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R2 R0 K7 ["SafeFlags"]
  CALL R1 1 1
  DUPTABLE R2 K9 [{"FixBlurryImages"}]
  GETTABLEKS R3 R1 K10 ["createGetFFlag"]
  LOADK R4 K8 ["FixBlurryImages"]
  CALL R3 1 1
  CALL R3 0 1
  SETTABLEKS R3 R2 K8 ["FixBlurryImages"]
  RETURN R2 1
