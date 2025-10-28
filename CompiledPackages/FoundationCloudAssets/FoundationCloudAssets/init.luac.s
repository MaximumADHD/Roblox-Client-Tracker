MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R2 R0 K4 ["preloadAsset"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R4 R0 K5 ["Generated"]
  GETTABLEKS R3 R4 K6 ["ConsolidatedAssets"]
  CALL R2 1 1
  DUPTABLE R3 K8 [{"Assets", "preloadAsset"}]
  SETTABLEKS R2 R3 K7 ["Assets"]
  SETTABLEKS R1 R3 K4 ["preloadAsset"]
  RETURN R3 1
