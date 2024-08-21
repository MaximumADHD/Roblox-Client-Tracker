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
  NEWTABLE R7 0 4
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
  LOADK R10 K30 [">> .LeftContents"]
  DUPTABLE R11 K34 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "TextSize"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K15 ["BorderSizePixel"]
  GETIMPORT R12 K22 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K16 ["Size"]
  GETIMPORT R12 K37 [Enum.AutomaticSize.X]
  SETTABLEKS R12 R11 K31 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K32 ["BackgroundTransparency"]
  GETTABLEKS R12 R2 K38 ["headerFontSize"]
  SETTABLEKS R12 R11 K33 ["TextSize"]
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K39 ["::UIListLayout"]
  DUPTABLE R15 K45 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R16 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K40 ["SortOrder"]
  GETIMPORT R16 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K41 ["HorizontalAlignment"]
  GETIMPORT R16 K51 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K42 ["VerticalAlignment"]
  GETIMPORT R16 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K43 ["FillDirection"]
  LOADB R16 0
  SETTABLEKS R16 R15 K44 ["Wraps"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K54 [">> .RightContents"]
  DUPTABLE R12 K56 [{"Position", "BorderSizePixel", "Size", "BackgroundTransparency", "TextSize"}]
  GETIMPORT R13 K22 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K55 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K15 ["BorderSizePixel"]
  GETIMPORT R13 K22 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K32 ["BackgroundTransparency"]
  GETTABLEKS R13 R2 K38 ["headerFontSize"]
  SETTABLEKS R13 R12 K33 ["TextSize"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K39 ["::UIListLayout"]
  DUPTABLE R16 K45 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
  GETIMPORT R17 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K40 ["SortOrder"]
  GETIMPORT R17 K58 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K41 ["HorizontalAlignment"]
  GETIMPORT R17 K51 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K42 ["VerticalAlignment"]
  GETIMPORT R17 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K43 ["FillDirection"]
  LOADB R17 0
  SETTABLEKS R17 R16 K44 ["Wraps"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K59 [">> .ToolbarButton"]
  DUPTABLE R13 K60 [{"BackgroundTransparency", "Size", "BorderSizePixel", "TextColor3", "TextSize", "AutomaticSize", "Wraps"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K32 ["BackgroundTransparency"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R2 K23 ["deviceHeaderHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Size"]
  LOADN R14 0
  SETTABLEKS R14 R13 K15 ["BorderSizePixel"]
  LOADK R14 K61 ["$TextLink"]
  SETTABLEKS R14 R13 K13 ["TextColor3"]
  GETTABLEKS R14 R2 K38 ["headerFontSize"]
  SETTABLEKS R14 R13 K33 ["TextSize"]
  GETIMPORT R14 K37 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K31 ["AutomaticSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K44 ["Wraps"]
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K24 ["::UIPadding"]
  DUPTABLE R17 K27 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R18 K29 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K25 ["PaddingLeft"]
  GETIMPORT R18 K29 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K26 ["PaddingRight"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K62 [":hover"]
  DUPTABLE R18 K63 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K64 ["$TextLinkHover"]
  SETTABLEKS R19 R18 K13 ["TextColor3"]
  LOADK R19 K65 ["$ActionHover"]
  SETTABLEKS R19 R18 K14 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K32 ["BackgroundTransparency"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
