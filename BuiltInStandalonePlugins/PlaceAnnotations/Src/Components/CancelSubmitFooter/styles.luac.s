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
  LOADK R4 K9 [".Component-CancelSubmitFooter"]
  DUPTABLE R5 K11 [{"BackgroundTransparency"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K12 [">> TextButton"]
  DUPTABLE R9 K19 [{"Size", "AutomaticSize", "BorderSizePixel", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R10 K22 [UDim2.fromOffset]
  LOADN R11 72
  LOADN R12 36
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Size"]
  GETIMPORT R10 K25 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K14 ["AutomaticSize"]
  LOADN R10 0
  SETTABLEKS R10 R9 K15 ["BorderSizePixel"]
  LOADK R10 K26 ["$TextPrimary"]
  SETTABLEKS R10 R9 K16 ["TextColor3"]
  LOADK R10 K27 ["$FontSizeM"]
  SETTABLEKS R10 R9 K17 ["TextSize"]
  LOADK R10 K28 ["$FontBold"]
  SETTABLEKS R10 R9 K18 ["Font"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K29 ["::UICorner"]
  DUPTABLE R13 K31 [{"CornerRadius"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K30 ["CornerRadius"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K32 ["> #SubmitButton"]
  DUPTABLE R10 K34 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  LOADK R11 K35 ["$PrimaryMain"]
  SETTABLEKS R11 R10 K33 ["BackgroundColor3"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K36 [".Disabled"]
  DUPTABLE R14 K37 [{"BackgroundColor3", "TextColor3"}]
  LOADK R15 K38 ["$SecondaryMain"]
  SETTABLEKS R15 R14 K33 ["BackgroundColor3"]
  LOADK R15 K39 ["$TextSecondary"]
  SETTABLEKS R15 R14 K16 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 [":hover"]
  DUPTABLE R15 K41 [{"BackgroundColor3"}]
  LOADK R16 K42 ["$PrimaryHoverBackground"]
  SETTABLEKS R16 R15 K33 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K43 [":pressed"]
  DUPTABLE R16 K41 [{"BackgroundColor3"}]
  LOADK R17 K44 ["$ActionSelected"]
  SETTABLEKS R17 R16 K33 ["BackgroundColor3"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K45 ["> #CancelButton"]
  DUPTABLE R11 K11 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K40 [":hover"]
  DUPTABLE R15 K34 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K10 ["BackgroundTransparency"]
  LOADK R16 K46 ["$SecondaryHoverBackground"]
  SETTABLEKS R16 R15 K33 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K43 [":pressed"]
  DUPTABLE R16 K34 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K10 ["BackgroundTransparency"]
  LOADK R17 K38 ["$SecondaryMain"]
  SETTABLEKS R17 R16 K33 ["BackgroundColor3"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
