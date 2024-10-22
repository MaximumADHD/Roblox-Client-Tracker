MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Widget-Thumbstick"]
  DUPTABLE R5 K14 [{"BackgroundColor3", "AnchorPoint", "BackgroundTransparency"}]
  LOADK R6 K15 ["$ControlActiveSecondaryColor"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  GETIMPORT R6 K18 [Vector2.new]
  LOADK R7 K19 [0.5]
  LOADK R8 K19 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["AnchorPoint"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K20 [".Active"]
  DUPTABLE R9 K21 [{"BackgroundTransparency"}]
  LOADK R10 K22 [0.7]
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K23 ["> #Stick"]
  DUPTABLE R10 K24 [{"AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R11 K18 [Vector2.new]
  LOADK R12 K19 [0.5]
  LOADK R13 K19 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["AnchorPoint"]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K25 ["> #Stick.Hovered"]
  DUPTABLE R11 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K27 ["$ControlActiveColor"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  LOADK R12 K28 [0.6]
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K29 ["> #Stick.Active"]
  DUPTABLE R12 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K27 ["$ControlActiveColor"]
  SETTABLEKS R13 R12 K11 ["BackgroundColor3"]
  LOADK R13 K30 [0.3]
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  CALL R10 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
