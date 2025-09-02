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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  GETTABLEKS R6 R3 K12 ["fflagCOLLAB9036DecreaseLineHeight"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K13 [".Component-AnnotationHeader"]
  JUMP [+1]
  LOADK R5 K14 [".Component-PopoverHeader"]
  DUPTABLE R6 K18 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K15 ["BackgroundTransparency"]
  GETIMPORT R7 K21 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["Size"]
  GETIMPORT R7 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K17 ["AutomaticSize"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K25 ["::UIPadding"]
  DUPTABLE R10 K28 [{"PaddingTop", "PaddingBottom"}]
  GETTABLEKS R12 R3 K12 ["fflagCOLLAB9036DecreaseLineHeight"]
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  JUMP [+5]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["PaddingTop"]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K32 ["::UIListLayout"]
  DUPTABLE R11 K37 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R12 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K33 ["FillDirection"]
  GETIMPORT R12 K41 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K34 ["HorizontalAlignment"]
  GETIMPORT R12 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K35 ["SortOrder"]
  GETIMPORT R12 K31 [UDim.new]
  LOADN R13 0
  LOADN R14 10
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["Padding"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K44 ["> #Navigation"]
  DUPTABLE R12 K18 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K15 ["BackgroundTransparency"]
  GETIMPORT R13 K21 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Size"]
  GETTABLEKS R14 R3 K12 ["fflagCOLLAB9036DecreaseLineHeight"]
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+2]
  GETIMPORT R13 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K17 ["AutomaticSize"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K45 ["> #ErrorBanner"]
  DUPTABLE R16 K48 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K50 [Vector2.new]
  LOADN R18 0
  LOADK R19 K51 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["AnchorPoint"]
  GETIMPORT R17 K21 [UDim2.fromScale]
  LOADN R18 0
  LOADK R19 K51 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K47 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K52 ["> #LeftAligned"]
  DUPTABLE R17 K53 [{"BackgroundTransparency", "AnchorPoint", "Position", "AutomaticSize"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  GETIMPORT R18 K50 [Vector2.new]
  LOADN R19 0
  LOADK R20 K51 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["AnchorPoint"]
  GETIMPORT R18 K21 [UDim2.fromScale]
  LOADN R19 0
  LOADK R20 K51 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K47 ["Position"]
  GETIMPORT R18 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K17 ["AutomaticSize"]
  NEWTABLE R18 0 4
  MOVE R19 R2
  LOADK R20 K32 ["::UIListLayout"]
  DUPTABLE R21 K57 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R22 K59 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K33 ["FillDirection"]
  GETIMPORT R22 K61 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K34 ["HorizontalAlignment"]
  GETIMPORT R22 K62 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K56 ["VerticalAlignment"]
  GETIMPORT R22 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K35 ["SortOrder"]
  GETIMPORT R22 K31 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K63 ["> ImageLabel"]
  DUPTABLE R22 K64 [{"BackgroundTransparency", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K15 ["BackgroundTransparency"]
  GETIMPORT R23 K66 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K16 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K67 ["> TextLabel"]
  DUPTABLE R23 K75 [{"TextColor3", "TextTransparency", "Font", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADK R24 K76 ["$TextPrimary"]
  SETTABLEKS R24 R23 K68 ["TextColor3"]
  LOADK R24 K77 [0.2]
  SETTABLEKS R24 R23 K69 ["TextTransparency"]
  LOADK R24 K78 ["$FontBold"]
  SETTABLEKS R24 R23 K70 ["Font"]
  LOADN R24 1
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  LOADN R24 16
  SETTABLEKS R24 R23 K71 ["TextSize"]
  GETIMPORT R24 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K72 ["TextXAlignment"]
  GETIMPORT R24 K81 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R24 R23 K73 ["TextTruncate"]
  LOADB R24 0
  SETTABLEKS R24 R23 K74 ["TextWrapped"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K82 [">> ImageButton"]
  DUPTABLE R24 K84 [{"AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R25 K50 [Vector2.new]
  LOADN R26 0
  LOADK R27 K51 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K46 ["AnchorPoint"]
  GETIMPORT R25 K21 [UDim2.fromScale]
  LOADN R26 16
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K16 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K15 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K83 ["BorderSizePixel"]
  CALL R22 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K85 ["> #RightAligned"]
  DUPTABLE R18 K86 [{"BackgroundTransparency", "AutomaticSize", "AnchorPoint", "Position"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K15 ["BackgroundTransparency"]
  GETIMPORT R19 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K17 ["AutomaticSize"]
  GETIMPORT R19 K50 [Vector2.new]
  LOADN R20 1
  LOADK R21 K51 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K46 ["AnchorPoint"]
  GETIMPORT R19 K21 [UDim2.fromScale]
  LOADN R20 1
  LOADK R21 K51 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K47 ["Position"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K32 ["::UIListLayout"]
  DUPTABLE R22 K57 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R23 K59 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K33 ["FillDirection"]
  GETIMPORT R23 K88 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R23 R22 K34 ["HorizontalAlignment"]
  GETIMPORT R23 K62 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K56 ["VerticalAlignment"]
  GETIMPORT R23 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K35 ["SortOrder"]
  GETIMPORT R23 K31 [UDim.new]
  LOADN R24 0
  LOADN R25 6
  CALL R23 2 1
  SETTABLEKS R23 R22 K36 ["Padding"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K89 ["> .CloseButton"]
  DUPTABLE R23 K91 [{"Text", "Size", "BackgroundTransparency"}]
  LOADK R24 K92 [""]
  SETTABLEKS R24 R23 K90 ["Text"]
  GETIMPORT R24 K66 [UDim2.fromOffset]
  LOADN R25 20
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K16 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  NEWTABLE R24 0 4
  MOVE R25 R2
  LOADK R26 K25 ["::UIPadding"]
  DUPTABLE R27 K95 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R28 K31 [UDim.new]
  LOADN R29 0
  LOADN R30 2
  CALL R28 2 1
  SETTABLEKS R28 R27 K26 ["PaddingTop"]
  GETIMPORT R28 K31 [UDim.new]
  LOADN R29 0
  LOADN R30 2
  CALL R28 2 1
  SETTABLEKS R28 R27 K93 ["PaddingLeft"]
  GETIMPORT R28 K31 [UDim.new]
  LOADN R29 0
  LOADN R30 2
  CALL R28 2 1
  SETTABLEKS R28 R27 K94 ["PaddingRight"]
  GETIMPORT R28 K31 [UDim.new]
  LOADN R29 0
  LOADN R30 2
  CALL R28 2 1
  SETTABLEKS R28 R27 K27 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K96 [":hover"]
  DUPTABLE R28 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K99 ["$Shift200Color"]
  SETTABLEKS R29 R28 K97 ["BackgroundColor3"]
  LOADK R29 K100 ["$Shift200Transparency"]
  SETTABLEKS R29 R28 K15 ["BackgroundTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K101 [":press"]
  DUPTABLE R29 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K99 ["$Shift200Color"]
  SETTABLEKS R30 R29 K97 ["BackgroundColor3"]
  LOADK R30 K102 ["$Shift100Transparency"]
  SETTABLEKS R30 R29 K15 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K103 ["::UICorner"]
  DUPTABLE R30 K105 [{"CornerRadius"}]
  GETIMPORT R31 K31 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K104 ["CornerRadius"]
  CALL R28 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
