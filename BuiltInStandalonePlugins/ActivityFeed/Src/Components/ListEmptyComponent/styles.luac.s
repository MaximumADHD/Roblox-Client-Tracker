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
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["buttonPaddingHorizontal"]
  GETTABLEKS R5 R3 K13 ["buttonPaddingVertical"]
  GETTABLEKS R6 R3 K14 ["buttonCornerRadius"]
  GETTABLEKS R7 R3 K15 ["largeIconSize"]
  GETTABLEKS R8 R3 K16 ["emptyScreenContentPaddingPercentage"]
  MOVE R9 R2
  LOADK R10 K17 [".Component-ListEmptyComponent"]
  DUPTABLE R11 K20 [{"Size", "BackgroundColor3"}]
  GETIMPORT R12 K23 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K18 ["Size"]
  LOADK R12 K24 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K19 ["BackgroundColor3"]
  NEWTABLE R12 0 5
  MOVE R13 R2
  LOADK R14 K25 ["::UIPadding"]
  DUPTABLE R15 K27 [{"PaddingTopPercentage"}]
  GETIMPORT R16 K29 [UDim.new]
  MOVE R17 R8
  LOADN R18 2
  CALL R16 2 1
  SETTABLEKS R16 R15 K26 ["PaddingTopPercentage"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K30 ["::UIListLayout"]
  DUPTABLE R16 K32 [{"Padding"}]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K33 ["> #NoFilterResultsIcon"]
  DUPTABLE R17 K36 [{"Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R18 K23 [UDim2.new]
  LOADN R19 0
  MOVE R20 R7
  LOADN R21 0
  MOVE R22 R7
  CALL R18 4 1
  SETTABLEKS R18 R17 K18 ["Size"]
  LOADK R18 K37 ["$nofilterresults"]
  SETTABLEKS R18 R17 K34 ["Image"]
  LOADN R18 1
  SETTABLEKS R18 R17 K35 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K38 ["> #Description"]
  DUPTABLE R18 K43 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R19 K46 [Enum.TextXAlignment.Center]
  SETTABLEKS R19 R18 K39 ["TextXAlignment"]
  LOADK R19 K47 ["$TextPrimary"]
  SETTABLEKS R19 R18 K40 ["TextColor3"]
  GETTABLEKS R19 R3 K48 ["normalFontSize"]
  SETTABLEKS R19 R18 K41 ["TextSize"]
  GETTABLEKS R19 R3 K49 ["boldedFont"]
  SETTABLEKS R19 R18 K42 ["Font"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K50 ["> #Edit"]
  DUPTABLE R19 K52 [{"AutoButtonColor", "TextColor3", "BackgroundColor3"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K51 ["AutoButtonColor"]
  LOADK R20 K47 ["$TextPrimary"]
  SETTABLEKS R20 R19 K40 ["TextColor3"]
  LOADK R20 K53 ["$SecondaryMain"]
  SETTABLEKS R20 R19 K19 ["BackgroundColor3"]
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K54 ["::UICorner"]
  DUPTABLE R23 K56 [{"CornerRadius"}]
  GETIMPORT R24 K29 [UDim.new]
  LOADN R25 0
  MOVE R26 R6
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K25 ["::UIPadding"]
  DUPTABLE R24 K61 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K29 [UDim.new]
  LOADN R26 0
  MOVE R27 R4
  CALL R25 2 1
  SETTABLEKS R25 R24 K57 ["PaddingRight"]
  GETIMPORT R25 K29 [UDim.new]
  LOADN R26 0
  MOVE R27 R4
  CALL R25 2 1
  SETTABLEKS R25 R24 K58 ["PaddingLeft"]
  GETIMPORT R25 K29 [UDim.new]
  LOADN R26 0
  MOVE R27 R5
  CALL R25 2 1
  SETTABLEKS R25 R24 K59 ["PaddingTop"]
  GETIMPORT R25 K29 [UDim.new]
  LOADN R26 0
  MOVE R27 R5
  CALL R25 2 1
  SETTABLEKS R25 R24 K60 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K62 [":hover"]
  DUPTABLE R25 K63 [{"BackgroundColor3"}]
  LOADK R26 K64 ["$SecondaryHoverBackground"]
  SETTABLEKS R26 R25 K19 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  RETURN R9 -1
