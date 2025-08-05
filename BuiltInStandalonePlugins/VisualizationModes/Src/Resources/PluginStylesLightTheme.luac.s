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
  DUPTABLE R2 K16 [{"VisualizationModesHighlightColor", "VisualizationModesHighlightTextColor", "VisualizationModesDivider", "VisualizationModesDimActionHover", "VisualizationModesBadgeBackground", "VisualizationModesBadgeText", "VisualizationModesCameraSpeedUnlocked", "VisualizationModesCameraSpeedLocked"}]
  LOADK R3 K17 ["$Blue70"]
  SETTABLEKS R3 R2 K8 ["VisualizationModesHighlightColor"]
  LOADK R3 K18 ["$White"]
  SETTABLEKS R3 R2 K9 ["VisualizationModesHighlightTextColor"]
  LOADK R3 K19 ["$Gray50"]
  SETTABLEKS R3 R2 K10 ["VisualizationModesDivider"]
  LOADK R3 K20 ["$Gray30"]
  SETTABLEKS R3 R2 K11 ["VisualizationModesDimActionHover"]
  LOADK R3 K21 ["$Gray40"]
  SETTABLEKS R3 R2 K12 ["VisualizationModesBadgeBackground"]
  LOADK R3 K22 ["$Black"]
  SETTABLEKS R3 R2 K13 ["VisualizationModesBadgeText"]
  LOADK R3 K23 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Light/Standard/cameraSpeedLockOpen.png"]
  SETTABLEKS R3 R2 K14 ["VisualizationModesCameraSpeedUnlocked"]
  LOADK R3 K24 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Light/Standard/cameraSpeedLockClosed.png"]
  SETTABLEKS R3 R2 K15 ["VisualizationModesCameraSpeedLocked"]
  GETTABLEKS R4 R1 K25 ["Styling"]
  GETTABLEKS R3 R4 K26 ["createStyleSheet"]
  LOADK R4 K27 ["VisualizationModesLightTheme"]
  NEWTABLE R5 0 0
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1
