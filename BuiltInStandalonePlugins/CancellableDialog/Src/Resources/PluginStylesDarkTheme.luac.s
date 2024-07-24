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
  DUPTABLE R3 K16 [{"CancelButtonBackgroundColor", "CancelButtonHoverBackgroundColor", "LoadingSpinnerImage", "CancelButtonBorderSizePixel", "CancelButtonBorderColor3", "CancelButtonBorderTransparency"}]
  GETIMPORT R4 K19 [Color3.fromHex]
  LOADK R5 K20 ["#3C3C3C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["CancelButtonBackgroundColor"]
  GETIMPORT R4 K19 [Color3.fromHex]
  LOADK R5 K21 ["#424242"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["CancelButtonHoverBackgroundColor"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Lua/Dialog/Dark/Standard/Spinner.png"]
  SETTABLEKS R4 R3 K12 ["LoadingSpinnerImage"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["CancelButtonBorderSizePixel"]
  LOADK R4 K23 ["$Gray50"]
  SETTABLEKS R4 R3 K14 ["CancelButtonBorderColor3"]
  LOADN R4 1
  SETTABLEKS R4 R3 K15 ["CancelButtonBorderTransparency"]
  MOVE R4 R2
  LOADK R5 K24 ["CancellableDialogDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
