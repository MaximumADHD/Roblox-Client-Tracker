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
  LOADK R6 K15 ["$ForegroundMuted"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  GETIMPORT R6 K18 [Vector2.new]
  LOADK R7 K19 [0.5]
  LOADK R8 K19 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["AnchorPoint"]
  LOADK R6 K19 [0.5]
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K20 ["> .Widget-Thumbstick-Stick"]
  DUPTABLE R9 K21 [{"AnchorPoint"}]
  GETIMPORT R10 K18 [Vector2.new]
  LOADK R11 K19 [0.5]
  LOADK R12 K19 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["AnchorPoint"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
