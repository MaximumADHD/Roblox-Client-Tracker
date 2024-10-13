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
  LOADK R4 K10 [".Widget-Button"]
  DUPTABLE R5 K16 [{"BorderSizePixel", "BorderMode", "Size", "AnchorPoint", "TextScaled"}]
  LOADN R6 3
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  GETIMPORT R6 K19 [Enum.BorderMode.Outline]
  SETTABLEKS R6 R5 K12 ["BorderMode"]
  GETIMPORT R6 K22 [UDim2.new]
  LOADN R7 0
  LOADN R8 36
  LOADN R9 0
  LOADN R10 36
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETIMPORT R6 K24 [Vector2.new]
  LOADK R7 K25 [0.5]
  LOADK R8 K25 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["AnchorPoint"]
  LOADB R6 1
  SETTABLEKS R6 R5 K15 ["TextScaled"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K26 ["::UICorner"]
  DUPTABLE R9 K28 [{"CornerRadius"}]
  GETIMPORT R10 K30 [UDim.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["CornerRadius"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
