MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K11 [{"CheckboxHoveredImage"}]
  LOADK R4 K12 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_hover_light.png"]
  SETTABLEKS R4 R3 K10 ["CheckboxHoveredImage"]
  MOVE R4 R2
  LOADK R5 K13 ["ModerationDialogLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
