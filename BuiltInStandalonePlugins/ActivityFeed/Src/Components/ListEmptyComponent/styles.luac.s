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
  GETIMPORT R9 K18 [game]
  LOADK R11 K19 ["ActivityHistoryCompactUI"]
  NAMECALL R9 R9 K20 ["GetFastFlag"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K21 [".Component-ListEmptyComponent"]
  DUPTABLE R12 K24 [{"Size", "BackgroundColor3"}]
  GETIMPORT R13 K27 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K22 ["Size"]
  JUMPIFNOT R9 [+2]
  LOADK R13 K28 ["$FoundationColorsBackgroundPaper"]
  JUMP [+1]
  LOADK R13 K29 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K23 ["BackgroundColor3"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K30 ["::UIPadding"]
  DUPTABLE R16 K32 [{"PaddingTopPercentage"}]
  GETIMPORT R17 K34 [UDim.new]
  MOVE R18 R8
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["PaddingTopPercentage"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K35 ["::UIListLayout"]
  DUPTABLE R17 K37 [{"Padding"}]
  GETIMPORT R18 K34 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["Padding"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K38 ["> #NoFilterResultsIcon"]
  DUPTABLE R18 K41 [{"Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R19 K27 [UDim2.new]
  LOADN R20 0
  MOVE R21 R7
  LOADN R22 0
  MOVE R23 R7
  CALL R19 4 1
  SETTABLEKS R19 R18 K22 ["Size"]
  LOADK R19 K42 ["$nofilterresults"]
  SETTABLEKS R19 R18 K39 ["Image"]
  LOADN R19 1
  SETTABLEKS R19 R18 K40 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K43 ["> #Description"]
  DUPTABLE R19 K48 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R20 K51 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K44 ["TextXAlignment"]
  JUMPIFNOT R9 [+2]
  LOADK R20 K52 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R20 K53 ["$TextPrimary"]
  SETTABLEKS R20 R19 K45 ["TextColor3"]
  GETTABLEKS R20 R3 K54 ["normalFontSize"]
  SETTABLEKS R20 R19 K46 ["TextSize"]
  GETTABLEKS R20 R3 K55 ["boldedFont"]
  SETTABLEKS R20 R19 K47 ["Font"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K56 ["> #Edit"]
  DUPTABLE R20 K58 [{"AutoButtonColor", "TextColor3", "BackgroundColor3"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K57 ["AutoButtonColor"]
  JUMPIFNOT R9 [+2]
  LOADK R21 K52 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R21 K53 ["$TextPrimary"]
  SETTABLEKS R21 R20 K45 ["TextColor3"]
  LOADK R21 K59 ["$SecondaryMain"]
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K60 ["::UICorner"]
  DUPTABLE R24 K62 [{"CornerRadius"}]
  GETIMPORT R25 K34 [UDim.new]
  LOADN R26 0
  MOVE R27 R6
  CALL R25 2 1
  SETTABLEKS R25 R24 K61 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K30 ["::UIPadding"]
  DUPTABLE R25 K67 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R26 K34 [UDim.new]
  LOADN R27 0
  MOVE R28 R4
  CALL R26 2 1
  SETTABLEKS R26 R25 K63 ["PaddingRight"]
  GETIMPORT R26 K34 [UDim.new]
  LOADN R27 0
  MOVE R28 R4
  CALL R26 2 1
  SETTABLEKS R26 R25 K64 ["PaddingLeft"]
  GETIMPORT R26 K34 [UDim.new]
  LOADN R27 0
  MOVE R28 R5
  CALL R26 2 1
  SETTABLEKS R26 R25 K65 ["PaddingTop"]
  GETIMPORT R26 K34 [UDim.new]
  LOADN R27 0
  MOVE R28 R5
  CALL R26 2 1
  SETTABLEKS R26 R25 K66 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K68 [":hover"]
  DUPTABLE R26 K69 [{"BackgroundColor3"}]
  LOADK R27 K70 ["$SecondaryHoverBackground"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  RETURN R10 -1
