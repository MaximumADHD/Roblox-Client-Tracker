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
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-AnnotationHeader"]
  DUPTABLE R5 K13 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  GETIMPORT R6 K16 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R6 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K12 ["AutomaticSize"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K20 ["::UIPadding"]
  DUPTABLE R9 K23 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K26 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingTop"]
  GETIMPORT R10 K26 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K27 ["::UIListLayout"]
  DUPTABLE R10 K32 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R11 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K28 ["FillDirection"]
  GETIMPORT R11 K36 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K29 ["HorizontalAlignment"]
  GETIMPORT R11 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K30 ["SortOrder"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Padding"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K39 ["> #Navigation"]
  DUPTABLE R11 K40 [{"BackgroundTransparency", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  GETIMPORT R12 K16 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Size"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K41 ["> #ErrorBanner"]
  DUPTABLE R15 K44 [{"AnchorPoint", "Position"}]
  GETIMPORT R16 K46 [Vector2.new]
  LOADN R17 0
  LOADK R18 K47 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["AnchorPoint"]
  GETIMPORT R16 K16 [UDim2.fromScale]
  LOADN R17 0
  LOADK R18 K47 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["Position"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K48 ["> #LeftAligned"]
  DUPTABLE R16 K49 [{"BackgroundTransparency", "AnchorPoint", "Position", "AutomaticSize"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K10 ["BackgroundTransparency"]
  GETIMPORT R17 K46 [Vector2.new]
  LOADN R18 0
  LOADK R19 K47 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["AnchorPoint"]
  GETIMPORT R17 K16 [UDim2.fromScale]
  LOADN R18 0
  LOADK R19 K47 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["Position"]
  GETIMPORT R17 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K12 ["AutomaticSize"]
  NEWTABLE R17 0 4
  MOVE R18 R2
  LOADK R19 K27 ["::UIListLayout"]
  DUPTABLE R20 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R21 K55 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K28 ["FillDirection"]
  GETIMPORT R21 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K29 ["HorizontalAlignment"]
  GETIMPORT R21 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K52 ["VerticalAlignment"]
  GETIMPORT R21 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K30 ["SortOrder"]
  GETIMPORT R21 K26 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["Padding"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K59 ["> ImageLabel"]
  DUPTABLE R21 K40 [{"BackgroundTransparency", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K10 ["BackgroundTransparency"]
  GETIMPORT R22 K61 [UDim2.fromOffset]
  LOADN R23 16
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K11 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K62 ["> TextLabel"]
  DUPTABLE R22 K70 [{"TextColor3", "TextTransparency", "Font", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADK R23 K71 ["$TextPrimary"]
  SETTABLEKS R23 R22 K63 ["TextColor3"]
  LOADK R23 K72 [0.2]
  SETTABLEKS R23 R22 K64 ["TextTransparency"]
  LOADK R23 K73 ["$FontBold"]
  SETTABLEKS R23 R22 K65 ["Font"]
  LOADN R23 1
  SETTABLEKS R23 R22 K10 ["BackgroundTransparency"]
  LOADN R23 16
  SETTABLEKS R23 R22 K66 ["TextSize"]
  GETIMPORT R23 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K67 ["TextXAlignment"]
  GETIMPORT R23 K76 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K68 ["TextTruncate"]
  LOADB R23 0
  SETTABLEKS R23 R22 K69 ["TextWrapped"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K77 [">> ImageButton"]
  DUPTABLE R23 K79 [{"AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R24 K46 [Vector2.new]
  LOADN R25 0
  LOADK R26 K47 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K42 ["AnchorPoint"]
  GETIMPORT R24 K16 [UDim2.fromScale]
  LOADN R25 16
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K11 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K10 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K78 ["BorderSizePixel"]
  CALL R21 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K80 ["> #RightAligned"]
  DUPTABLE R17 K81 [{"BackgroundTransparency", "AutomaticSize", "AnchorPoint", "Position"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  GETIMPORT R18 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K12 ["AutomaticSize"]
  GETIMPORT R18 K46 [Vector2.new]
  LOADN R19 1
  LOADK R20 K47 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["AnchorPoint"]
  GETIMPORT R18 K16 [UDim2.fromScale]
  LOADN R19 1
  LOADK R20 K47 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["Position"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K27 ["::UIListLayout"]
  DUPTABLE R21 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R22 K55 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K28 ["FillDirection"]
  GETIMPORT R22 K83 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R22 R21 K29 ["HorizontalAlignment"]
  GETIMPORT R22 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K52 ["VerticalAlignment"]
  GETIMPORT R22 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K30 ["SortOrder"]
  GETIMPORT R22 K26 [UDim.new]
  LOADN R23 0
  LOADN R24 6
  CALL R22 2 1
  SETTABLEKS R22 R21 K31 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K84 ["> .CloseButton"]
  DUPTABLE R22 K86 [{"Text", "Size", "BackgroundTransparency"}]
  LOADK R23 K87 [""]
  SETTABLEKS R23 R22 K85 ["Text"]
  GETIMPORT R23 K61 [UDim2.fromOffset]
  LOADN R24 20
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K11 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K10 ["BackgroundTransparency"]
  NEWTABLE R23 0 4
  MOVE R24 R2
  LOADK R25 K20 ["::UIPadding"]
  DUPTABLE R26 K90 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R27 K26 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K21 ["PaddingTop"]
  GETIMPORT R27 K26 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K88 ["PaddingLeft"]
  GETIMPORT R27 K26 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K89 ["PaddingRight"]
  GETIMPORT R27 K26 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K22 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K91 [":hover"]
  DUPTABLE R27 K93 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K94 ["$Shift200Color"]
  SETTABLEKS R28 R27 K92 ["BackgroundColor3"]
  LOADK R28 K95 ["$Shift200Transparency"]
  SETTABLEKS R28 R27 K10 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K96 [":press"]
  DUPTABLE R28 K93 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K94 ["$Shift200Color"]
  SETTABLEKS R29 R28 K92 ["BackgroundColor3"]
  LOADK R29 K97 ["$Shift100Transparency"]
  SETTABLEKS R29 R28 K10 ["BackgroundTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K98 ["::UICorner"]
  DUPTABLE R29 K100 [{"CornerRadius"}]
  GETIMPORT R30 K26 [UDim.new]
  LOADN R31 0
  LOADN R32 4
  CALL R30 2 1
  SETTABLEKS R30 R29 K99 ["CornerRadius"]
  CALL R27 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
