MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K8 ["DraggerSchemaTemplate"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K9 ["DraggerSchema"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["join"]
  MOVE R5 R3
  DUPTABLE R6 K15 [{"dispatchWorldClick", "getMouseTarget", "FreeformDragger", "SelectionInfo"}]
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K11 ["dispatchWorldClick"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["dispatchWorldClick"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["getMouseTarget"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K12 ["getMouseTarget"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K13 ["FreeformDragger"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K13 ["FreeformDragger"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K14 ["SelectionInfo"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K14 ["SelectionInfo"]
  CALL R4 2 -1
  RETURN R4 -1
