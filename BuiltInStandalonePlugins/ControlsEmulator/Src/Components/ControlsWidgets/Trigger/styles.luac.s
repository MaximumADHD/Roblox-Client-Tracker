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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"]
  MULK R6 R4 K15 [2]
  DIVRK R5 R14 K6 ["Packages"]
  MOVE R6 R2
  LOADK R7 K16 [".TriggerFrame"]
  DUPTABLE R8 K20 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R9 K23 [Vector2.new]
  LOADK R10 K24 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K19 ["BorderSizePixel"]
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K25 [":: UIListLayout"]
  DUPTABLE R12 K31 [{"Padding", "FillDirection", "VerticalFlex", "SortOrder", "ItemLineAlignment"}]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  MOVE R15 R5
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["Padding"]
  GETIMPORT R13 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K27 ["FillDirection"]
  GETIMPORT R13 K39 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R13 R12 K28 ["VerticalFlex"]
  GETIMPORT R13 K41 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K29 ["SortOrder"]
  GETIMPORT R13 K43 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R13 R12 K30 ["ItemLineAlignment"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K44 ["> .HorizontalBar"]
  DUPTABLE R13 K46 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K18 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K19 ["BorderSizePixel"]
  LOADK R14 K47 ["$ControlInactiveColor"]
  SETTABLEKS R14 R13 K45 ["BackgroundColor3"]
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K48 [".Hover"]
  DUPTABLE R17 K49 [{"BackgroundColor3"}]
  LOADK R18 K50 ["$ControlHoverColor"]
  SETTABLEKS R18 R17 K45 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K51 [".SelectedBlue"]
  DUPTABLE R18 K49 [{"BackgroundColor3"}]
  LOADK R19 K52 ["$ControlActiveColor"]
  SETTABLEKS R19 R18 K45 ["BackgroundColor3"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1
