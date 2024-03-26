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
  MOVE R4 R2
  LOADK R5 K12 [".Component-EnableTeamCreate"]
  DUPTABLE R6 K15 [{"Size", "BackgroundColor3"}]
  GETIMPORT R7 K18 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K13 ["Size"]
  LOADK R7 K19 ["$SecondaryMuted"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K20 ["::UIListLayout"]
  DUPTABLE R10 K22 [{"Padding"}]
  GETIMPORT R11 K24 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Padding"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K25 ["> #Text"]
  DUPTABLE R11 K29 [{"TextXAlignment", "TextColor3", "TextSize"}]
  GETIMPORT R12 K32 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K26 ["TextXAlignment"]
  LOADK R12 K33 ["$TextPrimary"]
  SETTABLEKS R12 R11 K27 ["TextColor3"]
  GETTABLEKS R12 R3 K34 ["detailFontSize"]
  SETTABLEKS R12 R11 K28 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K35 ["> #Button"]
  DUPTABLE R12 K36 [{"BackgroundColor3", "TextColor3", "TextSize"}]
  LOADK R13 K37 ["$PrimaryMain"]
  SETTABLEKS R13 R12 K14 ["BackgroundColor3"]
  LOADK R13 K38 ["$TextContrast"]
  SETTABLEKS R13 R12 K27 ["TextColor3"]
  GETTABLEKS R13 R3 K39 ["buttonFontSize"]
  SETTABLEKS R13 R12 K28 ["TextSize"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K40 ["::UIPadding"]
  DUPTABLE R16 K45 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["PaddingTop"]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["PaddingBottom"]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["PaddingLeft"]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["PaddingRight"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K46 [":hover"]
  DUPTABLE R17 K47 [{"BackgroundColor3"}]
  LOADK R18 K48 ["$PrimaryHoverBackground"]
  SETTABLEKS R18 R17 K14 ["BackgroundColor3"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
