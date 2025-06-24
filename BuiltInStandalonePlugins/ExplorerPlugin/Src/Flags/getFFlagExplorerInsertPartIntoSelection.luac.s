MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["createGetSafeFFlag"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K9 ["ExplorerInsertPartIntoSelection"]
  CALL R2 1 -1
  RETURN R2 -1
