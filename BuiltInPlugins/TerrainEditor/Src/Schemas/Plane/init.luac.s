MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagTerrainEditorGetNextSelectablesFix"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["join"]
  MOVE R6 R3
  DUPTABLE R7 K20 [{"dispatchWorldClick", "getMouseTarget", "getNextSelectables", "Selection", "SelectionInfo", "TransformHandlesImplementation"}]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K14 ["dispatchWorldClick"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K14 ["dispatchWorldClick"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K15 ["getMouseTarget"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K15 ["getMouseTarget"]
  MOVE R9 R4
  CALL R9 0 1
  JUMPIFNOT R9 [+8]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K16 ["getNextSelectables"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K16 ["getNextSelectables"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K17 ["Selection"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K17 ["Selection"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K18 ["SelectionInfo"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["SelectionInfo"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K19 ["TransformHandlesImplementation"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["TransformHandlesImplementation"]
  CALL R5 2 -1
  RETURN R5 -1
