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
  GETTABLEKS R5 R0 K7 ["Bin"]
  GETTABLEKS R4 R5 K8 ["Common"]
  GETTABLEKS R3 R4 K9 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-AnnotationListCard"]
  DUPTABLE R6 K18 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R7 K21 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  GETIMPORT R7 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K14 ["AutomaticSize"]
  LOADK R7 K25 ["$SemanticColorDivider"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADK R7 K26 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R7 R6 K16 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["BorderSizePixel"]
  NEWTABLE R7 0 2
  MOVE R8 R3
  LOADK R9 K27 ["::UIPadding"]
  DUPTABLE R10 K29 [{"PaddingBottom"}]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K33 ["> #BackgroundFrame"]
  DUPTABLE R11 K34 [{"Size", "AutomaticSize", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R12 K21 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Size"]
  GETIMPORT R12 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K14 ["AutomaticSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K17 ["BorderSizePixel"]
  GETTABLEKS R13 R2 K35 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K36 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R12 K37 ["$ForegroundMain"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K38 ["> TextButton"]
  DUPTABLE R15 K39 [{"BackgroundTransparency", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K17 ["BorderSizePixel"]
  GETIMPORT R16 K21 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K13 ["Size"]
  GETIMPORT R16 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K14 ["AutomaticSize"]
  NEWTABLE R16 0 5
  MOVE R17 R3
  LOADK R18 K27 ["::UIPadding"]
  DUPTABLE R19 K43 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R20 K32 [UDim.new]
  LOADN R21 0
  LOADN R22 11
  CALL R20 2 1
  SETTABLEKS R20 R19 K40 ["PaddingTop"]
  GETIMPORT R20 K32 [UDim.new]
  LOADN R21 0
  LOADN R22 15
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["PaddingLeft"]
  GETIMPORT R20 K32 [UDim.new]
  LOADN R21 0
  LOADN R22 15
  CALL R20 2 1
  SETTABLEKS R20 R19 K28 ["PaddingBottom"]
  GETIMPORT R20 K32 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["PaddingRight"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K44 [":press"]
  DUPTABLE R20 K45 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K46 ["$Shift200Color"]
  SETTABLEKS R21 R20 K15 ["BackgroundColor3"]
  LOADK R21 K47 ["$Shift200Transparency"]
  SETTABLEKS R21 R20 K16 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K48 [".Hovered"]
  DUPTABLE R21 K45 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K46 ["$Shift200Color"]
  SETTABLEKS R22 R21 K15 ["BackgroundColor3"]
  LOADK R22 K49 ["$Shift100Transparency"]
  SETTABLEKS R22 R21 K16 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K50 [".Selected"]
  DUPTABLE R22 K45 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K46 ["$Shift200Color"]
  SETTABLEKS R23 R22 K15 ["BackgroundColor3"]
  LOADK R23 K47 ["$Shift200Transparency"]
  SETTABLEKS R23 R22 K16 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K51 ["> TextLabel"]
  DUPTABLE R23 K56 [{"TextColor3", "TextSize", "Font", "TextXAlignment", "Size", "AutomaticSize", "BackgroundTransparency"}]
  LOADK R24 K57 ["$SecondaryContrast"]
  SETTABLEKS R24 R23 K52 ["TextColor3"]
  LOADN R24 16
  SETTABLEKS R24 R23 K53 ["TextSize"]
  LOADK R24 K58 ["$Font"]
  SETTABLEKS R24 R23 K54 ["Font"]
  GETIMPORT R24 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K55 ["TextXAlignment"]
  GETIMPORT R24 K21 [UDim2.fromScale]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K13 ["Size"]
  GETIMPORT R24 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K14 ["AutomaticSize"]
  LOADN R24 1
  SETTABLEKS R24 R23 K16 ["BackgroundTransparency"]
  NEWTABLE R24 0 1
  MOVE R25 R3
  LOADK R26 K27 ["::UIPadding"]
  DUPTABLE R27 K61 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R28 K32 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["PaddingTop"]
  GETIMPORT R28 K32 [UDim.new]
  LOADN R29 0
  LOADN R30 41
  CALL R28 2 1
  SETTABLEKS R28 R27 K41 ["PaddingLeft"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
