MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleConstants"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-WidgetHeader"]
  DUPTABLE R6 K19 [{"BackgroundColor3", "Font", "TextColor3", "CornerRadius", "BorderSizePixel", "Size"}]
  LOADK R7 K20 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  GETIMPORT R7 K23 [Enum.Font.Gotham]
  SETTABLEKS R7 R6 K14 ["Font"]
  LOADK R7 K24 ["$TextPrimary"]
  SETTABLEKS R7 R6 K15 ["TextColor3"]
  GETIMPORT R7 K27 [UDim.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["CornerRadius"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["BorderSizePixel"]
  GETIMPORT R7 K29 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R2 K30 ["deviceHeaderHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Size"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K31 ["::UIListLayout"]
  DUPTABLE R10 K38 [{"Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  LOADN R13 115
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Padding"]
  GETIMPORT R11 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K33 ["SortOrder"]
  GETIMPORT R11 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K34 ["HorizontalAlignment"]
  GETIMPORT R11 K43 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K35 ["VerticalAlignment"]
  GETIMPORT R11 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K36 ["FillDirection"]
  LOADB R11 0
  SETTABLEKS R11 R10 K37 ["Wraps"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K46 ["> .DeviceSelectorDropdown"]
  DUPTABLE R11 K49 [{"Size", "TextSize", "BorderSizePixel", "BorderColor3"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 250
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K18 ["Size"]
  GETTABLEKS R12 R2 K50 ["detailFontSize"]
  SETTABLEKS R12 R11 K47 ["TextSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K17 ["BorderSizePixel"]
  LOADK R12 K51 ["$ForegroundMain"]
  SETTABLEKS R12 R11 K48 ["BorderColor3"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K52 ["> .DeviceSelectorMappingsButton"]
  DUPTABLE R12 K54 [{"Size", "BorderSizePixel", "TextColor3", "BackgroundColor3", "TextSize", "BackgroundTransparency"}]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 200
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K18 ["Size"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["BorderSizePixel"]
  LOADK R13 K55 ["$TextLink"]
  SETTABLEKS R13 R12 K15 ["TextColor3"]
  LOADK R13 K20 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K13 ["BackgroundColor3"]
  GETTABLEKS R13 R2 K50 ["detailFontSize"]
  SETTABLEKS R13 R12 K47 ["TextSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K53 ["BackgroundTransparency"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K56 [":hover"]
  DUPTABLE R16 K57 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K58 ["$TextLinkHover"]
  SETTABLEKS R17 R16 K15 ["TextColor3"]
  LOADK R17 K20 ["$BackgroundPaper"]
  SETTABLEKS R17 R16 K13 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K53 ["BackgroundTransparency"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
