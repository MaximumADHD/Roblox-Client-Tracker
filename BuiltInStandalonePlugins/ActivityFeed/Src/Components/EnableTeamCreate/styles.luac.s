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
  MOVE R11 R2
  LOADK R12 K19 [".Component-EnableTeamCreate"]
  DUPTABLE R13 K22 [{"Size", "BackgroundColor3"}]
  GETIMPORT R14 K25 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K20 ["Size"]
  LOADK R14 K26 ["$BackgroundPaper"]
  SETTABLEKS R14 R13 K21 ["BackgroundColor3"]
  NEWTABLE R14 0 5
  MOVE R15 R2
  LOADK R16 K27 ["::UIPadding"]
  DUPTABLE R17 K29 [{"PaddingTop"}]
  GETIMPORT R18 K31 [UDim.new]
  MOVE R19 R10
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["PaddingTop"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K32 ["::UIListLayout"]
  DUPTABLE R18 K34 [{"Padding"}]
  GETIMPORT R19 K31 [UDim.new]
  LOADN R20 0
  MOVE R21 R4
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["Padding"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K35 ["> #UnsavedExperienceIcon"]
  DUPTABLE R19 K38 [{"Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 0
  MOVE R22 R7
  LOADN R23 0
  MOVE R24 R7
  CALL R20 4 1
  SETTABLEKS R20 R19 K20 ["Size"]
  LOADK R20 K39 ["$unsavedexperience"]
  SETTABLEKS R20 R19 K36 ["Image"]
  LOADN R20 1
  SETTABLEKS R20 R19 K37 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K40 ["> #Text"]
  DUPTABLE R20 K45 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R21 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R21 R20 K41 ["TextXAlignment"]
  LOADK R21 K49 ["$TextPrimary"]
  SETTABLEKS R21 R20 K42 ["TextColor3"]
  SETTABLEKS R8 R20 K43 ["TextSize"]
  SETTABLEKS R9 R20 K44 ["Font"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K50 ["> #Button"]
  DUPTABLE R21 K51 [{"BackgroundColor3", "TextColor3", "TextSize"}]
  LOADK R22 K52 ["$PrimaryMain"]
  SETTABLEKS R22 R21 K21 ["BackgroundColor3"]
  LOADK R22 K53 ["$TextContrast"]
  SETTABLEKS R22 R21 K42 ["TextColor3"]
  SETTABLEKS R8 R21 K43 ["TextSize"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K27 ["::UIPadding"]
  DUPTABLE R25 K57 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R26 K31 [UDim.new]
  LOADN R27 0
  MOVE R28 R5
  CALL R26 2 1
  SETTABLEKS R26 R25 K28 ["PaddingTop"]
  GETIMPORT R26 K31 [UDim.new]
  LOADN R27 0
  MOVE R28 R5
  CALL R26 2 1
  SETTABLEKS R26 R25 K54 ["PaddingBottom"]
  GETIMPORT R26 K31 [UDim.new]
  LOADN R27 0
  MOVE R28 R6
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["PaddingLeft"]
  GETIMPORT R26 K31 [UDim.new]
  LOADN R27 0
  MOVE R28 R6
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K58 [":hover"]
  DUPTABLE R26 K59 [{"BackgroundColor3"}]
  LOADK R27 K60 ["$PrimaryHoverBackground"]
  SETTABLEKS R27 R26 K21 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  RETURN R11 -1
