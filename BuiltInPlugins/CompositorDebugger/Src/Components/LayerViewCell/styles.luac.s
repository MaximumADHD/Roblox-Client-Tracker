MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".LayerViewCell"]
  DUPTABLE R5 K14 [{"BorderSizePixel", "BorderColor3", "ClipsDescendants"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  LOADK R6 K15 ["$SecondaryHoverBackground"]
  SETTABLEKS R6 R5 K12 ["BorderColor3"]
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["ClipsDescendants"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K16 [".Section"]
  DUPTABLE R9 K19 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K15 ["$SecondaryHoverBackground"]
  SETTABLEKS R10 R9 K17 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K20 [">> .ActionIcon"]
  DUPTABLE R10 K22 [{"Size"}]
  GETIMPORT R11 K25 [UDim2.fromOffset]
  LOADN R12 12
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Size"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K29 [{"Indent", "CellSpacing", "ActionIconSize"}]
  LOADN R8 20
  SETTABLEKS R8 R7 K26 ["Indent"]
  LOADN R8 5
  SETTABLEKS R8 R7 K27 ["CellSpacing"]
  LOADN R8 12
  SETTABLEKS R8 R7 K28 ["ActionIconSize"]
  CALL R3 4 -1
  RETURN R3 -1
