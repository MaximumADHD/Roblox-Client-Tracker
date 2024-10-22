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
  DUPTABLE R6 K18 [{"Font", "TextColor3", "BackgroundColor3", "BorderSizePixel", "Size"}]
  GETTABLEKS R7 R2 K19 ["defaultFont"]
  SETTABLEKS R7 R6 K13 ["Font"]
  LOADK R7 K20 ["$TextPrimary"]
  SETTABLEKS R7 R6 K14 ["TextColor3"]
  LOADK R7 K21 ["$HeaderBackgroundColor"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  GETIMPORT R7 K24 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R2 K25 ["deviceHeaderHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K17 ["Size"]
  NEWTABLE R7 0 4
  MOVE R8 R3
  LOADK R9 K26 ["::UIPadding"]
  DUPTABLE R10 K29 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["PaddingLeft"]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingRight"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K32 ["::UISizeConstraint"]
  DUPTABLE R11 K34 [{"MinSize"}]
  GETIMPORT R12 K36 [Vector2.new]
  LOADN R13 4
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["MinSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K37 [">> .LeftContents"]
  DUPTABLE R12 K41 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "TextSize"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  GETIMPORT R13 K24 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Size"]
  GETIMPORT R13 K44 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K38 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  GETTABLEKS R13 R2 K45 ["headerFontSize"]
  SETTABLEKS R13 R12 K40 ["TextSize"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K46 ["::UIListLayout"]
  DUPTABLE R16 K52 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R17 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K47 ["SortOrder"]
  GETIMPORT R17 K56 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K48 ["HorizontalAlignment"]
  GETIMPORT R17 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K49 ["VerticalAlignment"]
  GETIMPORT R17 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K50 ["FillDirection"]
  LOADB R17 0
  SETTABLEKS R17 R16 K51 ["Wraps"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K61 [">> .RightContents"]
  DUPTABLE R13 K63 [{"Position", "BorderSizePixel", "Size", "BackgroundTransparency", "TextSize"}]
  GETIMPORT R14 K24 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K62 ["Position"]
  LOADN R14 0
  SETTABLEKS R14 R13 K16 ["BorderSizePixel"]
  GETIMPORT R14 K24 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K45 ["headerFontSize"]
  SETTABLEKS R14 R13 K40 ["TextSize"]
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K46 ["::UIListLayout"]
  DUPTABLE R17 K65 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding", "Wraps"}]
  GETIMPORT R18 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K47 ["SortOrder"]
  GETIMPORT R18 K67 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R18 R17 K48 ["HorizontalAlignment"]
  GETIMPORT R18 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K49 ["VerticalAlignment"]
  GETIMPORT R18 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K50 ["FillDirection"]
  GETIMPORT R18 K31 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K64 ["Padding"]
  LOADB R18 0
  SETTABLEKS R18 R17 K51 ["Wraps"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
