MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K15 [{"LoadingSpinnerImage", "CancelButtonBorderSizePixel", "CancelButtonBorderColor3", "CancelButtonBorderTransparency", "SemanticColorBackdrop"}]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Lua/Dialog/Light/Standard/Spinner.png"]
  SETTABLEKS R4 R3 K10 ["LoadingSpinnerImage"]
  LOADN R4 1
  SETTABLEKS R4 R3 K11 ["CancelButtonBorderSizePixel"]
  LOADK R4 K17 ["$Gray50"]
  SETTABLEKS R4 R3 K12 ["CancelButtonBorderColor3"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["CancelButtonBorderTransparency"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K21 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["SemanticColorBackdrop"]
  MOVE R4 R2
  LOADK R5 K22 ["CancellableDialogLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
