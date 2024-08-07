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
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 5
  MOVE R5 R2
  LOADK R6 K11 [".CX-Invisible"]
  DUPTABLE R7 K13 [{"BackgroundTransparency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K12 ["BackgroundTransparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K14 [".LayoutContainer"]
  DUPTABLE R8 K16 [{"Size"}]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K15 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Width-Scaling"]
  DUPTABLE R9 K23 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Size"]
  GETIMPORT R10 K26 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R10 R9 K22 ["SizeConstraint"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K27 [".Active "]
  DUPTABLE R10 K29 [{"BackgroundColor3"}]
  LOADK R11 K30 ["$Red60"]
  SETTABLEKS R11 R10 K28 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [".Component-ScrollableBlueprintContainer"]
  DUPTABLE R11 K34 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection"}]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  LOADK R12 K35 ["$BlueprintBackgroundColor"]
  SETTABLEKS R12 R11 K28 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K32 ["ScrollBarThickness"]
  GETIMPORT R12 K37 [Enum.ScrollingDirection.Y]
  SETTABLEKS R12 R11 K33 ["ScrollingDirection"]
  CALL R9 2 -1
  SETLIST R4 R5 -1 [1]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["ControlsEmulator"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
