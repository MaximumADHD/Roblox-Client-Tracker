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
  DUPTABLE R6 K17 [{"TextColor3", "BackgroundColor3", "BorderSizePixel", "Size"}]
  LOADK R7 K18 ["$TextPrimary"]
  SETTABLEKS R7 R6 K13 ["TextColor3"]
  LOADK R7 K19 ["$ForegroundContrast"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K15 ["BorderSizePixel"]
  GETIMPORT R7 K22 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R2 K23 ["deviceHeaderHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K16 ["Size"]
  NEWTABLE R7 0 5
  MOVE R8 R3
  LOADK R9 K24 ["::UIPadding"]
  DUPTABLE R10 K27 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["PaddingLeft"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["PaddingRight"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K30 ["::UISizeConstraint"]
  DUPTABLE R11 K32 [{"MinSize"}]
  GETIMPORT R12 K34 [Vector2.new]
  LOADN R13 4
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["MinSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K35 [">> .LeftContents"]
  DUPTABLE R12 K39 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "TextSize"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K15 ["BorderSizePixel"]
  GETIMPORT R13 K22 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  GETIMPORT R13 K42 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K36 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K37 ["BackgroundTransparency"]
  GETTABLEKS R13 R2 K43 ["headerFontSize"]
  SETTABLEKS R13 R12 K38 ["TextSize"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K44 ["::UIListLayout"]
  DUPTABLE R16 K50 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R17 K52 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K45 ["SortOrder"]
  GETIMPORT R17 K54 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K46 ["HorizontalAlignment"]
  GETIMPORT R17 K56 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K47 ["VerticalAlignment"]
  GETIMPORT R17 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K48 ["FillDirection"]
  LOADB R17 0
  SETTABLEKS R17 R16 K49 ["Wraps"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K59 [">> .RightContents"]
  DUPTABLE R13 K61 [{"Position", "BorderSizePixel", "Size", "BackgroundTransparency", "TextSize"}]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K60 ["Position"]
  LOADN R14 0
  SETTABLEKS R14 R13 K15 ["BorderSizePixel"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K37 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K43 ["headerFontSize"]
  SETTABLEKS R14 R13 K38 ["TextSize"]
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K44 ["::UIListLayout"]
  DUPTABLE R17 K50 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R18 K52 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K45 ["SortOrder"]
  GETIMPORT R18 K63 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R18 R17 K46 ["HorizontalAlignment"]
  GETIMPORT R18 K56 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K47 ["VerticalAlignment"]
  GETIMPORT R18 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K48 ["FillDirection"]
  LOADB R18 0
  SETTABLEKS R18 R17 K49 ["Wraps"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K64 [">> .ToolbarButton"]
  DUPTABLE R14 K65 [{"BackgroundTransparency", "Size", "BorderSizePixel", "TextColor3", "TextSize", "AutomaticSize", "Wraps"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K37 ["BackgroundTransparency"]
  GETIMPORT R15 K22 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R19 R2 K23 ["deviceHeaderHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K16 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K15 ["BorderSizePixel"]
  LOADK R15 K66 ["$TextLink"]
  SETTABLEKS R15 R14 K13 ["TextColor3"]
  GETTABLEKS R15 R2 K43 ["headerFontSize"]
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETIMPORT R15 K42 [Enum.AutomaticSize.X]
  SETTABLEKS R15 R14 K36 ["AutomaticSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K49 ["Wraps"]
  NEWTABLE R15 0 2
  MOVE R16 R3
  LOADK R17 K24 ["::UIPadding"]
  DUPTABLE R18 K27 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["PaddingLeft"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["PaddingRight"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K67 [":hover"]
  DUPTABLE R19 K68 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K69 ["$TextLinkHover"]
  SETTABLEKS R20 R19 K13 ["TextColor3"]
  LOADK R20 K70 ["$ActionHover"]
  SETTABLEKS R20 R19 K14 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K37 ["BackgroundTransparency"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
