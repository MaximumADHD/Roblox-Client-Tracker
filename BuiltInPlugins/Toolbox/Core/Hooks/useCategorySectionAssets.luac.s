MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K6 ["useCategorySectionAssets.impl"]
  CALL R1 1 1
  MOVE R2 R1
  DUPTABLE R3 K9 [{"fetchCategoryAssets"}]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K11 ["Requests"]
  GETTABLEKS R5 R6 K8 ["fetchCategoryAssets"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["fetchCategoryAssets"]
  CALL R2 1 -1
  RETURN R2 -1
