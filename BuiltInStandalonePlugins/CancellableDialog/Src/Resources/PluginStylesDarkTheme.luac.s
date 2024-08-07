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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Bin"]
  GETTABLEKS R5 R6 K11 ["Common"]
  GETTABLEKS R4 R5 K12 ["defineLuaFlags"]
  CALL R3 1 1
  DUPTABLE R4 K20 [{"CancelButtonBackgroundColor", "CancelButtonHoverBackgroundColor", "LoadingSpinnerImage", "CancelButtonBorderSizePixel", "CancelButtonBorderColor3", "CancelButtonBorderTransparency", "SemanticColorBackdrop"}]
  GETTABLEKS R6 R3 K21 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  GETIMPORT R5 K24 [Color3.fromHex]
  LOADK R6 K25 ["#3C3C3C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["CancelButtonBackgroundColor"]
  GETTABLEKS R6 R3 K21 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  GETIMPORT R5 K24 [Color3.fromHex]
  LOADK R6 K26 ["#424242"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["CancelButtonHoverBackgroundColor"]
  LOADK R5 K27 ["rbxasset://studio_svg_textures/Lua/Dialog/Dark/Standard/Spinner.png"]
  SETTABLEKS R5 R4 K15 ["LoadingSpinnerImage"]
  LOADN R5 0
  SETTABLEKS R5 R4 K16 ["CancelButtonBorderSizePixel"]
  LOADK R5 K28 ["$Gray50"]
  SETTABLEKS R5 R4 K17 ["CancelButtonBorderColor3"]
  LOADN R5 1
  SETTABLEKS R5 R4 K18 ["CancelButtonBorderTransparency"]
  GETTABLEKS R6 R3 K21 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  GETIMPORT R5 K24 [Color3.fromHex]
  LOADK R6 K29 ["#EEEEEE"]
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K19 ["SemanticColorBackdrop"]
  MOVE R5 R2
  LOADK R6 K30 ["CancellableDialogDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
