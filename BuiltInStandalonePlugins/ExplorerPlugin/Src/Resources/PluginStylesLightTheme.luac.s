MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K13 [{"SemanticColorContentStandardInverse", "SemanticColorSurface300Inverse", "SemanticColorDivider"}]
  GETIMPORT R4 K16 [Color3.fromHex]
  LOADK R5 K17 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K16 [Color3.fromHex]
  LOADK R5 K18 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K16 [Color3.fromHex]
  LOADK R5 K19 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["SemanticColorDivider"]
  MOVE R4 R2
  LOADK R5 K20 ["ExplorerPluginLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
