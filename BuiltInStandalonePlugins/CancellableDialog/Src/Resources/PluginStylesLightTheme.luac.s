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
  DUPTABLE R3 K13 [{"CancelButtonBackgroundColor", "CancelButtonHoverBackgroundColor", "LoadingSpinnerImage"}]
  GETIMPORT R4 K16 [Color3.fromHex]
  LOADK R5 K17 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["CancelButtonBackgroundColor"]
  GETIMPORT R4 K16 [Color3.fromHex]
  LOADK R5 K18 ["#E4EEFE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["CancelButtonHoverBackgroundColor"]
  LOADK R4 K19 ["rbxasset://studio_svg_textures/Lua/Dialog/Light/Standard/Spinner.png"]
  SETTABLEKS R4 R3 K12 ["LoadingSpinnerImage"]
  MOVE R4 R2
  LOADK R5 K20 ["CancellableDialogLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
