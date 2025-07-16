MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"VisualizationModesHighlightColor", "VisualizationModesDivider", "VisualizationModesHighlightTextColor", "VisualizationModesDimActionHover"}]
  LOADK R3 K13 ["$Blue70"]
  SETTABLEKS R3 R2 K8 ["VisualizationModesHighlightColor"]
  LOADK R3 K14 ["$Gray50"]
  SETTABLEKS R3 R2 K9 ["VisualizationModesDivider"]
  LOADK R3 K15 ["$White"]
  SETTABLEKS R3 R2 K10 ["VisualizationModesHighlightTextColor"]
  LOADK R3 K16 ["$Gray30"]
  SETTABLEKS R3 R2 K11 ["VisualizationModesDimActionHover"]
  GETTABLEKS R4 R1 K17 ["Styling"]
  GETTABLEKS R3 R4 K18 ["createStyleSheet"]
  LOADK R4 K19 ["VisualizationModesLightTheme"]
  NEWTABLE R5 0 0
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1
