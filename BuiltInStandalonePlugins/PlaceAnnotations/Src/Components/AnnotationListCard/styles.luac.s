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
  LOADK R4 K9 [".Component-AnnotationListCard"]
  DUPTABLE R5 K15 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R6 K18 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETIMPORT R6 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K11 ["AutomaticSize"]
  LOADK R6 K22 ["$SemanticColorDivider"]
  SETTABLEKS R6 R5 K12 ["BackgroundColor3"]
  LOADK R6 K23 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K14 ["BorderSizePixel"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K24 ["::UIPadding"]
  DUPTABLE R9 K26 [{"PaddingBottom"}]
  GETIMPORT R10 K29 [UDim.new]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K30 ["> #BackgroundFrame"]
  DUPTABLE R10 K31 [{"Size", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R11 K18 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["Size"]
  GETIMPORT R11 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K11 ["AutomaticSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K14 ["BorderSizePixel"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K32 ["> TextButton"]
  DUPTABLE R14 K33 [{"BackgroundTransparency", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K13 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K14 ["BorderSizePixel"]
  GETIMPORT R15 K18 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Size"]
  GETIMPORT R15 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K11 ["AutomaticSize"]
  NEWTABLE R15 0 5
  MOVE R16 R2
  LOADK R17 K24 ["::UIPadding"]
  DUPTABLE R18 K37 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 11
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["PaddingTop"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 15
  CALL R19 2 1
  SETTABLEKS R19 R18 K35 ["PaddingLeft"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 15
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["PaddingBottom"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["PaddingRight"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K38 [":press"]
  DUPTABLE R19 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K40 ["$Shift200Color"]
  SETTABLEKS R20 R19 K12 ["BackgroundColor3"]
  LOADK R20 K41 ["$Shift200Transparency"]
  SETTABLEKS R20 R19 K13 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K42 [".Hovered"]
  DUPTABLE R20 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K40 ["$Shift200Color"]
  SETTABLEKS R21 R20 K12 ["BackgroundColor3"]
  LOADK R21 K43 ["$Shift100Transparency"]
  SETTABLEKS R21 R20 K13 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K44 [".Selected"]
  DUPTABLE R21 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K40 ["$Shift200Color"]
  SETTABLEKS R22 R21 K12 ["BackgroundColor3"]
  LOADK R22 K41 ["$Shift200Transparency"]
  SETTABLEKS R22 R21 K13 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K45 ["> TextLabel"]
  DUPTABLE R22 K50 [{"TextColor3", "TextSize", "Font", "TextXAlignment", "Size", "AutomaticSize", "BackgroundTransparency"}]
  LOADK R23 K51 ["$SecondaryContrast"]
  SETTABLEKS R23 R22 K46 ["TextColor3"]
  LOADN R23 16
  SETTABLEKS R23 R22 K47 ["TextSize"]
  LOADK R23 K52 ["$Font"]
  SETTABLEKS R23 R22 K48 ["Font"]
  GETIMPORT R23 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K49 ["TextXAlignment"]
  GETIMPORT R23 K18 [UDim2.fromScale]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K10 ["Size"]
  GETIMPORT R23 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K11 ["AutomaticSize"]
  LOADN R23 1
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K24 ["::UIPadding"]
  DUPTABLE R26 K55 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R27 K29 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K34 ["PaddingTop"]
  GETIMPORT R27 K29 [UDim.new]
  LOADN R28 0
  LOADN R29 41
  CALL R27 2 1
  SETTABLEKS R27 R26 K35 ["PaddingLeft"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
