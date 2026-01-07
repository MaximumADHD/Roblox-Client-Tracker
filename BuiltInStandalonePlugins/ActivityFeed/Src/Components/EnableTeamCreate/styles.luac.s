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
  GETTABLEKS R4 R3 K12 ["defaultPadding"]
  GETTABLEKS R5 R3 K13 ["buttonPaddingVertical"]
  GETTABLEKS R6 R3 K14 ["buttonPaddingHorizontal"]
  GETTABLEKS R7 R3 K15 ["largeIconSize"]
  GETTABLEKS R8 R3 K16 ["normalFontSize"]
  GETTABLEKS R9 R3 K17 ["boldedFont"]
  GETTABLEKS R10 R3 K18 ["emptyScreenContentPaddingPercentage"]
  GETIMPORT R11 K20 [game]
  LOADK R13 K21 ["ActivityHistoryCompactUI"]
  NAMECALL R11 R11 K22 ["GetFastFlag"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K23 [".Component-EnableTeamCreate"]
  DUPTABLE R14 K26 [{"Size", "BackgroundColor3"}]
  GETIMPORT R15 K29 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K24 ["Size"]
  JUMPIFNOT R11 [+2]
  LOADK R15 K30 ["$FoundationColorsBackgroundPaper"]
  JUMP [+1]
  LOADK R15 K31 ["$BackgroundPaper"]
  SETTABLEKS R15 R14 K25 ["BackgroundColor3"]
  NEWTABLE R15 0 5
  MOVE R16 R2
  LOADK R17 K32 ["::UIPadding"]
  DUPTABLE R18 K34 [{"PaddingTop"}]
  GETIMPORT R19 K36 [UDim.new]
  MOVE R20 R10
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["PaddingTop"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K37 ["::UIListLayout"]
  DUPTABLE R19 K39 [{"Padding"}]
  GETIMPORT R20 K36 [UDim.new]
  LOADN R21 0
  MOVE R22 R4
  CALL R20 2 1
  SETTABLEKS R20 R19 K38 ["Padding"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K40 ["> #UnsavedExperienceIcon"]
  DUPTABLE R20 K43 [{"Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R21 K29 [UDim2.new]
  LOADN R22 0
  MOVE R23 R7
  LOADN R24 0
  MOVE R25 R7
  CALL R21 4 1
  SETTABLEKS R21 R20 K24 ["Size"]
  LOADK R21 K44 ["$unsavedexperience"]
  SETTABLEKS R21 R20 K41 ["Image"]
  LOADN R21 1
  SETTABLEKS R21 R20 K42 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K45 ["> #Text"]
  DUPTABLE R21 K50 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R22 K53 [Enum.TextXAlignment.Center]
  SETTABLEKS R22 R21 K46 ["TextXAlignment"]
  JUMPIFNOT R11 [+2]
  LOADK R22 K54 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R22 K55 ["$TextPrimary"]
  SETTABLEKS R22 R21 K47 ["TextColor3"]
  SETTABLEKS R8 R21 K48 ["TextSize"]
  SETTABLEKS R9 R21 K49 ["Font"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K56 ["> #Button"]
  DUPTABLE R22 K57 [{"BackgroundColor3", "TextColor3", "TextSize"}]
  LOADK R23 K58 ["$PrimaryMain"]
  SETTABLEKS R23 R22 K25 ["BackgroundColor3"]
  LOADK R23 K59 ["$TextContrast"]
  SETTABLEKS R23 R22 K47 ["TextColor3"]
  SETTABLEKS R8 R22 K48 ["TextSize"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K32 ["::UIPadding"]
  DUPTABLE R26 K63 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R27 K36 [UDim.new]
  LOADN R28 0
  MOVE R29 R5
  CALL R27 2 1
  SETTABLEKS R27 R26 K33 ["PaddingTop"]
  GETIMPORT R27 K36 [UDim.new]
  LOADN R28 0
  MOVE R29 R5
  CALL R27 2 1
  SETTABLEKS R27 R26 K60 ["PaddingBottom"]
  GETIMPORT R27 K36 [UDim.new]
  LOADN R28 0
  MOVE R29 R6
  CALL R27 2 1
  SETTABLEKS R27 R26 K61 ["PaddingLeft"]
  GETIMPORT R27 K36 [UDim.new]
  LOADN R28 0
  MOVE R29 R6
  CALL R27 2 1
  SETTABLEKS R27 R26 K62 ["PaddingRight"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K64 [":hover"]
  DUPTABLE R27 K65 [{"BackgroundColor3"}]
  LOADK R28 K66 ["$PrimaryHoverBackground"]
  SETTABLEKS R28 R27 K25 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  RETURN R12 -1
