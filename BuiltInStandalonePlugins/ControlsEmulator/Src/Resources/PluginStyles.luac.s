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
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["StyleConstants"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K8 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleSheet"]
  NEWTABLE R5 0 2
  MOVE R6 R2
  LOADK R7 K14 [".CX-Invisible"]
  DUPTABLE R8 K16 [{"BackgroundTransparency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K17 [".Component-Main"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K18 ["::UIListLayout"]
  DUPTABLE R13 K24 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R14 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K19 ["SortOrder"]
  GETIMPORT R14 K29 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K20 ["HorizontalAlignment"]
  GETIMPORT R14 K31 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K21 ["VerticalAlignment"]
  GETIMPORT R14 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K22 ["FillDirection"]
  LOADB R14 0
  SETTABLEKS R14 R13 K23 ["Wraps"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K34 [">> .Component-WidgetHeader"]
  DUPTABLE R14 K41 [{"TextSize", "Font", "TextColor3", "CornerRadius", "BackgroundColor3", "Size"}]
  GETTABLEKS R15 R3 K42 ["normalFontSize"]
  SETTABLEKS R15 R14 K35 ["TextSize"]
  GETIMPORT R15 K44 [Enum.Font.Gotham]
  SETTABLEKS R15 R14 K36 ["Font"]
  LOADK R15 K45 ["$TextPrimary"]
  SETTABLEKS R15 R14 K37 ["TextColor3"]
  GETIMPORT R15 K48 [UDim.new]
  LOADN R16 0
  LOADN R17 3
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["CornerRadius"]
  LOADK R15 K49 ["$BackgroundPaper"]
  SETTABLEKS R15 R14 K39 ["BackgroundColor3"]
  GETIMPORT R15 K51 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R19 R3 K52 ["deviceHeaderHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K40 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K53 [">> .Component-DeviceBlueprint"]
  DUPTABLE R15 K41 [{"TextSize", "Font", "TextColor3", "CornerRadius", "BackgroundColor3", "Size"}]
  GETTABLEKS R16 R3 K42 ["normalFontSize"]
  SETTABLEKS R16 R15 K35 ["TextSize"]
  GETIMPORT R16 K44 [Enum.Font.Gotham]
  SETTABLEKS R16 R15 K36 ["Font"]
  LOADK R16 K45 ["$TextPrimary"]
  SETTABLEKS R16 R15 K37 ["TextColor3"]
  GETIMPORT R16 K48 [UDim.new]
  LOADN R17 0
  LOADN R18 3
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["CornerRadius"]
  LOADK R16 K49 ["$BackgroundPaper"]
  SETTABLEKS R16 R15 K39 ["BackgroundColor3"]
  GETIMPORT R16 K51 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 144
  CALL R16 4 1
  SETTABLEKS R16 R15 K40 ["Size"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R5 R6 -1 [1]
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADK R8 K2 ["ControlsEmulator"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
